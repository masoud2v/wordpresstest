<?php
/**
 * Created by PhpStorm.
 * User: masoud
 * Date: 10/28/2018
 * Time: 10:16 AM
 */

/**
 * Plugin Name: Film hook
 * Description: A simple plugin to test hooks
 */
function yourprefix_add_to_content( $content ) {
//    if( is_single() ) {
        $content .= 'Your new content here';
//    }
    return $content;
}

//apply_filters( 'get_the_content', 'yourprefix_add_to_content' );
add_filter('the_content', 'yourprefix_add_to_content');
add_filter('get_the_content', 'yourprefix_add_to_content');
//add_action( 'get_posts', 'email_post_author', 10, 3 );
//function email_post_author( $post_id, $post, $update ) {
//    $email = 'mymail@mail.com';
//    $subject = 'New Post Published';
//    $message = 'A new post was published, use this link to view it: ' . get_permalink( $post->ID );
//    wp_mail( $email, $subject, $message );
//}