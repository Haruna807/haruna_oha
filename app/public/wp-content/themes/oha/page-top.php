<?php
/*
Template Name: トップページ
*/
?>


<?php get_header(); ?>


    <div class="mv">
      <div class="mv_inner">
        <div class="mv_content">
          <p class="mv_lead">
            <span class="mv_lead1">「めざめる」の日常</span>
            <span class="mv_lead2">もっとおもしろく。</span>
          </p>
          <p class="mv_description">
            OHA!は、朝起きたい人と<br />朝起こされたい人が<br />ランダムにマッチングしちゃう<br />通話アプリです。
          </p>
          <div class="mv_button">
            <a href="https://www.apple.com/jp/app-store/" class="button button--type2" target="_blank">アプリダウンロード</a>
          </div>
        </div>
        <div class="mv_img"><img src="<?php echo get_template_directory_uri(); ?>/img/first-view-img.png" alt="" /></div>
      </div>
    </div>

    <section class="case">
      <div class="case_inner">
        <h2 class="case_title js-in-view fade-in-up">
          導入実績</h2>
          <div class="case_items">

            <?php
              $args = array(
                  'post_type'      => 'case',
                  'posts_per_page' => 8,
                  'orderby'       => 'rand',
              );
              $query = new WP_Query($args);

              if ($query->have_posts()) :
                while ($query->have_posts()) : $query->the_post();
            ?>
            <div class="case_item">
                <?php if (has_post_thumbnail()) : ?>
                    <div class="case_item_thumbnail">
                        <?php the_post_thumbnail('medium');?>
                    </div>
                <?php endif; ?>
                <div class="case_item_excerpt"><?php the_excerpt(); ?></div>
            </div>
            <?php
              endwhile;
              wp_reset_postdata();
              else :
                echo '';
              endif;
            ?>

          </div>
      </div>
    </section>

    <section class="news">
      <div class="news_inner inner">
        <div class="news_card">
          <h2 class="news_title js-in-view fade-in-up">NEWS</h2>
          <div class="news_lists">
          <?php
                $args = array(
                    'post_type' => 'news',
                    'posts_per_page' => 3,
                    'orderby' => 'date',
                    'order' => 'DESC'
                );

                $news_query = new WP_Query($args);
                if ($news_query->have_posts()) :
                    while ($news_query->have_posts()) : $news_query->the_post(); ?>
                        <a href="<?php the_permalink(); ?>" class="news_list news-link">
                            <div class="news-link_meta">
                                <time class="news-link_date" datetime="<?php the_time('c'); ?>"><?php the_time('Y年n月j日'); ?></time>
                                <?php
                                $terms = get_the_terms(get_the_ID(), 'news_category');
                                if (!empty($terms) && !is_wp_error($terms)) :
                                  $term = $terms[0];
                                  $category_class = '';
                                    switch ($term->slug) {
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
                              <?php echo esc_html($term->name); ?>
                              </div>
                          <?php endif; ?>
                      </div>
                      <h3 class="news-link_title"><?php the_title(); ?></h3>
                    </a>
                    <?php endwhile;
                    wp_reset_postdata(); // クエリをリセット
                else : ?>
                  <p></p>
              <?php endif; ?>
          </div>
          <div class="news_link"><a href="<?php echo get_post_type_archive_link('news'); ?>
">もっとみる</a></div>
        </div>
      </div>
    </section>

    <div id="about" class="about">
      <div class="about_inner">
        <div class="about_title js-in-view fade-in-up">
          <img src="<?php echo get_template_directory_uri(); ?>/img/about-logo.png" alt="OHA" />
        </div>
        <div class="about_content">
          <div class="about_image">
            <img src="<?php echo get_template_directory_uri(); ?>/img/about-img.png" alt="" />
          </div>
          <p class="about_text">
            突然ですが、あなたは朝起きる時、<br
              class="hidden-pc"
            />誰かに起こされれば起きれる派か、<br />
            誰かを起こす予定があれば起きれる派か、<br
              class="hidden-pc"
            />どちらかというとどちらでしょうか？<br />
            朝起きるという行為は、<br
              class="hidden-pc"
            />徹夜してなければ1年に365回、<br />
            10年だと3652回、<br
              class="hidden-pc"
            />50年だと18262回やってきます。<br />
            そんなに回数があるんなら、<br
              class="hidden-pc"
            />ちょっとイベントにしてみても<br
              class="hidden-pc"
            />楽しいんじゃない？<br />
            というアイデアで誕生したのがOHA!です。<br />
            日本中の起こしたい人と起こされたい人が<br
              class="hidden-pc"
            />ランダムにマッチングして<br
              class="hidden-pc"
            />起こし起こされることで、<br />朝の日常にちょっとした刺激が生まれます。
          </p>
          <div class="about_pop">＼開発者はお坊さん？／</div>
          <div class="about_button">
            <button class="button js-modal-open">誕生ストーリーを見る</button>
          </div>
        </div>
      </div>
    </div>

    <dialog  id="js-about-modal" class="about-modal">
      <div class="about-modal_head">
        <button class="about-modal_close-icon js-modal-close"><img src="<?php echo get_template_directory_uri(); ?>/img/close-icon.png" alt="モーダルを閉じる"></button>
      </div>
      <div class="about-modal_body">
        <p>
          お坊さんの師匠は、ある日自分が寝坊して仏教の講義に遅刻してしまい、急いで作ったアプリがきっかけでした。そのアプリは、自分のスマートフォンにセットした時間になると、仏教の教えをパッと思い出すようになっていました。<br />
          お坊さんはそのアプリを見て、自分もそんなアプリが欲しいと思い、師匠に頼んで自分専用のアプリを作ってもらったのだそうです。そして、お坊さんは太郎にそのアプリを使ってもらうように勧めました。
        </p>
        <p>
          太郎は早速、そのアプリをダウンロードして設定してみました。翌朝、セットした時間になると、スマートフォンが音を立てて仏教の教えが表示されました。「一日を立派に過ごすためには、まず朝イチで身心の健康を整えることが大切です」という教えに太郎は心を動かされ、僧侶になるかもしれないと思いました。<br />
          以来、太郎は毎朝ちゃんと起きることができ、授業に遅刻することはなくなりました。そして、太郎はそのアプリの効果に感服し、友人たちにも勧めるようになっていきました。そうして、そのアプリは口コミで広まり、多くの人に利用されるようになっていったのでした。
        </p>
      </div>
      <div class="about-modal_close-button">
        <button class="button js-modal-close">閉じる</button>
      </div>
    </dialog>

    <section class="movie">
      <div class="movie_inner">
        <div class="heading js-in-view fade-in-up">
          <div class="heading__en">MOVIE</div>
          <h2 class="heading__ja">2秒で分かる！OHA!について</h2>
        </div>
        <div class="movie_iframe">
          <iframe
            width="560"
            height="315"
            src="https://www.youtube.com/embed/4XTF16CcqPc?si=HFLIynYgbZhwk8Ms"
            title="YouTube video player"
            frameborder="0"
            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
            referrerpolicy="strict-origin-when-cross-origin"
            allowfullscreen
          ></iframe>
        </div>
      </div>
    </section>

    <section id="how-to-use" class="how-to-use">
      <div class="how-to-use_inner inner">
        <div class="how-to-use_title">
          <div class="heading js-in-view fade-in-up">
            <div class="heading__en">HOW TO USE</div>
            <h2 class="heading__ja">OHA!の使い方</h2>
          </div>
        </div>
        <div class="how-to-use_boxes">
          <div class="how-to-use_box">
            <div class="how-to-use_box-title">
              誰かを起こす予定があれば<br class="hidden-pc" />起きれる派の人
              <img src="<?php echo get_template_directory_uri(); ?>/img/step1-title-img.png" alt="" />
            </div>
            <div class="how-to-use_steps">
              <div class="how-to-use_step">
                <div class="step-box">
                  <div class="step-box_head">
                    <div class="step-box_head-text">STEP</div>
                    <div class="step-box_head-number">01</div>
                  </div>
                  <div class="step-box_body">
                    <div class="step-box_image">
                      <img src="<?php echo get_template_directory_uri(); ?>/img/step1-1-img.png" alt="" />
                    </div>
                    <p class="step-box_text">
                      起こしたい時間を<br />設定します
                    </p>
                  </div>
                </div>
              </div>
              <div class="how-to-use_step">
                <div class="step-box">
                  <div class="step-box_head">
                    <div class="step-box_head-text">STEP</div>
                    <div class="step-box_head-number">02</div>
                  </div>
                  <div class="step-box_body">
                    <div class="step-box_image">
                      <img src="<?php echo get_template_directory_uri(); ?>/img/step1-2-img.png" alt="" />
                    </div>
                    <p class="step-box_text">
                      スマホを枕元に置いて<br />寝ます
                    </p>
                  </div>
                </div>
              </div>
              <div class="how-to-use_step">
                <div class="step-box">
                  <div class="step-box_head">
                    <div class="step-box_head-text">STEP</div>
                    <div class="step-box_head-number">03</div>
                  </div>
                  <div class="step-box_body">
                    <div class="step-box_image">
                      <img src="<?php echo get_template_directory_uri(); ?>/img/step1-3-img.png" alt="" />
                    </div>
                    <p class="step-box_text">
                      起こすことによって<br />起きることができます
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="how-to-use_box is-type2">
            <div class="how-to-use_box-title">
              誰かに起こされれば<br class="hidden-pc" />起きれる派の人
              <img src="<?php echo get_template_directory_uri(); ?>/img/step2-title-img.png" alt="" />
            </div>
            <div class="how-to-use_steps">
              <div class="how-to-use_step">
                <div class="step-box">
                  <div class="step-box_head">
                    <div class="step-box_head-text">STEP</div>
                    <div class="step-box_head-number">01</div>
                  </div>
                  <div class="step-box_body">
                    <div class="step-box_image">
                      <img src="<?php echo get_template_directory_uri(); ?>/img/step2-1-img.png" alt="" />
                    </div>
                    <p class="step-box_text">
                      起こされたい時間を<br />設定します
                    </p>
                  </div>
                </div>
              </div>
              <div class="how-to-use_step">
                <div class="step-box">
                  <div class="step-box_head">
                    <div class="step-box_head-text">STEP</div>
                    <div class="step-box_head-number">02</div>
                  </div>
                  <div class="step-box_body">
                    <div class="step-box_image">
                      <img src="<?php echo get_template_directory_uri(); ?>/img/step2-2-img.png" alt="" />
                    </div>
                    <p class="step-box_text">
                      スマホを枕元に置いて<br />寝ます
                    </p>
                  </div>
                </div>
              </div>
              <div class="how-to-use_step">
                <div class="step-box">
                  <div class="step-box_head">
                    <div class="step-box_head-text">STEP</div>
                    <div class="step-box_head-number">03</div>
                  </div>
                  <div class="step-box_body">
                    <div class="step-box_image">
                      <img src="<?php echo get_template_directory_uri(); ?>/img/step2-3-img.png" alt="" />
                    </div>
                    <p class="step-box_text">
                      起こされることによって<br />起きることができます
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section id="merit" class="merit">
      <div class="merit_inner inner">
        <div class="merit_title">
          <div class="heading js-in-view fade-in-up">
            <div class="heading__en">MERIT</div>
            <h2 class="heading__ja">OHA!を使うメリット</h2>
          </div>
        </div>
        <div class="merit_boxes">
          <div class="merit_box">
            <div class="merit-box">
              <div class="merit-box_content">
                <div class="merit-box_image">
                  <img src="<?php echo get_template_directory_uri(); ?>/img/merit1-img.png" alt="" />
                </div>
                <div class="merit-box_body">
                  <h3 class="merit-box_head">
                    <span class="merit-box_number">1</span>
                    <span class="merit-box_title">
                      通りすがりに猫が<br />挨拶してくれるようになる
                    </span>
                  </h3>
                  <p class="merit-box_text">
                    偶然の可能性も高いですが、OHA!を使うようになってから、やたらと猫が挨拶してくれるようになった、というお話をいただきます。とはいえ、自惚れすぎてはいけません。挨拶されたからといって一方的に話しかけ続けてしまうと気まぐれ猫ちゃんにうんざりされる上に周りの目も冷ややかです。
                  </p>
                </div>
              </div>
            </div>
          </div>
          <div class="merit_box">
            <div class="merit-box is-reverse">
              <div class="merit-box_content">
                <div class="merit-box_image">
                  <img src="<?php echo get_template_directory_uri(); ?>/img/merit2-img.png" alt="" />
                </div>
                <div class="merit-box_body">
                  <h3 class="merit-box_head">
                    <span class="merit-box_number">2</span>
                    <span class="merit-box_title">
                      商店街の福引で<br />3等のティッシュボックスが<br
                        class="hidden-pc"
                      />当たる
                    </span>
                  </h3>
                  <p class="merit-box_text">
                    OHA!を使うことで、どういった因果関係なのか、ちょっと運もよくなります。あなたの街には商店街があるかわかりませんが、もしあればチャンスです。買い物をして、福引に挑んでみましょう。3等のティッシュボックスが当たること間違いなしです。<br />もう景品のポケットティッシュで涙を拭う、なんてことはないのです。
                  </p>
                </div>
              </div>
            </div>
          </div>
          <div class="merit_box">
            <div class="merit-box">
              <div class="merit-box_content">
                <div class="merit-box_image">
                  <img src="<?php echo get_template_directory_uri(); ?>/img/merit3-img.png" alt="" />
                </div>
                <div class="merit-box_body">
                  <h3 class="merit-box_head">
                    <span class="merit-box_number">3</span>
                    <span class="merit-box_title">
                      掃除をしていたら、<br />過去に自分が隠した<br
                        class="hidden-pc"
                      />へそくりが出てきた
                    </span>
                  </h3>
                  <p class="merit-box_text">
                    自分が隠したへそくりを自分が発見するのはプラスマイナス0ですが、なんだか嬉しいものですよね。過去の自分よ、素敵なサプライズをありがとう。
                    <br />へそくりをしたことがない方にとっては申し訳ないですがこのイベントは起こりませんのでアプリ使用の再検討をおすすめします。
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
        </div>
      </div>
    </section>

    <div class="cta">
      <div class="cta_inner inner">
        <p class="cta_text">
          どうですか？<br class="hidden-pc" /><span class="inline-block"
            >早速今日から使ってみたく</span
          ><span class="inline-block">なりましたか？</span
          ><br />てかほんと使って。お願い。
        </p>
        <div class="cta_button">
          <a href="https://www.apple.com/jp/app-store/" class="button" target="_blank">今すぐダウンロード</a>
        </div>
      </div>
    </div>


    

    <div class="compare">
      <div class="compare_inner inner">
        <div class="compare_title js-in-view fade-in-up">他のサービスとの違い</div>
        <div class="compare_content">

        <?php
          if( have_rows('compare_table') ): ?>


          <table class="compare_table">
            <thead>
              <tr>
                <th></th>
                <th><img src="<?php echo get_template_directory_uri(); ?>/img/compare-logo.png" alt="OHA" /></th>
                <th>他社1</th>
                <th>他社2</th>
              </tr>
            </thead>
            <tbody>
            
            <?php
            // compare_tableグループフィールド内の各グループ（compare_1, compare_2, compare_3）をループ
            while( have_rows('compare_table') ): the_row(); ?>

            <?php
            // compare_1フィールド内のサブフィールドにアクセス
            if( get_sub_field('compare_1') ): // compare_1グループがある場合 ?>
              <tr>
                <th><?php echo esc_html( get_sub_field('compare_1')['compare_item_1'] ); ?></th>
                <td><?php echo esc_html( get_sub_field('compare_1')['our_1'] ); ?></td>
                <td><?php echo nl2br(esc_html( get_sub_field('compare_1')['other1_1'] )); ?></td>
                <td><?php echo nl2br(esc_html( get_sub_field('compare_1')['other2_1'] )); ?></td>
              </tr>
            <?php endif; ?>
              
            <?php if( get_sub_field('compare_2') ): // compare_2グループがある場合 ?>
              <tr>
                <th><?php echo esc_html( get_sub_field('compare_2')['compare_item_2'] ); ?></th>
                <td><?php echo esc_html( get_sub_field('compare_2')['our_2'] ); ?></td>
                <td><?php echo nl2br(esc_html( get_sub_field('compare_2')['other1_2'] )); ?></td>
                <td><?php echo nl2br(esc_html( get_sub_field('compare_2')['other2_2'] )); ?></td>
              </tr>
              <?php endif; ?>

              <?php if( get_sub_field('compare_3') ): // compare_3グループがある場合 ?>
              <tr>
                <th><?php echo esc_html( get_sub_field('compare_3')['compare_item_3'] ); ?></th>
                <td><?php echo esc_html( get_sub_field('compare_3')['our_3'] ); ?></td>
                <td><?php echo esc_html( get_sub_field('compare_3')['other1_3'] ); ?></td>
                <td><?php echo esc_html( get_sub_field('compare_3')['other2_3'] ); ?></td>
              </tr>

              <?php endif; ?>
              <?php endwhile; ?>
              <?php else: ?>
                <p></p>
              <?php endif; ?>
            <?php wp_reset_postdata(); ?>
            </tbody>
          </table>
        </div>
        <div class="compare_attention">横にスクロールできます</div>
      </div>
    </div>

    <?php
      $args = array(
          'post_type'      => 'qa',
          'posts_per_page' => -1,
      );

      $query = new WP_Query($args);
    ?>


    <section class="qa">
      <div class="qa_inner inner">
        <div class="qa_titile">
          <div class="heading js-in-view fade-in-up">
            <div class="heading__en">Q&A</div>
            <h2 class="heading__ja">よくあるご質問</h2>
          </div>
        </div>
        <div class="qa_boxes">
        <?php if ($query->have_posts()) : ?>
            <?php
              $first = true;
              while ($query->have_posts()) : $query->the_post();
                  $question = get_field('question');
                  $answer = get_field('answer');
                ?>

          <div class="qa_box qa-box <?php echo $first ? 'is-open' : ''; ?>">
            <button type="button" class="qa-box_head js-accordion">
              <span class="qa-box_head-icon">Q</span>
              <span class="qa-box_head-text"
                ><?php echo esc_html($question); ?></span
              >
            </button>
            <div class="qa-box_body" style="<?php echo $first ? 'display: block;' : 'display: none;'; ?>">
              <div class="qa-box_a">
                <span class="qa-box_a-icon">A</span>
                <span class="qa-box_a-text"><?php echo esc_html($answer); ?></span>
              </div>
            </div>
          </div>
          <?php $first = false;
            endwhile; ?>
        <?php else: ?>
          <p></p>
        <?php endif; ?>
      <?php wp_reset_postdata(); ?>
        </div>
      </div>
    </section>

    <section class="gallery">
      <div class="gallery_inner inner">
        <div class="gallery_title">
          <div class="heading js-in-view fade-in-up">
            <div class="heading__en">GALLERY</div>
            <h2 class="heading__ja">ギャラリー</h2>
          </div>
        </div>
        <div class="gallery_slider">
          <!-- Slider main container -->
          <div id="js-gallery-swiper" class="swiper gallery_swiper">
            <!-- Additional required wrapper -->
            <div class="swiper-wrapper">
              <?php
                $args = array(
                    'post_type'      => 'gallery',
                    'posts_per_page' => -1,
                );
              
                $query = new WP_Query($args);
              
                if ($query->have_posts()) :
                    while ($query->have_posts()) : $query->the_post();
                        $image = get_field('gallery_image');
                        $text = get_field('gallery_text');
              ?>
                  <div class="swiper-slide gallery_slide">
                      <div class="gallery_card">
                          <div class="gallery_card_image">
                              <?php if ($image) : ?>
                                  <img src="<?php echo esc_url($image); ?>" alt="<?php echo esc_attr($text); ?>">
                              <?php endif; ?>
                          </div>
                          <p class="gallery_card_text"><?php echo esc_html($text); ?></p>
                      </div>
                  </div>
              <?php
                  endwhile;
              else :
              ?>
                  <p></p>
              <?php
              endif;
              wp_reset_postdata();
              ?>
            </div>
            <!-- If we need pagination -->
            <div id="js-gallery-pagination" class="swiper-pagination gallery_pagination"></div>

            <!-- If we need navigation buttons -->
            <div id="js-gallery-prev" class="swiper-button-prev gallery_prev"></div>
            <div id="js-gallery-next" class="swiper-button-next gallery_next"></div>
          </div>
        </div>
      </div>
    </section>


    <section id="contact" class="contact">
      <div class="contact_inner inner">
        <div class="contact_box">
          <div class="contact_title">
            <div class="heading js-in-view fade-in-up">
              <div class="heading__en">CONTACT</div>
              <h2 class="heading__ja">お問い合わせ</h2>
            </div>
          </div>
          <?php echo do_shortcode('[contact-form-7 id="95ef2bd" title="お問い合わせ"]'); ?>
        </div>
      </div>
    </section>

<?php get_footer(); ?>
