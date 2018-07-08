<?php

$desc = $_GET['q'];

$conn = new mysqli('localhost', 'root', 'root','thisbazaar');


if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * from product where itemCode = '".$desc."'";

//echo $sql;

$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
       echo "Description: ".$row["description"];
	}
} else {
    echo "Sorry, no description found... ";
}
$conn->close();


?>
