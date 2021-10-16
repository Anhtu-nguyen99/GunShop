<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title><?= isset($_GET["c"]) ? $_GET["c"] : "gunshop" ?></title>
	<meta name="description" content="introduction of gun shop. this website belong to Anh Tu">
	<meta name="keywords" content="gun, gun shopping">
	<meta name="author" content="Anh Tu, Anh Tu Dep Trai">
	<link rel="stylesheet" href="public/css/decoration.css">
	<link rel="stylesheet" href="public/bootstrap-3.3.7-dist/css/bootstrap.min.css">
	<script src="public/js/script.js"></script>
</head>
<body>
	<header>
		</div>
		<div id="head">
			<div class="head-container">
				<img src="../upload/logo.jpg" alt="" id="logo">
			</div>
			<div class="head-container" id="head-right">
				<button><a style="text-decoration: none; color: #ffffff" href="http://localhost/backend/myProject/page/index.php?c=login&a=formLogin">Login</a></button>
				<button><a style="text-decoration: none; color: #ffffff"href="http://localhost/backend/myProject/page/index.php?c=login&a=formRegister">registration</a></button>
			</div>
		</div>
	</header>
	<nav>
		<ul class="nav navbar-nav">
			<li><a href="http://localhost/backend/myProject/index.php">Home</a></li>
			<li><a href="http://localhost/backend/myProject/page/index.php?c=product&a=list">Product</a></li>
			<li><a href="http://localhost/backend/myProject/page/index.php?c=information&a=changePolicy">Change Policy</a></li>
			<li><a href="http://localhost/backend/myProject/page/index.php?c=information&a=paymentPolicy">Payment Policy</a></li>
			<li><a href="http://localhost/backend/myProject/page/index.php?c=information&a=shipPolicy">Ship Policy</a></li>
			<li><a href="http://localhost/backend/myProject/page/index.php?c=contact&a=form">Contact</a></li>

			<a href="#" id="link-search"><img src="../upload/search.png" alt="" type="submit" id="search"></a>
			<input type="search" placeholder="Search...">

		</ul>
	</nav>
	<div id="banner">
		<img src="../upload/banner1.jpg" alt="">
	</div>