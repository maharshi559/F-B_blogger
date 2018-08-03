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
					<a class="nav-link" href="topic.php?id= <?php echo $topic->id; ?>"><h1 class="media-heading"><?php echo $topic->title; ?></h1></a>
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
						<!-- <h3>Forum Statistics</h3>
					<ul>
						<li>Total Number of Users: <strong><?php echo $totalUsers; ?></strong></li>
						<li>Total Number of Topics: <strong><?php echo $totalTopics; ?></strong></li>
						<li>Total Number of Categories: <strong><?php echo $totalCategories; ?></strong></li>
					</ul> -->
<?php include('includes/footer.php'); ?>	
