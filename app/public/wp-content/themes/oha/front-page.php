<?php get_header(); ?>

    <div class="mv">
      <div class="mv_inner">
        <div class="mv_content">
          <p class="mv_lead">
            <span class="mv_lead1">「めざめる」の日常を</span>
            <span class="mv_lead2">もっとおもしろく。</span>
          </p>
          <p class="mv_description">
            OHA!は、朝起きたい人と<br />朝起こされたい人が<br />ランダムにマッチングしちゃう<br />通話アプリです。
          </p>
          <div class="mv_button">
            <a href="#contact" class="button button--type2">アプリダウンロード</a>
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
                <h3 class="case_item_title"><?php the_title(); ?></h3>
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
              <?php if (have_posts()) : ?>
                <?php while(have_posts()) : ?>
                  <?php the_post(); ?>
                    <a href="" class="news_list news-link">
                      <div class="news-link_meta">
                        <time class="news-link_date" datetime="<?php the_time('c'); ?>"><?php the_time('Y年n月j日'); ?></time>
                          <?php
                            $categories = get_the_category();
                            if ( ! empty($categories) ) :
                              $category = $categories[0];
                            $category_class = '';
                              switch ( $category->slug ) {
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
                              };
                            ?>
                              <div class="news-link_label <?php echo esc_attr($category_class); ?>">
                              <?php echo esc_html($category->name); ?>
                              </div>
                          <?php endif; ?>
                      </div>
                      <h3 class="news-link_title"><?php the_title(); ?></h3>
                    </a>
                <?php endwhile; ?>
              <?php endif; ?>
          </div>
          <div class="news_link"><a href="">もっとみる</a></div>
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
    
    <?php
      // '誰かを起こす' タクソノミーの投稿を取得
      $args_wake_up = array(
          'post_type' => 'how_to_use',
          'tax_query' => array(
              array(
                  'taxonomy' => 'how_to_use', // タクソノミーのスラッグ
                  'field'    => 'slug',
                  'terms'    => 'type1', // タームのスラッグ（例: 'type1'）
              ),
          ),
          'posts_per_page' => -1 // すべての投稿を取得
      );
      $query_wake_up = new WP_Query($args_wake_up);

      // '誰かに起こされる' タクソノミーの投稿を取得
      $args_woken_up = array(
          'post_type' => 'how_to_use',
          'tax_query' => array(
              array(
                  'taxonomy' => 'how_to_use', // タクソノミーのスラッグ
                  'field'    => 'slug',
                  'terms'    => 'type2', // タームのスラッグ（例: 'type2'）
              ),
          ),
          'posts_per_page' => -1 // すべての投稿を取得
      );
      $query_woken_up = new WP_Query($args_woken_up);
    ?>

    <section id="how-to-use" class="how-to-use">
      <div class="how-to-use_inner inner">
        <div class="how-to-use_title">
          <div class="heading js-in-view fade-in-up">
            <div class="heading__en">HOW TO USE</div>
            <h2 class="heading__ja">OHA!の使い方</h2>
          </div>
        </div>
        <div class="how-to-use_boxes">

        <?php
        $args_wake_up = array(
            'post_type' => 'how_to_use',
            'tax_query' => array(
                array(
                    'taxonomy' => 'how_to_use', // タクソノミーのスラッグ
                    'field'    => 'slug',
                    'terms'    => 'type1', // タームのスラッグ
                ),
            ),
            'posts_per_page' => 3, // 最大3件の投稿を取得
            'orderby' => 'meta_value_num', // メタフィールドでの並び替えを指定
            'meta_key' => 'step_number', // 並び替えの基準となるカスタムフィールド
            'order' => 'ASC' // 昇順で並び替え
        );
        $query_wake_up = new WP_Query($args_wake_up);
      ?>

          <div class="how-to-use_box">
            <div class="how-to-use_box-title">
              誰かを起こす予定があれば<br class="hidden-pc" />起きれる派の人
              <img src="<?php echo get_template_directory_uri(); ?>/img/step1-title-img.png" alt="" />
            </div>
            <div class="how-to-use_steps">
            <?php if ($query_wake_up->have_posts()) : ?>
              <?php while ($query_wake_up->have_posts()) : $query_wake_up->the_post(); ?>
              <div class="how-to-use_step">
                <div class="step-box">
                  <div class="step-box_head">
                    <div class="step-box_head-text">STEP</div>
                    <div class="step-box_head-number"><?php echo get_field('step_number'); ?></div>
                  </div>
                  <div class="step-box_body">
                    <div class="step-box_image">
                    <?php
                      // カスタムフィールドから画像の URL を取得
                      $step_image_url = get_field('step-image');
                      // 画像の URL が取得できた場合
                      if ($step_image_url) {
                          ?>
                          <img src="<?php echo esc_url($step_image_url); ?>" alt="Step Image" />
                          <?php
                      } else {
                          echo '<p>画像が設定されていません。</p>';
                      }
                      ?>
                    </div>
                    <p class="step-box_text">
                      <?php echo get_field('step_text'); ?>
                    </p>
                  </div>
                </div>
              </div>
              <?php endwhile; ?>
            <?php wp_reset_postdata(); ?>
          <?php endif; ?>
          </div>
        </div>

          <?php
            $args_wake_up = array(
            'post_type' => 'how_to_use',
            'tax_query' => array(
                array(
                    'taxonomy' => 'how_to_use', // タクソノミーのスラッグ
                    'field'    => 'slug',
                    'terms'    => 'type2', // タームのスラッグ
                ),
            ),
            'posts_per_page' => 3, // 最大3件の投稿を取得
            'orderby' => 'meta_value_num', // メタフィールドでの並び替えを指定
            'meta_key' => 'step_number', // 並び替えの基準となるカスタムフィールド
            'order' => 'ASC' // 昇順で並び替え
            );
            $query_wake_up = new WP_Query($args_wake_up);
          ?>
          <div class="how-to-use_box is-type2">
            <div class="how-to-use_box-title">
              誰かに起こされれば<br class="hidden-pc" />起きれる派の人
              <img src="<?php echo get_template_directory_uri(); ?>/img/step2-title-img.png" alt="" />
            </div>
            <div class="how-to-use_steps">
            <?php if ($query_wake_up->have_posts()) : ?>
              <?php while ($query_wake_up->have_posts()) : $query_wake_up->the_post(); ?>
              <div class="how-to-use_step">
                <div class="step-box">
                  <div class="step-box_head">
                    <div class="step-box_head-text">STEP</div>
                    <div class="step-box_head-number"><?php echo get_field('step_number'); ?></div>
                  </div>
                  <div class="step-box_body">
                    <div class="step-box_image">
                    <?php
                      // カスタムフィールドから画像の URL を取得
                      $step_image_url = get_field('step-image');
                      // 画像の URL が取得できた場合
                      if ($step_image_url) {
                          ?>
                          <img src="<?php echo esc_url($step_image_url); ?>" alt="Step Image" />
                          <?php
                      } else {
                          echo '<p>画像が設定されていません。</p>';
                      }
                      ?>
                    </div>
                    <p class="step-box_text">
                    <?php echo get_field('step_text'); ?>
                    </p>
                  </div>
                </div>
              </div>
              <?php endwhile; ?>
              <?php wp_reset_postdata(); ?>
            <?php endif; ?>
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

        <?php
          $args = array(
              'post_type'      => 'merit', // カスタム投稿タイプが「merit」と仮定
              'posts_per_page' => -1,      // すべての投稿を取得
          );

          $query = new WP_Query($args);
        ?>

        <div class="merit_boxes">
        <?php if ($query->have_posts()) : ?>
          <?php while ($query->have_posts()) : $query->the_post(); ?>

          <?php
            // カスタムフィールド 'merit_reverse' の値を取得
            $merit_reverse = get_field('merit_reverse');

            // クラスの初期設定
            $class = 'merit-box';

            // 'merit_reverse' が true の場合に 'is-reverse' クラスを追加
            if ($merit_reverse) {
                $class .= ' is-reverse';
            }
          ?>

          <div class="merit_box">
            <div class="<?php echo esc_attr($class); ?>">
              <div class="merit-box_content">
                <div class="merit-box_image">
                  <?php
                    $image_url = get_field('merit_image');
                    if ($image_url) :
                  ?>
                    <img src="<?php echo esc_url($image_url); ?>" alt="" />
                  <?php endif; ?>
                </div>
                <div class="merit-box_body">
                  <h3 class="merit-box_head">
                    <span class="merit-box_number"><?php echo get_field('merit_number'); ?></span>
                    <span class="merit-box_title">
                      <?php echo get_field('merit_title'); ?>
                    </span>
                  </h3>
                  <p class="merit-box_text">
                    <?php echo get_field('merit_text'); ?>
                  </p>
                </div>
              </div>
            </div>
          </div>
          <?php endwhile; ?>
          <?php endif; ?>
        <?php wp_reset_postdata(); ?>
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
          <a href="#contact" class="button">今すぐダウンロード</a>
        </div>
      </div>
    </div>


    

    <div class="compare">
      <div class="compare_inner inner">
        <div class="compare_title js-in-view fade-in-up">他のサービスとの違い</div>
        <div class="compare_content">
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
              <tr>
                <th>仲介手数料</th>
                <td><?php echo get_field('fee_oha'); ?></td>
                <td><?php echo get_field('fee_1'); ?></td>
                <td><?php echo get_field('fee_2'); ?></td>
              </tr>
              <tr>
                <th>登録料</th>
                <td><?php echo get_field('registration_fee_oha'); ?></td>
                <td><?php echo get_field('registration_fee_1'); ?></td>
                <td><?php echo get_field('registration_fee_2'); ?></td>
              </tr>
              <tr>
                <th>年間皆勤賞特典</th>
                <td><?php echo get_field('annual_award_oha'); ?></td>
                <td><?php echo get_field('annual_award_1'); ?></td>
                <td><?php echo get_field('annual_award_2'); ?></td>
              </tr>
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
            <?php  $first = true;
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
            <!-- <?php
              $args = array(
                  'post_type'      => 'gallery',
                  'posts_per_page' => -1,
              );

              $query = new WP_Query($args);

              if ($query->have_posts()) :
                  while ($query->have_posts()) : $query->the_post();
                      $image = get_field('gallery_image');
                      $text = get_field('gallery_text');
            ?> -->

              <!-- Slides -->
              <div class="swiper-slide gallery_slide">
                <div class="gallery_card">
                  <div class="gallery_card_image">
                    <img src="<?php echo get_template_directory_uri(); ?>/img/gallery-1.png" alt="">

                  <!-- <?php if ($image) : ?>
                      <img src="<?php echo esc_url($image['url']); ?>" alt="<?php echo esc_attr($image['alt']); ?>">
                  <?php endif; ?> -->
                  
                  </div>
                  <p class="gallery_card_text">
                    <!-- <?php echo esc_html($text); ?> -->
                    最高な海。を拝んでいる私最高...
                  </p>
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
              <div class="swiper-slide gallery_slide">
                <div class="gallery_card">
                  <div class="gallery_card_image"><img src="<?php echo get_template_directory_uri(); ?>/img/gallery-2.png" alt=""></div>
                  <p class="gallery_card_text">モーニングは一番のり。今日も私えらい。</p>
                </div>
              </div>
              <div class="swiper-slide gallery_slide">
                <div class="gallery_card">
                  <div class="gallery_card_image"><img src="<?php echo get_template_directory_uri(); ?>/img/gallery-3.png" alt=""></div>
                  <p class="gallery_card_text">風車のある公園ヨガ。みんな私に釘付け。</p>
                </div>
              </div>
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
          <form class="contact_form">
            <div class="contact_fields">
              <div class="contact_field">
                <div class="form-field">
                  <div class="form-field_head">
                    <label for="your-name" class="form-field_label"
                      >お名前</label
                    >
                    <span class="form-field_tag">必須</span>
                  </div>
                  <div class="form-field_item">
                    <input
                      class="form-text"
                      type="text"
                      name="your-name"
                      id="your-name"
                      placeholder="田中 おは次郎"
                    />
                  </div>
                </div>
              </div>
              <div class="contact_field">
                <div class="form-field">
                  <div class="form-field_head">
                    <label for="your-email" class="form-field_label"
                      >メールアドレス</label
                    >
                    <span class="form-field_tag">必須</span>
                  </div>
                  <div class="form-field_item">
                    <input
                      class="form-text"
                      type="email"
                      name="your-email"
                      id="your-email"
                      placeholder="info@oha.com"
                    />
                  </div>
                </div>
              </div>
              <div class="contact_field">
                <div class="form-field">
                  <div class="form-field_head">
                    <div class="form-field_label">お問い合わせ項目</div>
                    <span class="form-field_tag">必須</span>
                  </div>
                  <div class="form-field_item">
                    <div class="form-field_radios">
                      <label class="form-field_radio form-radio">
                        <input
                          class="form-radio_input"
                          type="radio"
                          name="your-name"
                        />
                        <span class="form-radio_text">アプリの質問</span>
                      </label>
                      <label class="form-field_radio form-radio">
                        <input
                          class="form-radio_input"
                          type="radio"
                          name="your-name"
                        />
                        <span class="form-radio_text">取材の依頼</span>
                      </label>
                      <label class="form-field_radio form-radio">
                        <input
                          class="form-radio_input"
                          type="radio"
                          name="your-name"
                        />
                        <span class="form-radio_text">その他</span>
                      </label>
                    </div>
                  </div>
                </div>
              </div>
              <div class="contact_field">
                <div class="form-field">
                  <div class="form-field_head">
                    <label for="your-age" class="form-field_label">年代</label>
                    <span class="form-field_tag is-option">任意</span>
                  </div>
                  <div class="form-field_item">
                    <select name="your-age" id="your-age" class="form-select">
                      <option value="">選択してください</option>
                      <option value="">10代</option>
                      <option value="">20代</option>
                      <option value="">30代</option>
                      <option value="">40代</option>
                      <option value="">50代</option>
                      <option value="">60代</option>
                      <option value="">70代</option>
                      <option value="">80代</option>
                    </select>
                  </div>
                </div>
              </div>
              <div class="contact_field">
                <div class="form-field">
                  <div class="form-field_head">
                    <label for="your-message" class="form-field_label"
                      >お問い合わせ内容</label
                    >
                    <span class="form-field_tag">必須</span>
                  </div>
                  <div class="form-field_item">
                    <textarea
                      name="your-message"
                      id="your-message"
                      class="form-textarea"
                      cols="30"
                      rows="10"
                      placeholder="ここに文章を入力してくださいここに文章を入力してください"
                    ></textarea>
                  </div>
                </div>
              </div>
            </div>
            <div class="contact_privacy">
              <label class="form-checkbox">
                <input
                  type="checkbox"
                  name="your-privacy"
                  class="form-checkbox_input"
                />
                <span class="form-checkbox_text">
                  <a href="" target="_blank">プライバシーポリシー</a
                  >に同意する</span
                >
              </label>
            </div>
            <div class="contact_button">
              <input type="submit" value="送信する" class="button" />
            </div>
          </form>
        </div>
      </div>
    </section>

<?php get_footer(); ?>
