<?php include_once "layout/header.php";?>
	<main>
		<?php include_once "layout/aside.php";?>
		<?php foreach ($products as $product) { ?>
		<div class="col-md-9 all-product">
			<?php include "layout/product.php"; ?>
			<p id="detail"><?=$product->getDescription()?></p>
			<?php } ?>
		</div>
	</main>
	<div style="clear: both;"></div>
<?php include_once "layout/footer.php";?>