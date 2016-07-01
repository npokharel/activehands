<?php

get_header(); ?>
<div class="content_wrapper">
    <!-- container for recent articles -->
    <div class="container left_container_wrapper">
        <div class="row">
            <div class="col-md-8">
                <?php
                // Check if there are any posts to display
                if ( have_posts() ) : ?>

                    <?php

                    // The Loop
                    while ( have_posts() ) : the_post(); ?>
                        <h3><a href="<?php the_permalink() ?>" rel="bookmark" title="Permanent Link to <?php the_title_attribute(); ?>"><?php the_title(); ?></a></h3>


                        <div class="entry">

                            <?php the_excerpt();?>


                        </div>
                        <hr/>

                    <?php endwhile;

                    ?>
                    <div class="nav-previous alignleft"><?php next_posts_link( 'Older posts' ); ?></div>
                    <div class="nav-next alignright"><?php previous_posts_link( 'Newer posts' ); ?></div>

                    <?php

                else: ?>
                    <p>Sorry, no posts matched your criteria.</p>


                <?php endif; ?>
            </div>
            <div class="col-md-4">
                <?php get_template_part( 'partials/rightbanner', 'none' ); ?>
            </div>
        </div>
    </div>
</div>
<?php get_footer(); ?>
