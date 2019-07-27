// navbar hide and show
var zero = 0;
$(document).ready(function() {
  $(window).on("scroll", function() {
    $("nav").toggleClass("hide", $(window).scrollTop() > zero);
    zero = $(window).scrollTop();
    if (zero > 150) {
      $("nav").css("background", "#00a7e7");
    }
    if (zero < 100) {
      $("nav").css("background", "transparent");
    }
  });
});

// for google map
var map = L.map("map", {
  minZoom: 20,
  maxZoom: 10
});

L.tileLayer(
  "https://api.maptiler.com/maps/streets/{z}/{x}/{y}.png?key=d93mrAUl6SzSe17RA2t3",
  {
    attribution: "",
    crossOrigin: true
  }
).addTo(map);

L.marker([27.7000022, 85.35172222222222])
  .addTo(map)
  .bindPopup(
    "<b>Hi I am Here!</b><br><b>Sinamangal,Kathmandu,Nepal<br>44600</b>"
  )
  .openPopup();
map.setView([0, 0], 0);
// smooth scroll
$(document).ready(function() {
  var scrollLink = $(".scroll");

  // smooth scrolling
  scrollLink.click(function(e) {
    e.preventDefault();
    $("body,html").animate(
      {
        scrollTop: $(this.hash).offset().top
      },
      1000
    );
  });
});
// for responsive menu
var toggler = $(".fa-bars");
$(document).ready(function() {
  $(".fa-bars").click(function() {
    $(".fa-bars").toggleClass("active");
    $(".sidemenu").toggleClass("active");
  });
});
