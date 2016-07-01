<?php
/**
 * Created by PhpStorm.
 * User: bsejawal
 * Date: 9/1/15
 * Time: 7:09 AM
 */
get_header();
?>
<div class="container left_container_wrapper">	
	<div class="row">
		<div class="col-md-8 col-sm-6 category_wrapper">
				<?php
				// Start the Loop.
				while ( have_posts() ) : the_post();
					// Include the page content template.
					get_template_part( 'content', 'page' );	
				endwhile;
				?>		
		</div>
		<div class="col-md-4">	
			<?php get_template_part( 'inc/rightinc', 'none' ); ?>
		</div>
	</div>
</div>
<?php
get_footer();

?>