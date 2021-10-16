<?php  
class homeController {
	function list() {

		$productRepository = new productRepository();
		$featuredProducts = $productRepository->getAll();
		include_once "view/home/home.php";
	}
}


?>