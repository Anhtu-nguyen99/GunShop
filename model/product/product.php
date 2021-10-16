<?php  
class Product {
	protected $id;
	protected $name;
	protected $price;
	protected $image;
	protected $categoryId;
	protected $description;	
	function __construct($id, $name, $price, $image, $categoryId, $description){
		$this->productId = $id;
		$this->productName = $name;
		$this->productPrice = $price;
		$this->image = $image;
		$this->categoryId = $categoryId;
		$this->description = $description;
	}

	function getId() {
		return $this->productId;
	}

	function getName() {
		return $this->productName;
	}

	function getPrice() {
		return $this->productPrice;
	}

	function getImage() {
		return $this->image;
	}

	function getCategoryId() {
		return $this->categoryId;
	}

	function getDescription() {
		return $this->description;
	}

	function setName($name) {
		$this->productName = $name;
		return $this;
	}

	function setPrice($Price) {
		$this->productPrice = $price;
		return $this;
	}
}
?>