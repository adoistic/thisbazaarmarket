<?php

session_start();


$desc = $_GET["q"];

$conn = new mysqli('localhost', 'root', 'root','thisbazaar');



   //var temp =  "<button class='show' onclick='document.getElementById("id01").style.display="block"' style='width:auto;'>Sign Up</button>"





if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * from product where itemDesc = '".$desc."'";

//echo $sql;

$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "Book Code: " . $row["itemCode"]. " Book Name: " . $row["itemName"]. "  Author: " . $row["itemAuthor"]." Rate: Rs".$row["rate"] . "<img src='audiobooks/".$row["itemCode"].".jpg'><br>";
		echo "<button onclick='desc(".$row["itemCode"].")'>Description</button>";
		echo "<button onclick='buy(".$row["itemCode"].",".$row["rate"].")'>Buy</button>";

		//$_SESSION["bookID"] = $row["itemCode"];
	}
} else {
    echo "Sorry, no item found... ";
}
$conn->close();



?>
