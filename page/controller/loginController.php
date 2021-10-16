<?php  
class loginController {

	function formLogin() {
		include_once "view/login/login.php";
	}
	function login() {
		$email = $_POST["email"];
		$password = md5($_POST["password"]);
		$customerRepository = new CustomerRepository();
		$customer = $customerRepository->checkLogin($email, $password);
		if ($customer != null) {
			header("location:index.php");
		}
		include_once "view/login/login.php";
	}

	function formRegister() {
		include_once "view/login/register.php";
	}

	function submit() {
		$customerRepository = new CustomerRepository();
		$customerRepository-> registation($_POST);
	}
}
?>