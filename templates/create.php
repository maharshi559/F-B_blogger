<?php include('includes/header.php'); ?>	
<form role="form" method="post" class="form" action="create.php">
	<div class="form-group">
		<label>Blog Title</label>
		<input type="text" class="form-control" name="title" placeholder="Enter Post Title">
	</div>
	<div class="form-group">
		<label>Category</label>
		<select class="form-control" name="category">
			<?php foreach(getCategories() as $category) : ?>
				<option value="<?php echo $category->id; ?>"><?php echo $category->name; ?></option>
			<?php endforeach; ?>
		</select>
	</div>
	<div class="form-group">
		<label>Blog Body</label>
		<textarea id="summernote" name="body"></textarea>
		<!-- <div id="summernote"></div> -->
	</div>
	<button name="do_create" type="submit" class="btn btn-default pull-right">Submit</button>
</form>



<?php include('includes/footer.php'); ?>	