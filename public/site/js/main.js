$(window).on("load", function () {
  "use strict";
  AOS.init({ offset: 150, duration: 800, easing: "ease-in-out" });
}),
  $(document).ready(function () {
    "use strict";
    $(".carousel").carousel({ pause: "none", interval: 7e3 }),
      $(".menu-btn").click(function () {
        $("aside").addClass("move");
      }),
      $("aside .icon-btn").click(function () {
        $("aside").removeClass("move");
      });
  }),
  $(window).scroll(function () {
    $(window).scrollTop() >= 100
      ? $("header").addClass("move shadow")
      : $("header").removeClass("move shadow");
  }),
  $(window).scroll(function () {
    $(window).scrollTop() >= 400
      ? $(".project_header").addClass("move")
      : $(".project_header").removeClass("move");
  });
var scrollbutton = $(".up-btn");
$(window).scroll(function () {
  $(this).scrollTop() >= 700 ? scrollbutton.show() : scrollbutton.hide();
}),
  scrollbutton.click(function () {
    $("html , body").animate({ scrollTop: 0 }, 600);
  }),
  $(document).ready(function () {
    "use strict";
    $(".scroll").click(function () {
      return (
        (o = $(this).attr("href")),
        $("html , body").animate({ scrollTop: $(o).offset().top }, "slow"),
        !1
      );
      var o;
    });
  }),
  $(window).on("load", function () {
    "use strict";
    $(".load_cont").fadeOut(function () {
      $(this).parent().fadeOut(), $("body").css({ "overflow-y": "visible" });
    });
  });
