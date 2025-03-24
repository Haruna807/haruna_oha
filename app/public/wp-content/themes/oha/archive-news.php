<?php get_header(); ?>

<div class="archive">
  <div class="archive_inner">
    <h2 class="news_title js-in-view fade-in-up">NEWS</h2>

    <div class="archive_nav">
      <div class="archive_nav_link"><a class="news-link_label is-all is-archive is-active" href="<?php echo get_post_type_archive_link('news') ?>">すべて</a></div>
      <?php $genre_terms = get_terms('news_category', array('hide_empty' => false)); ?>
      <?php foreach($genre_terms as $genre_term) :
        $term_slug = esc_attr($genre_term->slug); // タクソノミーのスラッグを取得
        $category_class = '';
    
        switch ($term_slug) {
          case 'news':
            $category_class = 'is-news';
            break;
          case 'columns':
            $category_class = 'is-column';
            break;
          case 'events':
            $category_class = 'is-event';
            break;
          default:
            $category_class = 'is-default';
            break;
        }
      ?>
        <div class="archive_nav_link"><a class="news-link_label <?php echo esc_attr($category_class); ?> is-archive" href="<?php echo get_term_link($genre_term, 'news_category') ?>"><?php echo $genre_term -> name ?></a></div>
      <?php endforeach; ?>
    </div>
    <div class="archive_content">
      <?php
      // 投稿タイプ 'post' のアーカイブページを表示
      if (have_posts()) :
        while (have_posts()) : the_post(); ?>
          <a href="<?php the_permalink(); ?>" class="news_list news-link">
            <div class="news-link_meta">
              <time class="news-link_date" datetime="<?php the_time('c'); ?>"><?php the_time('Y年n月j日'); ?></time>
              <?php
              // カテゴリーの取得とクラス付け
              $categories = get_the_terms(get_the_ID(), 'news_category');

              if (!empty($categories) && !is_wp_error($categories)) :
                $category = reset($categories); // 最初のカテゴリーを取得
                $category_class = '';
                switch ($category->slug) {
                  case 'news':
                    $category_class = 'is-news';
                    break;
                  case 'columns':
                    $category_class = 'is-column';
                    break;
                  case 'events':
                    $category_class = 'is-event';
                    break;
                  default:
                    $category_class = 'is-default';
                    break;
                }
                ?>
                <div class="news-link_label <?php echo esc_attr($category_class); ?>">
                  <?php echo esc_html($category->name); ?>
                </div>
              <?php endif; ?>
            </div>
            <h3 class="news-link_title"><?php the_title(); ?></h3>
          </a>
        <?php endwhile;
        the_posts_pagination(array(
          'prev_text' => '前へ',
          'next_text' => '次へ',
        ));
      else : ?>
        <p>投稿がありません。</p>
      <?php endif; ?>
    </div>
  </div>
</div>


<?php get_footer(); ?>