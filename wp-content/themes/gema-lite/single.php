<?php
/**
 * The template for displaying all single posts.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
 *
 * @package Gema Lite
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit; // Exit if accessed directly
}

get_header(); ?>

	<?php get_template_part('template-parts/content', 'header'); ?>

	<div id="primary" class="content-area">

		<main id="main" <?php gema_lite_the_post_thumbnail_class( 'site-main' ); ?> role="main">

			<?php while ( have_posts() ) : the_post();

				get_template_part('template-parts/content', 'single');

				the_post_navigation();

				// If comments are open or we have at least one comment, load up the comment template.
				if ( comments_open() || get_comments_number() ) {
					comments_template();
				}

			endwhile; // End of the loop. ?>

		</main><!-- #main -->

	</div><!-- #primary -->

<?php get_footer();
