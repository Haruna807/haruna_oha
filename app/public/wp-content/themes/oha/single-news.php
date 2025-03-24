<?php get_header(); ?>

<?php if (have_posts()) : ?>
  <?php while(have_posts()) : ?>
    <?php the_post(); ?>

<div class="page_inner">
    <div class="page_header">
    <?php $genre_term = get_the_terms(get_the_ID(), 'news_category')[0] ?>
      <div class="page_label"><a href="<?php echo get_term_link($genre_term, 'news_category') ?>"><?php echo $genre_term -> name ?></a></div>
        <h1 class="page_title"><?php the_title(); ?></h1>
      </div>

    <div class="page_contents">
      <?php the_content(); ?>
    </div>

    <div class="page_button">
      <a href="<?php echo get_post_type_archive_link('news') ?>" class="page_btn button">一覧に戻る</a>
    </div>
</div>



<?php endwhile; ?>
<?php endif; ?>

<?php get_footer(); ?>