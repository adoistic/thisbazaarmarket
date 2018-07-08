var me = {};
me.avatar = "me.png";

var you = {};
you.avatar = "you.png";

var item = {};
var res; 
var book;

function formatAMPM(date) {
    var hours = date.getHours();
    var minutes = date.getMinutes();
    var ampm = hours >= 12 ? 'PM' : 'AM';
    hours = hours % 12;
    hours = hours ? hours : 12; // the hour '0' should be '12'
    minutes = minutes < 10 ? '0'+minutes : minutes;
    var strTime = hours + ':' + minutes + ' ' + ampm;
    return strTime;
}            

function showImg(){
	
	//var deferred = new $.Deferred();
			
			
    
			
	
	
	var xmlhttp = new XMLHttpRequest();
        
		xmlhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
					res = xmlhttp.responseText;
					return res;
					//alert("RES "+res);
					// setTimeout(function () {
						// This line is what resolves the deferred object
						// and it triggers the .done to execute
						// deferred.resolve(res);
					// }, 2000) // AFTER 2 SECONDS IT WILL RETURN
					// return deferred.promise();
            }
        
		};
    xmlhttp.open("GET", "getItem.php?q="+book, true);
    xmlhttp.send();
	
	
	
}


//-- No use time. It is a javaScript effect.
function insertChat(who, text, time){
    if (time === undefined){
        time = 0;
    }
    var control = "";
    var date = formatAMPM(new Date());
    
    if (who == "me"){
        control = '<li style="width:100%">' +
                        '<div class="msj macro">' +
                        '<div class="avatar"><img class="img-circle" style="width:100%;" src="'+ me.avatar +'" /></div>' +
                            '<div class="text text-l">' +
                                '<p>'+ text +'</p>' +
                                '<p><small>'+date+'</small></p>' +
                            '</div>' +
                        '</div>' +
                    '</li>';                    
    }else{
        control = '<li style="width:100%;">' +
                        '<div class="msj-rta macro">' +
                            '<div class="text text-r">' +
                                '<p>'+text+ '</p>' +
                                '<p><small>'+date+'</small></p>' +
                            '</div>' +
                        '<div class="avatar" style="padding:0px 0px 0px 10px !important"><img class="img-circle" style="width:100%;" src="'+you.avatar+'" /></div>' +                                
                  '</li>';
    }
    setTimeout(
        function(){                        
            $("ul").append(control).scrollTop($("ul").prop('scrollHeight'));
        }, time);
    
}

function resetChat(){
    $("ul").empty();
}

$(".mytext").on("keydown", function(e){
    if (e.which == 13){
        var text = $(this).val();
        if (text !== ""){
            insertChat("me", text);              
            $(this).val('');
        }
    }
});

$('body > div > div > div:nth-child(2) > span').click(function(){
    $(".mytext").trigger({type: 'keydown', which: 13, keyCode: 13});
})

function getIntro()
   {
   send2dialogflow('Who are you?');    
   }
   
function submitMessage(text)
   {
	console.log("got text: " + text)   ;
    insertChat("me", text);
    //sendMessage(text);
    send2dialogflow(text);
    $('#mytext').val('');
	}


function send2dialogflow(text) {
	//var text = $("#input").val();
	var accessToken = "6cd87823c6444fa28ecb8a391221d29c";
	var baseUrl = "https://api.api.ai/v1/";	
	
	$.ajax({
		type: "POST",
		url: baseUrl + "query?v=20150910",
		contentType: "application/json; charset=utf-8",
		dataType: "json",
		headers: {
			"Authorization": "Bearer " + accessToken
		},
		data: JSON.stringify({ query: text, lang: "en", sessionId: "somerandomthing" }),
		success: function(data) {
			setResponse(JSON.stringify(data, undefined, 2));
		},
		error: function() {
			setResponse("Internal Server Error");
		}
	});
	//setWaitResponse("Loading...");
}
function setResponse(resp) {
	//$("#response").text(val);
	val = JSON.parse(resp);
	//insertChat("you", val);	
	//insertChat("you", val['result']['fulfillment']['messages'][0]['speech']);	
	
	if(val['result']['fulfillment']['messages'][0]['speech'])
		{
		var reg = "@aa_";
		if(val['result']['fulfillment']['messages'][0]['speech'].match(reg)){
			
			book = val['result']['fulfillment']['messages'][0]['speech'];
			
			var temp = showImg();
			
			var millisecondsToWait = 15;
				setTimeout(function() {
					// Whatever you want to do after the wait
					//alert("temp "+temp);
					//alert("res :"+res);
					insertChat("you", res);
					return;
				}, millisecondsToWait);
							
			// alert("temp "+temp);
			// insertChat("you", temp);
			// return;
		
			
		}
		insertChat("you", val['result']['fulfillment']['messages'][0]['speech']); 
		
		return;
		}
	if(val['result']['fulfillment']['speech'])
		{
		insertChat("you", val.result.fulfillment.speech); 
		return;
		}
		
	//insertChat("you", val);	
	
}
		  
//-- Clear Chat
//resetChat();

//-- Print Messages
//insertChat("me", "Hello Tom...", 0);  


$(document).ready(function() 
   {
   //intro
   //getIntro();
   
   $(".mytext").on("keyup", function(e)
      {
      if ((e.keyCode || e.which) == 13)
         {
         var text = $(this).val();
         if (text !== "")
            {
            submitMessage(text);   
            $(this).val('');
            }
         }
      });

   $("#sendchat").on("click", function(e)
      {
      var text = $('#mytext').val();
      if (text !== "")
         {
         submitMessage(text); 
         $(this).val('');
         }
      });
   
   

        
      
   });


//-- NOTE: No use time on insertChat.