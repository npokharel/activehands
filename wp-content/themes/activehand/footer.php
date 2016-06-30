<?php
/**
 * Created by PhpStorm.
 * User: bsejawal
 * Date: 9/1/15
 * Time: 7:09 AM
 */
?>
<footer>
<!-- footer -->
<div class="footer_wrapper">
    <div class="footer_nav_wrapper">
        <div class="container">
            <ul class="fmenu">
                <?php
                $args = array(
                    'theme_location' => 'footer',
                    'container'       => false, // remove outer div
                    'items_wrap' => '%3$s' // remove ul
                );

                wp_nav_menu($args); ?>
            </ul>
        </div>        
    </div>

    <p class="cright"><?php bloginfo("name"); ?> &copy; <?php echo date("Y"); ?></p>
    
</div>
<!-- /.footer -->
   
</footer>
 <?php
        wp_footer();
        ?>
</body>
</html>
