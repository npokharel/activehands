<?php

get_header();

?>



<div class="container left_container_wrapper">	
	<div class="row">
		<div class="col-md-8 col-sm-6 category_wrapper">			
			<?php
			if(have_posts()) :
			    while(have_posts()) : the_post() ?>
			        
	            
	                <h2><?php the_title(); ?></h2>
	                <?php the_content(); ?>
	            
			        
			    <?php endwhile;
			else :
			    echo "test";
			endif;
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