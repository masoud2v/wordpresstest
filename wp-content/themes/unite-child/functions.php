<?php
function create_posttype() {
    register_post_type( 'Films',
        array(
            'labels' => array(
                'name' => __( 'Films' ),
                'singular_name' => __( 'Film' )
            ),
            'public' => true,
            'has_archive' => false,
            'rewrite' => array('slug' => 'Films'),
        )
    );
}

add_action( 'init', 'create_posttype' );