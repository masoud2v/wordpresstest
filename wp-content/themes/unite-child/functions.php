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

add_action( 'init', 'create_films_taxonomies', 0 );

function create_films_taxonomies() {
    $labels = array(
        'name'              => _x( 'Genres', 'taxonomy general name', 'textdomain' ),
        'singular_name'     => _x( 'Genre', 'taxonomy singular name', 'textdomain' ),
        'search_items'      => __( 'Search Genres', 'textdomain' ),
        'all_items'         => __( 'All Genres', 'textdomain' ),
        'parent_item'       => __( 'Parent Genre', 'textdomain' ),
        'parent_item_colon' => __( 'Parent Genre:', 'textdomain' ),
        'edit_item'         => __( 'Edit Genre', 'textdomain' ),
        'update_item'       => __( 'Update Genre', 'textdomain' ),
        'add_new_item'      => __( 'Add New Genre', 'textdomain' ),
        'new_item_name'     => __( 'New Genre Name', 'textdomain' ),
        'menu_name'         => __( 'Genre', 'textdomain' ),
    );

    $args = array(
        'hierarchical'      => true,
        'labels'            => $labels,
        'show_ui'           => true,
        'show_admin_column' => true,
        'query_var'         => true,
        'rewrite'           => array( 'slug' => 'genre' ),
    );

    register_taxonomy( 'genre', array( 'films' ), $args );

    $labels = array(
        'name'                       => _x( 'Countries', 'taxonomy general name', 'textdomain' ),
        'singular_name'              => _x( 'Country', 'taxonomy singular name', 'textdomain' ),
        'search_items'               => __( 'Search Countries', 'textdomain' ),
        'popular_items'              => __( 'Popular Countries', 'textdomain' ),
        'all_items'                  => __( 'All Countries', 'textdomain' ),
        'parent_item'                => null,
        'parent_item_colon'          => null,
        'edit_item'                  => __( 'Edit Country', 'textdomain' ),
        'update_item'                => __( 'Update Country', 'textdomain' ),
        'add_new_item'               => __( 'Add New Country', 'textdomain' ),
        'new_item_name'              => __( 'New Country Name', 'textdomain' ),
        'separate_items_with_commas' => __( 'Separate countries with commas', 'textdomain' ),
        'add_or_remove_items'        => __( 'Add or remove countries', 'textdomain' ),
        'choose_from_most_used'      => __( 'Choose from the most used countries', 'textdomain' ),
        'not_found'                  => __( 'No countries found.', 'textdomain' ),
        'menu_name'                  => __( 'Countries', 'textdomain' ),
    );

    $args = array(
        'hierarchical'          => false,
        'labels'                => $labels,
        'show_ui'               => true,
        'show_admin_column'     => true,
        'update_count_callback' => '_update_post_term_count',
        'query_var'             => true,
        'rewrite'               => array( 'slug' => 'country' ),
    );

    register_taxonomy( 'country', 'films', $args );

    $labels = array(
        'name'                       => _x( 'Years', 'taxonomy general name', 'textdomain' ),
        'singular_name'              => _x( 'Year', 'taxonomy singular name', 'textdomain' ),
        'search_items'               => __( 'Search Years', 'textdomain' ),
        'popular_items'              => __( 'Popular Years', 'textdomain' ),
        'all_items'                  => __( 'All Years', 'textdomain' ),
        'parent_item'                => null,
        'parent_item_colon'          => null,
        'edit_item'                  => __( 'Edit Year', 'textdomain' ),
        'update_item'                => __( 'Update Year', 'textdomain' ),
        'add_new_item'               => __( 'Add New Year', 'textdomain' ),
        'new_item_name'              => __( 'New Year Name', 'textdomain' ),
        'separate_items_with_commas' => __( 'Separate years with commas', 'textdomain' ),
        'add_or_remove_items'        => __( 'Add or remove years', 'textdomain' ),
        'choose_from_most_used'      => __( 'Choose from the most used years', 'textdomain' ),
        'not_found'                  => __( 'No years found.', 'textdomain' ),
        'menu_name'                  => __( 'Years', 'textdomain' ),
    );

    $args = array(
        'hierarchical'          => false,
        'labels'                => $labels,
        'show_ui'               => true,
        'show_admin_column'     => true,
        'update_count_callback' => '_update_post_term_count',
        'query_var'             => true,
        'rewrite'               => array( 'slug' => 'year' ),
    );

    register_taxonomy( 'year', 'films', $args );

    $labels = array(
        'name'                       => _x( 'Actors', 'taxonomy general name', 'textdomain' ),
        'singular_name'              => _x( 'Actor', 'taxonomy singular name', 'textdomain' ),
        'search_items'               => __( 'Search Actors', 'textdomain' ),
        'popular_items'              => __( 'Popular Actors', 'textdomain' ),
        'all_items'                  => __( 'All Actors', 'textdomain' ),
        'parent_item'                => null,
        'parent_item_colon'          => null,
        'edit_item'                  => __( 'Edit Actor', 'textdomain' ),
        'update_item'                => __( 'Update Actor', 'textdomain' ),
        'add_new_item'               => __( 'Add New Actor', 'textdomain' ),
        'new_item_name'              => __( 'New Actor Name', 'textdomain' ),
        'separate_items_with_commas' => __( 'Separate actors with commas', 'textdomain' ),
        'add_or_remove_items'        => __( 'Add or remove actors', 'textdomain' ),
        'choose_from_most_used'      => __( 'Choose from the most used actors', 'textdomain' ),
        'not_found'                  => __( 'No actors found.', 'textdomain' ),
        'menu_name'                  => __( 'Actors', 'textdomain' ),
    );

    $args = array(
        'hierarchical'          => false,
        'labels'                => $labels,
        'show_ui'               => true,
        'show_admin_column'     => true,
        'update_count_callback' => '_update_post_term_count',
        'query_var'             => true,
        'rewrite'               => array( 'slug' => 'actor' ),
    );

    register_taxonomy( 'actor', 'films', $args );
}