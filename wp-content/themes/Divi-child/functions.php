<?php
   add_action( 'wp_enqueue_scripts', 'enqueue_parent_styles' );

function enqueue_parent_styles() {
    wp_enqueue_style( 'parent-style', get_template_directory_uri().'/style.css' );
}

add_shortcode('sum_two_value','callback_sum_two_value');

function callback_sum_two_value(){
  $arg = array(
      'post_type'     => 'office',
      'posts_per_page' => '3',
      'order_by'     => 'id',
      'order'        => 'desc'
  );

 $query= new WP_Query($arg);
 $html = '';
 if($query-> have_posts() ): 
 while($query-> have_posts()): ($query->the_post());
 $html .= '<a href="'.get_the_permalink().'">'.get_the_title().'</a>';
 $html .= '<p class="description">'.get_the_excerpt().'</p>';
//  $html .= '<a href ="'.get_the_permalink().'">Read More</a>';
 
 $html .='<iframe>';
 $html .= '<iframe src="'.get_the_permalink().'">'. get_field('location');
 $html .='</iframe>';
 $html .= '<a class="number">'.get_field('number').'</a>';
 $html .= '<address class="office-address">'.get_field('address').'</address>';

 

endwhile;

 endif;

 return $html;
 

 } 
?>