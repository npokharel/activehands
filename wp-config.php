<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, and ABSPATH. You can find more information by visiting
 * {@link https://codex.wordpress.org/Editing_wp-config.php Editing wp-config.php}
 * Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'activehands');

/** MySQL database username */
define('DB_USER', 'activehand');

/** MySQL database password */
define('DB_PASSWORD', 'activehand');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'TXOyH]VX|}-j+jlehkRZsaAyh|6+GSpOa|LUf,||Z|<!4WiE#jop+)k6!D4r4Wm;');
define('SECURE_AUTH_KEY',  'UDxh1V|E3(9wH]e-Abw%ytYISL:^xr:L67c!b#ueBo0FUKgAT#C&G*c!.J?cX=Ku');
define('LOGGED_IN_KEY',    '*YnvqaRk:XXX@o4gc6RJ/g x+kiY<p;Tdkodtv{@lBKQA2 &ZKb,8[1hW4(%j-|(');
define('NONCE_KEY',        '7+8CDc,$%+k/MicsRA-TK}Fa1<A`@+j-|eY|$V+YQXW?|=4.*upXVuaCH2-j.+]?');
define('AUTH_SALT',        'Xt/gy-L1+Qw ?r1i3XO0|Vt7!46-6W;TZ d-y=t665rwJ^V26GL;s<=3K{Y[8!|L');
define('SECURE_AUTH_SALT', 'W^a&!}6mB}s^5#3CY-B{|)WcR*e[Tb9#Cg*^B=,53lyhk+iZS/MtX+I-a{lHcew-');
define('LOGGED_IN_SALT',   ',S| R(2~@!:1ms!T!0fef)h73F&iqm]-##6Z{YhIhm7VJ+J@@?;WR!?{l`#DE[C*');
define('NONCE_SALT',       '}mA=#}/mXKC[pB8q>S}SOs[mlRSMJ4eUS[1L-:?+5_A]eUT^c:7F@,MeD%Dl$>pT');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
