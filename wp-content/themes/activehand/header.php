<!DOCTYPE html>
<html <?php language_attributes();?>>
<head>
    <meta charset="<?php bloginfo('charset'); ?>">
    <meta name="viewport" content="width=device-width">
    <title><?php bloginfo("name"); ?></title>

    <?php wp_head(); ?>


</head>
<body <?php body_class(); ?>>

<header>


    <nav class="navbar navbar-inverse navbar-static-top no-margin" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-AH-navbar-collapse-1">
                    <span class="sr-only">Toggle Navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="<?php echo home_url(); ?>">Activehands</a>



            </div>
            <div class="collapse navbar-collapse navbar-right" id="bs-AH-navbar-collapse-1">
                <ul class="nav navbar-nav">

                    <?php
                    $args = array(
                        'theme_location' => 'primary',
                        'container'       => false, // remove outer div
                        'items_wrap' => '%3$s' // remove ul
                    );

                    wp_nav_menu($args); ?>

                </ul>
            </div>
        </div>
    </nav>
</header>

