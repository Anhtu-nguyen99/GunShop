<?php include_once "layout/header.php" ?>
<main>
	<div class="row">
		<div class="col-md-6" style="padding-left: 45px; margin: 20px 0">
			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.8736599170934!2d106.64203131533402!3d10.74421926272403!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752e639bf01243%3A0x700ebdccb5a04987!2zxJDhuqFpIGjhu41jIEdyZWVud2ljaCAoVmnhu4d0IE5hbSk!5e0!3m2!1sen!2s!4v1597939520156!5m2!1sen!2s" width="100%" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
		</div>
		<div class="col-md-6" style="padding-right: 45px">
			<h2>Information</h2>
			<form action="#" method="GET" style="text-align: center;">
				<label style="width: 100%"><input type="text" name="name" placeholder="Full name" style="width: 100%; height: 30px"></label> <br>
				<label style="width: 49%"> <input type="email" name="mail" placeholder="Email address" style="width: 100%; height: 30px"></label>
				<label style="width: 50%"> <input type="number" name="phone" placeholder="Phone number" style="width: 100%; height: 30px"></label> <br>
				<label style="width: 100%"> <textarea name="content" cols="60" rows="12" placeholder="Content" style="width: 100%"></textarea></label>
				<label style="width: 100%"><input type="submit" value="send" style="float: right; background-color: #EF5B0C;"></label>
			</form>
		</div>
	</div>
	<div style="clear: both;"></div>
</main>
<?php include_once "layout/footer.php" ?>