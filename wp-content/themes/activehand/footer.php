<?php
/**
 * Created by PhpStorm.
 * User: bsejawal
 * Date: 9/1/15
 * Time: 7:09 AM
 */
?>
<footer>
    <nav class="navbar navbar-default navbar-static-top no-margin" role="navigation">
        <div class="container">

            <div class="collapse navbar-collapse" id="bs-AH-navbar-collapse-2">
                <ul class="nav navbar-nav">

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
    </nav>
    <div class="container">

        <p><?php bloginfo("name"); ?>- &copy; <?php echo date("Y"); ?></p>


        <?php
        wp_footer();
        ?>
    </div>
</footer>

</body>
</html>
