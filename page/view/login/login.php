<?php include_once "layout/header.php" ?>
<main>
	<div style="text-align: center; width: 60%; margin: auto; padding: 20px 0; background-color: #000000">
		<form action="http://localhost/backend/myProject/page/index.php?c=login&a=login" method="POST">
			<label style="color: #ffffff">Username: <input name="email" style="color: #000000" type="email"></label><br>
			<label style="color: #ffffff">Password: <input name="password" style="color: #000000" type="password"></label><br>
			<label style="margin: 10px 0;"><input type="submit" value="Login"></label>
		</form>
	</div>
</main>
<?php include_once "layout/footer.php" ?>