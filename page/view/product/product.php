<?php include_once "layout/header.php"; ?>
	<!-- this is main -->
	<main>
		<?php include_once "layout/aside.php";?>
		<div class="col-md-9 all-product">
			<?php foreach ($products as $product) { ?>
				<?php include "layout/product.php"; ?>
			<?php } ?>
		</div>
	</main>
	<div style="clear: both;"></div>
	<!-- this is footer -->
<?php include_once "layout/footer.php" ?>