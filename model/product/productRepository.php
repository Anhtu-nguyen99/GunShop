<?php  
class productRepository {
	function fetchAll($condition = null) {
		global $conn;
		$products = [];
		$sql = "SELECT * FROM product";

		if ($condition) 
		{
			$sql .= " WHERE $condition";
		}

		$result = $conn->query($sql);

		if ($result->num_rows > 0) 
		{
			while ($row = $result->fetch_assoc()) 
			{
				$product = new Product(
					$row["productId"], $row["productName"], $row["productPrice"], $row["image"], $row["categoryId"], $row["description"]);
				$products[] = $product;
			}
		}
		return $products;
	}

	function getAll() {
		return $this->fetchAll();
	}

	function getProductsById($id) {
		global $conn; 
		$condition = "categoryId = $id";
		$products = $this->fetchAll($condition);
		return $products;
	}

	function getProductDetailById($id) {
		global $conn; 
		$condition = "productId = $id";
		$product = $this->fetchAll($condition);
		return $product;
	}
}
?>