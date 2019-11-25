<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'golam_iwire');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

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
define('AUTH_KEY',         'KD+8<Y &?,,Q&1V5^$r.uueW^Tq3 2GQvM~{&F3n,n_C(?*0.E%-Oo>rwBMZ`32,');
define('SECURE_AUTH_KEY',  'rng_!pcxoTLSB/JTk<dp5<E6}8}(kkEYILDx@Ei&f!@tUQ0kqm_i5P@2{2lopUqC');
define('LOGGED_IN_KEY',    'J0mA16r,$HTvT))B:2{NUAFT(Nn%] FI:S>9fRrs{`Ka<:q66DTsB][LDPQ5t~JB');
define('NONCE_KEY',        '9>Qm~9zT3=Xs>~8Iw917d3mC*VMyyk]sfKZS&8bG O:zc8k15C)8U5=9v/u7fyQq');
define('AUTH_SALT',        'iG^6jn;b=?C&p-c+B0@M/edH{HvZa?QxZoVWc7`b%qk>s37X7D*0goa[:yNS?(,:');
define('SECURE_AUTH_SALT', '%o$008tc2<HP~GkkP#8+PfbY{PgJeRF]oT)-VdRcP$QHoPw`#}0at}U<yoLI>&s0');
define('LOGGED_IN_SALT',   'ntf9iGZ7X:KX:V,L.k%ORe_BR7v:Vo9znprT; kP3>oHMe*w$bMK$$>VsJ>=J# K');
define('NONCE_SALT',       'k5cOfww}+r-jVb00^s<1&6{HG5?4%.P$:|X4#g-~*Az}{lfyc2iM+VyC1ah$;`_K');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
