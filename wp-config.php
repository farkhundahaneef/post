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
define( 'DB_NAME', 'post' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

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
define( 'AUTH_KEY',         '!,?VTeiE3~22(oC53L?)~<bCzZ!4u4$A!LbG41:Y,*nCtvR]H*yaQA~T=87RYPZ9' );
define( 'SECURE_AUTH_KEY',  't|Gn$ewz`F>jH93}9$=fbnFUmKVs9B%t.id46~e_Mos_RPXG=32&9VgrKX)#$Exf' );
define( 'LOGGED_IN_KEY',    '0O6 p Q/+lAmRR}$R:*j6U9pR.},E-1O%fh9$`)k {>[y[GH&|NrZ#(jS)8//<f[' );
define( 'NONCE_KEY',        ':t2cd<|9h]Kt|6k_N2!q]3S(=:J*pZCP.*]..j.q~Bxj}%7Ty&)+ri[F`9o_7^Bl' );
define( 'AUTH_SALT',        'BiC6bh986=_ccTzn6u@qRMe&<YzZ;|+vM0o|`;p&v7>y)<RX!%O/v,,GjP#gV3p;' );
define( 'SECURE_AUTH_SALT', 'fWw2bQ>-6W4H]{l,lzkSVc-HP8z;jEF_f0L=&bR|QTpV_:zEXljZUX<ktt*P@#nj' );
define( 'LOGGED_IN_SALT',   '|{4FQ$$TXORV7b]ld}jR{,1T+lCq)Co7vqYS%$B[X#)><4-gq_~%!v($E2YmK.|k' );
define( 'NONCE_SALT',       'RLIt8B!<PQZPCe4S? IlfKlP&?6(Osc0 [=fK~pHK{zs*iv,>6fCBZp-4}l?2?`h' );

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
