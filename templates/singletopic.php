<?php include('includes/header.php'); ?>	
<ul id="topics">
	<li id="main-topic" class="topic topic">
	<div class="row">
			<div class="col-md-12">
				<div class="user-info">
				<strong><img class="avatar pull-left" src="<?php echo BASE_URI; ?>images/avatars/<?php echo $topic->avatar; ?>" />
					<?php echo $topic->username; ?></strong>
					
						
						&nbsp;[<?php echo userPostCount($topic->user_id); ?> Posts]
						<a href="<?php echo BASE_URI; ?>topics.php?user=<?php echo $topic->user_id; ?>">View Topics</a>
					
				</div>
			</div>
			<div class="col-md-12">
				<div class="topic-content pull-right">
					<?php echo $topic->body; ?>
				</div>
			</div>
		</div>
	</li>
	
	<h1>Comments</h1>
	<?php foreach($replies as $reply) : ?>
	<li class="topic">
		<div class="row">
			<div class="col-md-12">
				<div class="reply-info">
				<strong><img class="avatar pull-left" src="<?php echo BASE_URI; ?>images/avatars/<?php echo $reply->avatar; ?>" />
					<?php echo $reply->username; ?></strong>
					
						
						&nbsp;[<?php echo userPostCount($reply->user_id); ?> Posts]
						<a href="<?php echo BASE_URI; ?>topics.php?user=<?php echo $reply->user_id; ?>">View Topics</a>
					
				</div>
			</div>
			<div class="col-md-10">
				<div class="reply-content pull-right">
					<?php echo $reply->body; ?>
				</div>
			</div>
		</div>
	</li>
	<?php endforeach; ?>
					
				</ul>
				<h3>Add Comment</h3>
				<form role="form" method="POST">
  					<div class="form-group">
						<textarea id="reply-area" rows="3" cols="80" class="form-control" name="body" ></textarea>
						
  					</div> 
 					 <button type="submit" class="btn btn-default" name="do_reply" >Submit</button>
				</form>
<?php include('includes/footer.php'); ?>	