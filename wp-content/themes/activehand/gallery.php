<?php
/*
Template Name: Gallery
*/
get_header();

?>
<div class="container_wrapper">
	<div class="container">
		<h3><?php the_title(); ?></h3>
		<?php echo apply_filters( "the_content", $post->post_content);?>

	</div>	
</div>

<?php
get_footer();

?>
