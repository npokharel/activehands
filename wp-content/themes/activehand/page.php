<?php
/**
 * Created by PhpStorm.
 * User: bsejawal
 * Date: 9/1/15
 * Time: 8:01 AM
 */

get_header();
if(have_posts()) :
    while(have_posts()) : the_post() ?>

        <article>
            <div class="jumbotron">
                <div class="container">
                    <h2><?php the_title(); ?></h2>
                    <p><?php the_content(); ?></p>

                </div>
            </div>

        </article>
    <?php endwhile;
else :
    echo "test";
endif;
get_footer();

?>
