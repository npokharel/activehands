<?php
/**
 * Created by PhpStorm.
 * User: bsejawal
 * Date: 8/30/15
 * Time: 08:25 PM
 */


get_header();
if(have_posts()) :
    while(have_posts()) : the_post() ?>

        <article>
            <div class="container">
                <h2><?php the_title(); ?></h2>
                <p><?php the_content(); ?></p>
            </div>
        </article>
    <?php endwhile;
else :
    echo "test";
endif;
get_footer();

?>