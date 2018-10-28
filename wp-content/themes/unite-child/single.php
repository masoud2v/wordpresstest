<?php
/**
 * The Template for displaying all single posts.
 *
 * @package unite
 */

get_header(); ?>

    <div id="primary" class="content-area col-sm-12 col-md-8 <?php echo of_get_option('site_layout'); ?>">
        <main id="main" class="site-main" role="main">

            <?php while (have_posts()) : the_post(); ?>

                <?php get_template_part('content', 'single'); ?>

                <!--			--><?php //unite_post_nav(); ?>

                <?php the_terms($post->ID, 'country', 'Country: ', ' / '); ?>
                <br/>
                <?php the_terms($post->ID, 'genre', 'Genre: ', ' / '); ?>

                <?php

                $ticket_price = get_post_meta($post->ID, 'ticket_price', true);
                $release_date = get_post_meta($post->ID, 'release_date', true);

                echo '<h6>Ticket Price: ' . $ticket_price . '<h6>';
                echo '<h6>Release Date: ' . $release_date . '</h6>';

                ?>
            <?php endwhile; // end of the loop. ?>

        </main><!-- #main -->
    </div><!-- #primary -->

<?php get_sidebar(); ?>
<?php get_footer(); ?>