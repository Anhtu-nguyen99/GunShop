<?php  
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "gunshop";
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
	die("ket noi that bai: " . $conn->connect_error);
}
?>