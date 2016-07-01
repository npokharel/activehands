<?php
/**
 * @package WordPress
 * @subpackage tamangvoice
 */
?>
<h3><?php the_title(); ?></h3>
<a href="<?php echo site_url(); ?>"><?php echo wp_get_attachment_image( $the_ID, 'full', '',array('class'  => "img-logo") ); ?></a>   
<section><?php echo the_content(); ?></section>