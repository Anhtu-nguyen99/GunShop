<?php include_once "layout/header.php" ?>
	<main>
		<section>
			<div class="row">
				<div class="col-xs-12">
					<h1>All Products</h1>
				</div>
				<?php foreach ($featuredProducts as $product) { ?>
					<?php include "layout/product.php"; ?>
				<?php } ?>
			</div>
		</section>
	</main>
<?php include_once "layout/footer.php" ?>