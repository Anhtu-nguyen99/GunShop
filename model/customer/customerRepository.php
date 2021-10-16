<?php  
class customerRepository {
	function fetchAll($condition = null) {
		global $conn;
		$customers = array();
		$sql = "SELECT * FROM member";
			
		if ($condition) 
		{
			$sql .= " WHERE $condition";
		}

		$result = $conn->query($sql);
		if ($result->num_rows > 0) 
		{
			while ($row = $result->fetch_assoc()) 
			{
				
				$customer = new Customer($row["memberId"], $row["memberName"], $row["address"], $row["phone"], $row["birthDate"], $row["email"], $row["password"]);
				$customers[] = $customer;
			}
		}
		return $customers;
	}

	function getAll() {
		return $this->fetchAll();
	}

	function checkLogin($email, $password) {
		global $conn; 
		$condition = "email = '$email' AND password = '$password'";
		$customers = $this->fetchAll($condition);
		return $customers;
	}

	function registation($data) {
		global $conn;
		$username = $data["username"];
		$password = $data["password"];
		$birthday = $data["birthday"];
		$Phonenumber = $data["Phonenumber"];
		$email = $data["email"];
		$address = $data["address"];

		$sql = "INSERT INTO member (memberName, address, phone, birthDate, email, password) VALUES ('$username', '$address', '$Phonenumber', '$birthday', '$email','$password')";

		if ($conn->query($sql) === TRUE) {
			header("location:http://localhost/backend/myProject/page/index.php?c=login&a=formLogin");
		} 
		return false;
	}
}
?>