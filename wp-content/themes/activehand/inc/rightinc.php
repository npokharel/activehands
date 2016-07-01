
<div class="latestEventWrapper">
	
	<h3 class="latestEvents">Recent News </h3>

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
	echo '<ul class="list_latest_news">';
	while ( $the_query->have_posts() ) {
		$the_query->the_post();
		$title = get_the_title();
		echo '<li><a href="'.get_the_permalink().'">' . mb_strimwidth($title, 0,90, '...') . '</a></li>';
	}

	

	echo '</ul>';
} else {
	// no posts found
}
/* Restore original Post Data */
wp_reset_postdata();
?>


</ul>
</div>

<div class="website_banners">
	<div class="photo_gallery">	    			
		<a href="<?php echo site_url();?>/gallery/"><img src="<?php echo get_template_directory_uri();?>/images/gallery.jpg"></a>
	</div>
</div>