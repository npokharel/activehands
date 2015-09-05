<?php get_header(); ?>
    <div class="container">
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel" data-interval="3000">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                <li data-target="#carousel-example-generic" data-slide-to="4"></li>
                <li data-target="#carousel-example-generic" data-slide-to="5"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner">
                <div class="item active">
                    <img src="<?php echo  get_template_directory_uri();?>/images/slide/01.jpg"  alt="... "/>
                    <div class="carousel-caption">
                        <p>Everest North Face toward Base Camp Tibet Luca Galuzzi</p>
                    </div>
                </div>
                <div class="item">
                    <img src="<?php echo  get_template_directory_uri();?>/images/slide/02.jpg" alt="..." />
                    <div class="carousel-caption">
                        <p>Kanchenjunga</p>
                    </div>
                </div>

                <div class="item">
                    <img src="<?php echo  get_template_directory_uri();?>/images/slide/03.jpg" alt="..." />
                    <div class="carousel-caption">
                        <p>Mountain Flight</p>
                    </div>
                </div>

                <div class="item">
                    <img src="<?php echo  get_template_directory_uri();?>/images/slide/04.jpg" alt="..." />
                    <div class="carousel-caption">
                        <p>Mount Annapurna from Annapurna base camp</p>
                    </div>
                </div>

                <div class="item">
                    <img src="<?php echo  get_template_directory_uri();?>/images/slide/05.jpg" alt="..." />
                    <div class="carousel-caption">
                        <p>Mount Everest as seen from Drukair</p>
                    </div>
                </div>

                <div class="item">
                    <img src="<?php echo  get_template_directory_uri();?>/images/slide/06.jpg" alt="..." />
                    <div class="carousel-caption">
                        <p>Mount Everest China and Nepal Border</p>
                    </div>
                </div>

                <div class="item">
                    <img src="<?php echo  get_template_directory_uri();?>/images/slide/07.jpg" alt="..." />
                    <div class="carousel-caption">
                        <p>The Amazing Mount Kanchenjunga</p>
                    </div>
                </div>
            </div>

            <!-- Controls -->
            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
            </a>
            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
            </a>
        </div> <!-- Carousel -->
    </div>

    <div class="site-post-excerpts">
        <div class="container">
            <?php query_posts('showposts=4'); ?>

            <?php while (have_posts()) : the_post(); ?>
                <div class="col-sm-6 col-md-3">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <h3> <?php the_title() ?></h3>
                            <p> <?php the_excerpt(" More..") ?></p>
                        </div>
                    </div>
                </div>
            <?php endwhile;?>
        </div>
    </div>
<?php get_footer(); ?>