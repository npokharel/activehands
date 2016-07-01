<?php
/*
Template Name: Contact
*/
get_header();

?>
<div class="container left_container_wrapper">	
	<div class="row">
		<div class="col-md-8 col-sm-6 category_wrapper">
			<h2>Contact</h2>
			<?php echo do_shortcode('[contact-form-7 id="87" title="Active Hands Contact"]');?>
		</div>
		<div class="col-md-4">	
		<?php get_template_part( 'inc/rightinc', 'none' ); ?>		
		</div>
	</div>
</div>

<?php
get_footer();
?>


