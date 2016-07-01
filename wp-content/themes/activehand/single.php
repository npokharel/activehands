<?php
/*
Template Name: News
*/
get_header();
?>
<div class="container left_container_wrapper">
	<div class="row">
		<div class="col-md-8 col-sm-6 category_wrapper">
			<h3><?php the_title(); ?></h3>
			<?php echo apply_filters( "the_content", $post->post_content);?>
		</div>
		<div class="col-md-4">
			<?php get_template_part( 'inc/rightinc', 'none' ); ?>
		</div>
	</div>
</div>
<?php
get_footer();
?>


