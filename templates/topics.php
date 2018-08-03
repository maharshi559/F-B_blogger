<?php include('includes/header.php'); ?>	

<ul id="topics">


	<?php if($topics) : ?>
		<?php foreach($topics as $topic) : ?>
		<li class="topic">
			<div class="row">

				<div class="media">
  					<div class="media-left media-top">
    					<a href="topic.php?id= <?php echo $topic->id; ?>">
						<img class="avatar pull-left"  src="images/avatars/<?php echo $topic->avatar; ?>" >
    					</a>
  					</div>
					<div class="media-body">
						<h1 class="media-heading"><?php echo $topic->title; ?></h1>
						<span><?php echo substr($topic->body,-366); ?></span>
					</div>
				</div>

				
			</div>
		</li>
		<?php endforeach ; ?>
					
						</ul>
	<?php else : ?>
		<p>No Topics To Display</p>
	<?php endif; ?>
					
<?php include('includes/footer.php'); ?>	