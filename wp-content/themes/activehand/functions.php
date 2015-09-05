<?php
/**
 * Created by PhpStorm.
 * User: bsejawal
 * Date: 9/1/15
 * Time: 7:09 AM
 */


// CSS include
function wp_style(){

    wp_register_style( 'bootstrap', get_template_directory_uri() . '/css/bootstrap.min.css', array(), '3.3.5' );
    wp_enqueue_style('bootstrap');

    wp_register_style( 'theme', get_template_directory_uri() . '/css/theme.css', array(), '1.0' );
    wp_enqueue_style('theme');
}

add_action('wp_enqueue_scripts', 'wp_style');


//jquery scripts
function wp_script(){
    wp_register_script( 'jquery', get_template_directory_uri() . '/js/jquery.min.js', array('jquery'), '1.11.3', true );
    wp_enqueue_script('jquery');
    wp_register_script( 'bootstrap', get_template_directory_uri() . '/js/bootstrap.min.js', array('jquery'), '3.3.5', true );
    wp_enqueue_script('bootstrap');
}

add_action('wp_enqueue_scripts', 'wp_script');

//Navigation Menu
register_nav_menus(array(
    'primary' => __('Primary Menu'),
    'footer' => __('Footer Menu'),

));

//add_filter('nav_menu_css_class' , 'special_nav_class' , 10 , 2);
//function special_nav_class($classes, $item){
//    if($item->title == "About Us"){ //Notice you can change the conditional from is_single() and $item->title
//        $classes[] = "dropdown";
//    }
//    return $classes;
//}

// Get top ancestor
function get_top_ancestor_id(){
    global $post;
    if($post->post_parent){
        $ancestors = array_reverse(get_post_ancestors($post->ID));
        return $ancestors[0];
    }
    return $post->ID;
}

//require_once('wp_bootstrap_navwalker.php');