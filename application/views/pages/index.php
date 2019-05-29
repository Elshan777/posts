<div class="container">
<?php foreach($posts as $post) : ?>
	<h3><?php echo $post['title']; ?></h3>
	<div class="row">
		<?php echo word_limiter($post['text'],60); ?>
		<br><br>
		
	</div>
	<p><a href="<?php echo site_url('posts/'.$post['slug']);?>">Read More</a></p>
	<?php if(!$this->session->userdata('logged_in')) : ?>
			<a href="<?php echo base_url(); ?>posts/like/<?php echo $post['id'] ?>">
			Like
			<?php echo $post['likes'] ?>
			</a>
	<?php endif; ?>

    <?php if($this->session->userdata('logged_in')) : ?>

        <a href="<?php echo base_url(); ?>posts/edit/<?php echo $post['id'] ?>">Edit</a>

        <a onClick="return confirm('Delete This post?')" 
         href="<?php echo base_url(); ?>posts/delete/<?php echo $post['id'] ?>">Delete</a>

    <?php endif; ?>
<?php endforeach; ?>

</div>
