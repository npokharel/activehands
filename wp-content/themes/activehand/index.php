<?php
/**
 * Created by PhpStorm.
 * User: bsejawal
 * Date: 9/1/15
 * Time: 7:09 AM
 */


get_header();?>
<div class="container">
<?php
if(have_posts()) :
    while(have_posts()) : the_post() ?>

        <article>
            <h2><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h2>
            <p><?php the_content(); ?></p>
        </article>
    <?php endwhile;
else :
    echo "test";
endif; ?>

</div>
<?php
get_footer();

?>