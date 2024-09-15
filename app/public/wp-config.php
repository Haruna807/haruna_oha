<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * Localized language
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'local' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', 'root' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',          'QaSXOdb15X+ez1{/8JbnY7d-hGcc.1#hmrRK9?z:3X>0Yi~M?NFgLe<ls[=3rE%3' );
define( 'SECURE_AUTH_KEY',   '+uWQB9>T3hT=J&G csa6y,D_MLucM jpf_+%WR=<HcaAd~0q 3.7#|6^8/mx~_92' );
define( 'LOGGED_IN_KEY',     'g~<FkMH 2*VAG2oz4gIx[$N5RTEsimv~Mzy+qX_`}rlb26l>vEP:^e6?(*nq#{]7' );
define( 'NONCE_KEY',         'As!TS=7B#Ovu*B]F1Wdj2b[UcGo@=}GAnPT!?g`K,ZVMl*rWOt|AjSOIPf{Sw9v;' );
define( 'AUTH_SALT',         'G=m#L5OdVL,Yw_HH6c;$=d9bsZCZAb}Z>mo_OvXxL9Q*vw]zXpm=0 =8*<i*(Af%' );
define( 'SECURE_AUTH_SALT',  '(g<y|@ilhVi<8!Fqe3LRQhRP:A#t7nK$5qy2{vlJ<+URR5v@cg0n=/e(84j sEW4' );
define( 'LOGGED_IN_SALT',    'qjFrR%%m|TIvVh3J]/T4)8v`w5Uq_I)Y^*JMtJ M#{RE@PgnX[:b$:pD_ldxO14t' );
define( 'NONCE_SALT',        '7+vj&r^^FMLrTlrKp[Y8$QM^cOJw<5H8p].YO 9<{J>z2Ub`C}30U4{}gTst<:t,' );
define( 'WP_CACHE_KEY_SALT', '5MxES!HS_d7BF5I-?AUy0;BZs)=FYC=0X>Ovk]J;$A/31)ClF>>wJTYJ9|^mp51d' );


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';


/* Add any custom values between this line and the "stop editing" line. */



/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
if ( ! defined( 'WP_DEBUG' ) ) {
	define( 'WP_DEBUG', true );
}

define( 'WP_ENVIRONMENT_TYPE', 'local' );
/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
