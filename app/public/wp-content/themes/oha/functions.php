<?php
function my_setup() {
  add_theme_support('post-thumbnails');
  add_theme_support('automatic-feed-links');
  add_theme_support('title-tag');
  add_theme_support('html5', array( 'comment-list', 'comment-form', 'search-form', 'gallery', 'caption', 'style', 'script' ));
}
add_action("after_setup_theme", "my_setup");

function my_script_init() {
  wp_enqueue_style("swiper-css", get_template_directory_uri() . "/css/lib/swiper-bundle.min.css", array(), filemtime(get_theme_file_path('css/lib/swiper-bundle.min.css')), "all");
  wp_enqueue_style("reset-css", get_template_directory_uri() . "/css/reset.css", array(), filemtime(get_theme_file_path('css/reset.css')), "all");
  wp_enqueue_style("my", get_template_directory_uri() . "/css/style.css", array(), filemtime(get_theme_file_path('css/style.css')), "all");
  wp_enqueue_script('swiper-js', get_template_directory_uri() . '/js/lib/swiper-bundle.min.js', array(), filemtime(get_theme_file_path('js/lib/swiper-bundle.min.js')), true);
  wp_enqueue_script("my", get_template_directory_uri() . "/js/script.js", array("jquery"), filemtime(get_theme_file_path('js/script.js')), true);
}
add_action("wp_enqueue_scripts", "my_script_init");

function my_menu_init() {
  register_nav_menus(
    array(
      'global' => 'ヘッダーメニュー',
      'drawer' => 'ドロワーメニュー'
    )
  );
}
add_action('init', 'my_menu_init');

function add_class_on_a($atts, $item, $args) {
  if (isset($args->a_class)) {
    $atts['class'] = $args->a_class;
  }
  return $atts;
}
add_filter('nav_menu_link_attributes', 'add_class_on_a', 1, 3);

function add_class_on_specific_menu_item($atts, $item, $args) {
  if ($item->ID == 14) {
      $atts['class'] = 'header_button button';
  }
  return $atts;
}
add_filter('nav_menu_link_attributes', 'add_class_on_specific_menu_item', 10, 3);

function add_class_on_menu_item_li($classes, $item, $args) {
  if ($item->ID == 15) {
      $classes[] = 'drawer-content_button';
  }
  return $classes;
}
add_filter('nav_menu_css_class', 'add_class_on_menu_item_li', 10, 3);

function add_class_on_menu_item_a($atts, $item, $args) {
  if ($item->ID == 15) {
      $atts['class'] = 'button';
  }
  return $atts;
}
add_filter('nav_menu_link_attributes', 'add_class_on_menu_item_a', 10, 3);


function create_custom_post_type() {
  register_post_type('how_to_use',
      array(
          'labels' => array(
              'name' => __('How To Use'),
              'singular_name' => __('How To Use')
          ),
          'public' => true,
          'has_archive' => true,
          'supports' => array('thumbnail', 'custom-fields'), // 'title'や'editor'を含めない
          'show_in_rest' => true, // Gutenbergエディターを使用する場合
      )
  );
}
add_action('init', 'create_custom_post_type');

function create_custom_post_type_merit() {
  register_post_type('merit',
      array(
          'labels' => array(
              'name' => __('Merits'),
              'singular_name' => __('Merit')
          ),
          'public' => true,
          'has_archive' => true,
          'supports' => array('thumbnail', 'custom-fields'), // 'title'や'editor'を含めない
          'show_in_rest' => true, // Gutenbergエディターを使用する場合
      )
  );
}
add_action('init', 'create_custom_post_type_merit');

function create_custom_post_type_compare() {
  register_post_type('compare',
      array(
          'labels' => array(
              'name' => __('Compare'),
              'singular_name' => __('Compare')
          ),
          'public' => true,
          'has_archive' => true,
          'supports' => array('title','custom-fields'),
          'show_in_rest' => true, // Gutenbergエディターを使用する場合
      )
  );
}
add_action('init', 'create_custom_post_type_compare');

function create_qa_post_type() {
  register_post_type('qa',
      array(
          'labels' => array(
              'name' => __('Q&A'),
              'singular_name' => __('Q&A')
          ),
          'public' => true,
          'has_archive' => true,
          'supports' => array('custom-fields'), // title と editor を除外
          'menu_icon' => 'dashicons-editor-help',
      )
  );
}
add_action('init', 'create_qa_post_type');

add_filter('wpcf7_autop_or_not', '__return_false');


add_filter('wpcf7_form_elements', function($content) {
  // ラジオボタンのinputにidを付与
  $content = preg_replace_callback('/<input[^>]+type=["\']?radio["\']?[^>]+name=["\']?([^"\']+)["\'][^>]*>/', function($matches) {
      // IDを生成
      $id = 'radio-' . uniqid(); // 一意のIDを生成
      return str_replace('<input', '<input id="' . $id . '"', $matches[0]);
  }, $content);

  // labelを作成
  $content = preg_replace_callback('/<span class="wpcf7-list-item-label">([^<]+)<\/span>/', function($matches) use ($content) {
      // 直前のラジオボタンのIDを取得
      preg_match('/id="([^"]+)"/', $content, $idMatches);
      $id = $idMatches[1]; // 取得したIDを使用
      return '<label for="' . $id . '">' . trim(strip_tags($matches[0])) . '</label>'; // ラベルを作成
  }, $content);

  return $content;
});




?>