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
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'ynoam' );

/** MySQL database password */
define( 'DB_PASSWORD', 'ynoam' );

/** MySQL hostname */
define( 'DB_HOST', 'mariadb' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'xjKu ~>F~TeI^*!iZ^ymM_pKr&D`CeF1]PImuE=/{SAXVG8fJITZckPBzdk]z=wC' );
define( 'SECURE_AUTH_KEY',  'CebXIC%N)^1km5X3-g:l5uqYuE{Kfz&{US=T=G6b, (U((E+MgUHPExY:#gj!}^[' );
define( 'LOGGED_IN_KEY',    's=1|p86z(ALo>PFe6tzK&]KZc?nLd,0co,wk^Sonj?QzDr|UM?{CT`]*/_RKoD5m' );
define( 'NONCE_KEY',        '+fNgO|MJz:A9,e6;NoRukk$_,y%rV0@A/hhas8Uz_FSynjN#7ESQroW8JLDVfsB]' );
define( 'AUTH_SALT',        '8WBvZ$wqS5i,(O[p~7Y4{2U:7vq-=QA+3Jl`nyaM>q=[Sm00q08G=7|Ue]0}Kz5*' );
define( 'SECURE_AUTH_SALT', 'I UnefW>+Dbq&+];Zk{kKLG>Ix6bixr.uU]SN[?Gjm0KG[oEc/^[AK,iq&Sl+7;R' );
define( 'LOGGED_IN_SALT',   'G>?g<prC3ixh8/@cVY6_;LuXS=Q6i-T%pEV1Bx!HtU=[.X=<MNg/ActXDGop?N@8' );
define( 'NONCE_SALT',       '/3I;O|6zxtC[Zh;T}5xs<~|=qjd]WOh|UgA:}&MVBVK4fa^o-ie3[J3_D.bUb~a4' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

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
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';

