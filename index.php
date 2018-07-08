<!DOCTYPE html>
<script>
function desc(bookID){
	var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                alert(this.responseText);
            }
        };
        xmlhttp.open("GET", "desc.php?q=" + bookID, true);
        xmlhttp.send();
	
}


function buy(bookID,rate){
	
	document.getElementById('id01').style.display='block';
	document.getElementById('book').value=bookID;
	document.getElementById('rate').value=rate;
}

</script>



<html>


    <head>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
        <script src="chatwindow.js"></script>
        <link href="chatwindow.css" rel="stylesheet" >
    </head>
    <body>
        <div class="col-sm-3 col-sm-offset-4 frame">
            <ul></ul>
            <div>
                <div>                        
                    <div class="text text-r" style="background:white;margin-top:20px">
                        <input id="mytext" style="background:white" class="mytext" placeholder="Say hi to begin..."/>
                    </div> 

                </div>
                <div style="padding:10px;">
                    <button id="sendchat" type="button" class="show" style="background:white;color:black"><span class="glyphicon glyphicon-share-alt"></span></button>
                    
                </div>                
            </div>
        </div>


	
<div id="id01" class="modal">
  <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
  <form class="modal-content" method="POST" action="buy.php">
    <div class="container">
      <h2>Checkout</h2>
      <hr>
      
      <input type="email" placeholder="Enter Email" name="email" required>

      
      <input type="text" placeholder="Enter Name" name="name" required>

      
      <input type="number" placeholder="Phone Number" name="phone" required>
      
      <input type="text" placeholder="Address" name="address" required>
	  <input type="number" placeholder="Pin Code" name="pin" required>
	  <input type="text" placeholder="City" name="city" required>
	  <input type="text" placeholder="State" name="state" required>
	  
	  <input type="hidden" name="book" id="book">
	  <input type="hidden" name="rate" id="rate">

      <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>

      <div class="clearfix">
        <button type="button" onclick="document.getElementById('id01').style.display='none'"  class="show">Cancel</button>
        <button class="show" type="submit" class="signupbtn">Buy</button>
      </div>
    </div>
  </form>
</div>





		
    </body>
</html>
