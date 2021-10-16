function checkInput() {
	var input = document.getElementsByClassName("check-register");
	var name = input[0].value;
	var password = input[1].value;
	var repassword = input[2].value;
	var phone = input[3].value;
	var email = input[4].value;
	var address = input[5].value;

	if ((name == "") || (password == "") || (phone == "") || (email == "") || (address == "")) {
		alert("please write your information !");
		return false;
	}
	if (password == repassword) {
		return true;
	}
	alert("password and re-password have to be the same");
	return false;
}