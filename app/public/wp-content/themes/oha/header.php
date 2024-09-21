<!DOCTYPE html>
<html lang="ja">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="robots" content="noindex" />
    <title>OHA!</title>

    <meta name="description" content="OHA!は、朝起きたい人と朝起こされたい人がランダムにマッチングしちゃう通話アプリです。" />

    <link rel="icon" href="<?php echo get_template_directory_uri(); ?>/img/favicon.ico" />

    <meta property="og:type" content="website" />
    <meta property="og:description" content="OHA!は、朝起きたい人と朝起こされたい人がランダムにマッチングしちゃう通話アプリです。" />
    <meta property="og:type" content="website" />
    <meta property="og:url" content="https://example.com" />
    <meta property="og:image" content="/img/ogp.png" />


    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/css/lib/swiper-bundle.min.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&family=Noto+Sans+JP:wght@100..900&display=swap"
      rel="stylesheet"
    />

    <?php wp_head(); ?>
  </head>
  <body>
    <header class="header">
      <div class="header_inner">
        <h1 class="header_logo">
          <a href=""><img src="<?php echo get_template_directory_uri(); ?>/img/logo.png" alt="OHA!" /></a>
        </h1>

        <?php
          wp_nav_menu(
            array(
              'depth' => 1,
              'theme_location' => 'global',
              'container' => '',
              'menu_class' => 'header_nav',
              'a_class' => 'header_link',
            )
          );
        ?>

        <!-- <nav class="header_nav">
          <a href="#about" class="header_link">サービスについて</a>
          <a href="#how-to-use" class="header_link">使い方</a>
          <a href="#merit" class="header_link">メリット</a>
          <a href="#contact" class="header_button button">お問い合わせ</a>
        </nav> -->
        <button id="js-drawer-icon" class="header_open drawer-icon">
          <span class="drawer-icon_bar"></span>
          <span class="drawer-icon_bar"></span>
          <span class="drawer-icon_bar"></span>
        </button>
      </div>
    </header>

    <div id="js-drawer-content" class="drawer-content">

    <?php
      wp_nav_menu(
        array(
          'depth' => 1,
          'theme_location' => 'drawer',
          'container' => '',
          'menu_class' => 'drawer-content_menu',
          'a_class' => 'drawer-content_link',
        )
      );
    ?>

      <!-- <nav class="drawer-content_menu">
        <a href="#about" class="drawer-content_link">サービスについて</a>
        <a href="#how-to-use" class="drawer-content_link">使い方</a>
        <a href="#merit" class="drawer-content_link">メリット</a>
        <div class="drawer-content_button">
          <a href="#contact" class="button">お問い合わせ</a>
        </div>
      </nav> -->
    </div>