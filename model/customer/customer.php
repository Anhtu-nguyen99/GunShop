<?php 
class customer {
	protected $id;
	protected $name;
	protected $address;
	protected $phone;
	protected $birthdate;
	protected $email;
	protected $password;

	function __construct($id, $name, $address, $phone, $birthdate, $email, $password) {
		$this->memberId = $id;
		$this->memberName = $name;
		$this->address = $address;
		$this->phone = $phone;
		$this->birthDate = $birthdate;
		$this->email = $email;
		$this->password = $password;
	}

	function getId(){
		return $this->memberId;
	}

	function getName(){
		return $this->memberName;
	}

	function getPassword() {
		return $this->password;
	}

	function getAddress() {
		return $this->address;
	}

	function getEmail() {
		return $this->email;
	}

	function getPhone() {
		return $this->phone;
	}

	function setName($name){
		$this->memberName = $name;
		return $this;
	}

	function setEmail($email) {
		$this->email = $email;
		return $this;
	}

	function setPassword($password) {
		$this->password = $password;
		return $this;
	}

	function setPhone($phone) {
		$this->phone = $phone;
		return $this;
	}

	function setAddress($address) {
		$this->address = $address;
		return $this;
	}

}
?>