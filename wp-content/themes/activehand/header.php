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
    </nav>
</header>



