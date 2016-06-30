<?php
/**
 * Created by PhpStorm.
 * User: bsejawal
 * Date: 9/1/15
 * Time: 7:09 AM
 */ ?>

<?php get_header(); ?>

<!-- slider -->
<?php echo do_shortcode('[image-carousel]');?>

<!-- /.slider -->

<!-- latestpost -->
<div class="post_wrapper">
    <div class="container">
        <div class="row">
            <?php query_posts('showposts=3'); ?>

            <?php while (have_posts()) : the_post(); ?>
                <div class="col-sm-6 col-md-4">
                    <div class="panel panel-default">
                        <div class="panel-body">

                        <?php 

                        $title = get_the_title();
                        
                         ?>
                            <h3> <a href="<?php echo get_permalink();?>"><?php echo mb_strimwidth($title, 0,90, '...');?></a></h3>
                            <p> <?php the_excerpt(" More..") ?></p>
                        </div>
                    </div>
                </div>
            <?php endwhile;?>
        </div>
    </div>
</div>

<!-- /.latestpost -->



<?php get_footer(); ?>