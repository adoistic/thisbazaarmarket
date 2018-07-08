<?php


$name = $_POST["name"];
$email = $_POST["email"];
$phone = $_POST["phone"];
$address = $_POST["address"];
$pin = $_POST["pin"];
$city = $_POST["city"];
$state = $_POST["state"];


$bookID = $_POST["book"];
$rate = $_POST["rate"];


//$desc = $_GET["q"];

$conn = new mysqli('localhost', 'root', 'root','thisbazaar');



   //var temp =  "<button class='show' onclick='document.getElementById("id01").style.display="block"' style='width:auto;'>Sign Up</button>"





if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * from product where itemcode = '".$bookID."'";

//echo $sql;

$result = $conn->query($sql);




if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        //echo "Book Code: " . $row["itemCode"]. " Book Name: " . $row["itemName"]. "  Author: " . $row["itemAuthor"]." Rate: Rs".$row["rate"] . "<img src='audiobooks/".$row["itemCode"].".jpg'><br>";
	    $bookCode = $row["itemCode"];
	    $bookName = $row["itemName"];
		$author = $row["itemAuthor"];
		$bookRate = $row["rate"];

		//$_SESSION["bookID"] = $row["itemCode"];
	}
} else {
    echo "Sorry, no item found... ";
}
$conn->close();


?>



<html>
<body>
<style>
*{
	font-family:"OpenDyslexic";

}
table {
	width: 100%;
	font-size:14px;
}
</style>
<center>
<h1> Summary of your order </h1>
<table cellpadding="25px">
<tr>
<td>ID:</td>
<td><?php echo $bookCode; ?>
</td>
</tr>
<tr>
<td>Name:</td>
<td><?php echo $bookName; ?></td>
</tr>
<tr>
<td>Author:</td>
<td><?php echo $author; ?></td>
</tr>
<tr>
<td>Price:</td>
<td><?php echo $bookRate; ?></td>
</tr>
</table>

</center>



<form action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post" target="_top">
<input type='hidden' name='business' value='Paypal_Business_TestAccount_Id'>
<input type='hidden' name='item_name' value='<?php echo $bookName ?>'>
<input type='hidden' name='item_number' value='<?php echo $bookCode?>'>
<input type='hidden' name='amount' value='<?php echo $bookRate?>'>
<input type='hidden' name='no_shipping' value='1'>
<input type='hidden' name='currency_code' value='USD'>
<input type='hidden' name='notify_url' value='payment.php'>
<input type='hidden' name='cancel_return' value='cancel.php'>
<input type='hidden' name='return' value='success.php'>
<!-- COPY and PASTE Your Button Code -->
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="### COPY FROM BUTTON CODE ###">
<center><button type="submit" name="submit">Pay</button></center>
</form>
