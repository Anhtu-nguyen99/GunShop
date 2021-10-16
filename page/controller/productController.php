<?php  
class productController {
	function list() {
		$productRepository = new productRepository();
		$products = $productRepository->getAll();
		include_once "view/product/product.php";
	}

	function rifle() {
		$productRepository = new productRepository();
		$products = $productRepository->getProductsById(1);
		include_once "view/product/product.php";
	}

	function mg() {
		$productRepository = new productRepository();
		$products = $productRepository->getProductsById(2);
		include_once "view/product/product.php";
	}

	function smg() {
		$productRepository = new productRepository();
		$products = $productRepository->getProductsById(3);
		include_once "view/product/product.php";
	}

	function sniper() {
		$productRepository = new productRepository();
		$products = $productRepository->getProductsById(4);
		include_once "view/product/product.php";
	}

	function pistol() {
		$productRepository = new productRepository();
		$products = $productRepository->getProductsById(5);
		include_once "view/product/product.php";
	}

	function detail() {
		$id = $_GET["productId"];
		$productRepository = new productRepository();
		$products = $productRepository->getProductDetailById($id);
		include_once "view/product/detail.php";
	}
}
?>