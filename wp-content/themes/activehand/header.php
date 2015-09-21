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
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="row">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#"><img src="<?php echo get_template_directory_uri() ?>/images/ah.png" height="40px" /> </a>
                </div>
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <div class="pull-right">

                        <ul class="topbar" style=" margin-left:300px;">
                            <li><a href="login">Login</a></li>
                            <li><a href="login">Help</a></li>

                        </ul>

                        <ul class="nav navbar-nav">
                            <?php

                            $menu_name = 'primary';
                            $locations = get_nav_menu_locations();
                            $menu = wp_get_nav_menu_object( $locations[ $menu_name ] );
                            $menuitems = wp_get_nav_menu_items( $menu->term_id, array( 'order' => 'DESC' ) );
                            foreach( $menuitems as $item ):
                                // set up title and url
                                $title = $item->title;
                                $link = $item->url;
                                $item_object_id=$item->object_id;
                                $args = array(
                                    'child_of' => $item_object_id,
                                    'title_li' => '',
                                    "echo"=> false
                                );

                                $children = wp_list_pages($args);

                                $has_child = ($children != null && $children != '') ? true : false;
                                ?>
                                <li <?php if($has_child){ echo " class='dropdown'";}else{"";};?>>
                                    <a href="<?php echo $link ?>" <?php if($has_child){echo " class='dropdown-toggle' data-toggle='dropdown'";}else{"";} ?>><?php echo $title ?><?php if($has_child){echo " <b class='caret''></b>";}else{"";} ?></a>
                                    <?php if($has_child): ?>
                                        <ul class="dropdown-menu">
                                            <?php echo $children ?>
                                        </ul>
                                    <?php endif;?>
                                </li>
                            <?php endforeach; ?>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </nav>
</header>