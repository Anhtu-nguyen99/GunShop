<?php  
class categoryRepository {
	function fetchAll() {
		global $conn;
		$categories = array();
		$sql = "SELECT * FROM category"; 
		$result = $conn->query($sql); 
		if ($result->num_rows > 0 ) { 
			while ($row = $result->fetch_assoc()) { 
				$category = new Category($row["categoryId"], $row["categoryName"]);
				$categories[] = $category;
			}
		}

		return $categories;
	}

	function getAll() {
		return $this->fetchAll();
	}
}
?>