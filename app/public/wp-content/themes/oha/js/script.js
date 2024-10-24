jQuery("#js-drawer-icon").on("click", function(e) {
  e.preventDefault();
  jQuery("#js-drawer-icon").toggleClass("is-checked");
  jQuery("#js-drawer-content").toggleClass("is-checked");
});

// const drawerIcon = document.querySelector("#js-drawer-icon");
// const drawerContent = document.querySelector("#js-drawer-content");

// drawerIcon.addEventListener("click", function(e) {
//   e.preventDefault();
//   drawerIcon.classList.toggle("is-checked");
//   drawerContent.classList.toggle("is-checked");
// });

jQuery(".js-accordion").on("click", function(e) {
  e.preventDefault();

  if (jQuery(this).parent().hasClass("is-open")){
    jQuery(this).parent().removeClass("is-open");
    jQuery(this).next().slideUp();
  } else {
    jQuery(this).parent().addClass("is-open");
    jQuery(this).next().slideDown();
  }
});


const swiper = new Swiper('#js-gallery-swiper', {
  spaceBetween: 82,
  // Optional parameters
  loop: true,

  // If we need pagination
  pagination: {
    el: '#js-gallery-pagination',
  },

  // Navigation arrows
  navigation: {
    nextEl: '#js-gallery-next',
    prevEl: '#js-gallery-prev',
  },
});

// jQueryの場合

jQuery(".js-modal-open").on("click", function(e) {
  e.preventDefault();

  jQuery("#js-about-modal")[0].showModal();
});

jQuery(".js-modal-close").on("click", function(e) {
  e.preventDefault();

  jQuery("#js-about-modal")[0].close();
});

//JavaScriptの場合

// const modalOpenItems = document.querySelectorAll(".js-modal-open");
// const modalCloseItems = document.querySelectorAll(".js-modal-close");
// const aboutModal = document.querySelector("#js-about-modal");

// modalOpenItems.forEach(function(modalOpenItem) {
//   modalOpenItem.addEventListener("click", function(e) {
//     e.preventDefault();

//     if (aboutModal) {
//       aboutModal.showModal();
//     }
//   });
// });

// modalCloseItems.forEach(function(modalCloseItem) {
//   modalCloseItem.addEventListener("click", function(e) {
//     e.preventDefault();

//     if (aboutModal) {
//       aboutModal.close();
//     }
//   });
// });

// スマホのスムーススクロール //
jQuery('#js-drawer-content a[href^="#"]').on("click", function(e) {
  jQuery("#js-drawer-icon").removeClass("is-checked");
  jQuery("#js-drawer-content").removeClass("is-checked");
});


// PCのスムーススクロール //
jQuery('a[href^="#"]').on("click", function(e) {
  const speed = 300;
  const id = jQuery(this).attr("href");
  const target = jQuery("#" == id ? "html" : id);
  const position = jQuery(target).offset().top;
  jQuery("html, body").animate(
    {
      scrollTop: position,
    },
    speed, // 移動するスピード
    "swing" // swing or linear
  )
});


// スクロールに合わせてトップへ戻るボタンを表示する

jQuery(window).on("scroll", function() {
  if (100 < jQuery(window).scrollTop()) {
    jQuery("#js-pagetop").addClass("is-show");
  } else {
    jQuery("#js-pagetop").removeClass("is-show");
  }
});

// const pageTop = document.querySelector("#js-pagetop");
// window.addEventListener("scroll", function() {
//   if (100 < this.window.scrollY) {
//     pageTop.classList.add("is-show");
//   } else {
//     pageTop.classList.remove("is-show");
//   }
// });

// スクロールに応じて要素を「フワッ」と登場させる


const targets = document.querySelectorAll('.fade-in-up'); // ターゲットを選択

const intersectionObserver = new IntersectionObserver(function(entries) {
  entries.forEach(function(entry) {
    if (entry.isIntersecting) {
      entry.target.classList.add("is-in-view"); // 画面に入ったときにクラスを追加
    }
  });
});

targets.forEach(target => intersectionObserver.observe(target)); // 各ターゲットを監視



// ラジオボタン
// document.addEventListener('DOMContentLoaded', function() {
//     // 各ラジオボタンにクラスを追加
//     const radios = document.querySelectorAll('input[name="radio-612"]');
//     radios.forEach(function(radio) {
//         radio.classList.add('form-radio_input');
//     });
// });

document.addEventListener('DOMContentLoaded', function() {
  const radios = document.querySelectorAll('input[name="radio-612"]');
  radios.forEach(function(radio, index) {
      // idを設定
      const id = 'radio-' + (index + 1);
      radio.setAttribute('id', id);

      // 次の兄弟要素（label）を取得
      const label = radio.nextElementSibling;
      if (label) {
          label.setAttribute('for', id); // labelのfor属性を設定
      }
  });
});











// チェックボックス
document.addEventListener('DOMContentLoaded', function() {
  const checkbox = document.querySelector('.form-checkbox_input');
  const icon = document.querySelector('.check-icon'); // アイコンを取得

  checkbox.addEventListener('change', function() {
    if (this.checked) {
      icon.style.opacity = '1'; // チェックされたときの不透明度
    } else {
      icon.style.opacity = '0'; // チェックが外されたときの不透明度
    }
  });
});









