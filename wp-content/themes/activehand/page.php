<?php
/**
 * Created by PhpStorm.
 * User: bsejawal
 * Date: 9/1/15
 * Time: 7:09 AM
 */

get_header();?>
<div class="container left_container_wrapper">	
	<div class="row">
		<div class="col-md-8 col-sm-6 category_wrapper">
			<?php
				if(have_posts()) :
				    while(have_posts()) : the_post() ?>
						<div class="category_excerpt">				      
							<h2><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h2>
							<p><?php the_excerpt(); ?></p>	
						</div>			        
					<?php endwhile;			
				endif; ?>			
		</div>
		<div class="col-md-4">	
		<?php get_template_part( 'inc/rightinc', 'none' ); ?>		
		</div>
	</div>
</div>


</div>
<?php
get_footer();

?>