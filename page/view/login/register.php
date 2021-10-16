<?php include_once "layout/header.php" ?>
<main>
	<div style="margin: auto; padding: 20px 0;width: 70%;background-color: #000000">
		<form action="http://localhost/backend/myProject/page/index.php?c=login&a=submit" method="POST" onsubmit="return checkInput()">
			<table style="margin: auto; color: #ffffff">
				<tr class="row-dky">
					<td>Username:</td>
					<td><label><input class="check-register" type="text" name="username" style="color: #000000"></label></td>
				</tr>
				<tr class="row-dky">
					<td>Password:</td>
					<td><label><input class="check-register" type="password" name="password" style="color: #000000"></label></td>
				</tr>
				<tr class="row-dky">
					<td>Re-password:</td>
					<td><label><input class="check-register" type="password" name="re-password" style="color: #000000"></label></td>
				</tr>
				<tr class="row-dky">
					<td>Day of birth:</td>
					<td><label><input class="check-register" type="date" name="birthday" style="color: #000000"></label></td>
				</tr>
				<tr class="row-dky">
					<td>Phonenumber:</td>
					<td><label><input class="check-register" type="number" name="Phonenumber" style="color: #000000"></label></td>
				</tr>
				<tr class="row-dky">
					<td>Email:</td>
					<td><label><input class="check-register" type="email" name="email" style="color: #000000"></label></td>
				</tr>
				<tr class="row-dky">
					<td>Address:</td>
					<td><label><input class="check-register" type="text" name="address" style="color: #000000"></label></td>
				</tr>
				<tr class="row-dky">
					<td></td>
					<td><input type="submit" value="SUBMIT" style="margin: 10px 0 0 0 ; color: #000000; float: right;background-color: #EF5B0C"></td>
				</tr>
			</table>
		</form>
	</div>
</main>
<div style="clear: both;"></div>
<?php include_once "layout/footer.php" ?>