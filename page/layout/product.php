<div class="col-xs-6 col-sm-3">
	<div class="product-container">
		<div>
			<a href="http://localhost/backend/myProject/page/index.php?c=product&a=detail&productId=<?=$product->getId();?>"><img src="../upload/<?=$product->getImage();?>" alt="" class="image"></a>
		</div>
		<div class="productPrice">
			<h5><a href="http://localhost/backend/myProject/page/index.php?c=product&a=detail&productId=<?=$product->getId();?>">&nbsp<?=$product->getName();?></a></h5>
			<span>&nbsp<?=$product->getPrice();?> vnd</span>
		</div>
	</div>
</div>