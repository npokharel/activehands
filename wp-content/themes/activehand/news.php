<?php
/*
Template Name: News
*/
get_header();

?>
<div class="container left_container_wrapper">	
	<div class="row">
		<div class="col-md-8 col-sm-6 category_wrapper">
			<h2><a href="<?php the_permalink(); ?>"> <?php the_title(); ?></a> </h2>
			<?php
				$args = array(
					'post_type' => 'post',
					'posts_per_page' => 6,		
					'tax_query' => array(
						'relation' => 'OR',
						array(
							'taxonomy' => 'category',
							'field'    => 'slug',
							'terms'    => array( 'news' ),
						),
						array(
							'taxonomy' => 'category',
							'field'    => 'slug',
							'terms'    => array( 'singer' ),
						),
					),
				);					

			// The Query
			$the_query = new WP_Query( $args );

			// The Loop
			if ( $the_query->have_posts() ) {
				
				while ( $the_query->have_posts() ) {
					$the_query->the_post();
					$title = get_the_title();

					?>



				<div class="category_excerpt">				      
					<h2><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h2>
					<p><?php the_excerpt(); ?></p>	
				</div>

				<?php
					
				}

				

				
			} else {
				// no posts found
			}
			/* Restore original Post Data */
			wp_reset_postdata();
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


