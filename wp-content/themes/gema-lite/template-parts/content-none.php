<?php
/**
 * Template part for displaying a message that posts cannot be found.
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package Gema Lite
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit; // Exit if accessed directly
}

get_template_part('template-parts/content', 'header'); ?>

<div id="primary" class="content-area  content--not-found">
	<main id="main" class="site-main" role="main">
		<div class="post__content">
			<div class="entry-content">
				<h1 class="page-title"><?php esc_html_e( 'Nothing Found', 'gema-lite' ); ?></h1>
				<div class="no-results  not-found">
					<?php if ( is_home() && current_user_can( 'publish_posts' ) ) : ?>

						<p><?php
							/* translators: %s: The create new post URL. */
							printf( wp_kses( __( 'Ready to publish your first post? <a href="%s">Get started here</a>.', 'gema-lite' ), array( 'a' => array( 'href' => array() ) ) ), esc_url( admin_url( 'post-new.php' ) ) ); ?></p>

					<?php elseif ( is_search() ) : ?>

						<p><?php esc_html_e( 'Sorry, but nothing matched your search terms. Please try again with some different keywords.', 'gema-lite' ); ?></p>
						<?php get_search_form(); ?>

					<?php else : ?>

						<p><?php esc_html_e( 'It seems we can&rsquo;t find what you&rsquo;re looking for. Perhaps searching can help.', 'gema-lite' ); ?></p>
						<?php get_search_form(); ?>

					<?php endif; ?>
				</div><!-- .no-results.not-found -->
			</div>
		</div>
	</main><!-- #main -->
</div><!-- #primary -->
