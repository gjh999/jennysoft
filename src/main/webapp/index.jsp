<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Finder | Directory & Listings Bootstrap Template</title>
    <!-- SEO Meta Tags-->
    <meta name="description" content="Finder - Directory &amp; Listings Bootstrap Template">
    <meta name="keywords" content="bootstrap, business, directory, listings, e-commerce, car dealer, city guide, real estate, job board, user account, multipurpose, ui kit, html5, css3, javascript, gallery, slider, touch">
    <meta name="author" content="Createx Studio">
    <!-- Viewport-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon and Touch Icons-->
    <link rel="apple-touch-icon" sizes="180x180" href="apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="favicon-16x16.png">
    <link rel="manifest" href="site.webmanifest">
    <link rel="mask-icon" color="#5bbad5" href="safari-pinned-tab.svg">
    <meta name="msapplication-TileColor" content="#766df4">
    <meta name="theme-color" content="#ffffff">
    <!-- Page loading styles-->
    <style>
      .page-loading {
        position: fixed;
        top: 0;
        right: 0;
        bottom: 0;
        left: 0;
        width: 100%;
        height: 100%;
        -webkit-transition: all .4s .2s ease-in-out;
        transition: all .4s .2s ease-in-out;
        background-color: #fff;
        opacity: 0;
        visibility: hidden;
        z-index: 9999;
      }
      .page-loading.active {
        opacity: 1;
        visibility: visible;
      }
      .page-loading-inner {
        position: absolute;
        top: 50%;
        left: 0;
        width: 100%;
        text-align: center;
        -webkit-transform: translateY(-50%);
        transform: translateY(-50%);
        -webkit-transition: opacity .2s ease-in-out;
        transition: opacity .2s ease-in-out;
        opacity: 0;
      }
      .page-loading.active > .page-loading-inner {
        opacity: 1;
      }
      .page-loading-inner > span {
        display: block;
        font-size: 1rem;
        font-weight: normal;
        color: #666276;;
      }
      .page-spinner {
        display: inline-block;
        width: 2.75rem;
        height: 2.75rem;
        margin-bottom: .75rem;
        vertical-align: text-bottom;
        border: .15em solid #bbb7c5;
        border-right-color: transparent;
        border-radius: 50%;
        -webkit-animation: spinner .75s linear infinite;
        animation: spinner .75s linear infinite;
      }
      @-webkit-keyframes spinner {
        100% {
          -webkit-transform: rotate(360deg);
          transform: rotate(360deg);
        }
      }
      @keyframes spinner {
        100% {
          -webkit-transform: rotate(360deg);
          transform: rotate(360deg);
        }
      }
      
    </style>
    <!-- Page loading scripts-->
    <script>
      (function () {
        window.onload = function () {
          var preloader = document.querySelector('.page-loading');
          preloader.classList.remove('active');
          setTimeout(function () {
            preloader.remove();
          }, 2000);
        };
      })();
      
    </script>
    <!-- Vendor Styles-->
    <link rel="stylesheet" media="screen" href="vendor/simplebar/dist/simplebar.min.css"/>
    <!-- Main Theme Styles + Bootstrap-->
    <link rel="stylesheet" media="screen" href="css/theme.min.css">
  </head>
  <!-- Body-->
  <body>
    <!-- Page loading spinner-->
    <div class="page-loading active">
      <div class="page-loading-inner">
        <div class="page-spinner"></div><span>Loading...</span>
      </div>
    </div>
    <main class="page-wrapper">
      <!-- Page content-->
      <!-- Navbar (Header)-->
      <header class="navbar navbar-expand-md navbar-light fixed-top">
        <div class="container"><a class="navbar-brand me-2 me-xl-4" href="#"><img class="d-block" src="img/logo/logo-dark.svg" width="116" alt="Finder"></a>
          <button class="navbar-toggler ms-auto" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button><a class="btn btn-primary btn-sm rounded-pill ms-2 order-md-3" href="https://themes.getbootstrap.com/product/finder-directory-listings-template-ui-kit/" target="_blank" rel="noopener"><i class="fi-cart fs-base me-2"></i>Buy Finder</a>
          <div class="collapse navbar-collapse order-md-2" id="navbarNav">
            <ul class="navbar-nav">
              <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Demos</a>
                <ul class="dropdown-menu">
                  <li><a class="dropdown-item" href="real-estate-home-v1.html"><i class="fi-building fs-base opacity-50 me-2"></i>Real Estate Demo</a></li>
                  <li class="dropdown-divider"></li>
                  <li><a class="dropdown-item" href="car-finder-home.html"><i class="fi-car fs-base opacity-50 me-2"></i>Car Finder Demo</a></li>
                  <li class="dropdown-divider"></li>
                  <li><a class="dropdown-item" href="job-board-home-v1.html"><i class="fi-briefcase fs-base opacity-50 me-2"></i>Job Board Demo</a></li>
                  <li class="dropdown-divider"></li>
                  <li><a class="dropdown-item" href="city-guide-home-v1.html"><i class="fi-map-pin fs-base opacity-50 me-2"></i>City Guide Demo</a></li>
                </ul>
              </li>
              <li class="nav-item"><a class="nav-link" href="components/typography.html">UI Kit (Components)</a></li>
              <li class="nav-item"><a class="nav-link" href="docs/dev-setup.html">Documentation</a></li>
            </ul>
          </div>
        </div>
      </header>
      <!-- Hero (Demos)-->
      <section class="position-relative overflow-hidden py-5 mb-5">
        <div class="d-none d-xl-block position-absolute top-0 start-0 h-100 bg-secondary" style="width: 67%; border-bottom-right-radius: .75rem;"></div>
        <div class="d-xl-none position-absolute top-0 start-0 w-100 h-100 bg-secondary"></div>
        <div class="container content-overlay mt-4 mb-2 mt-lg-5 mb-lg-4 pt-5 pb-md-2">
          <h1 class="display-4 text-center text-md-start">Find your ideal</h1>
          <div class="row">
            <div class="d-none d-md-block col-md-2 pt-4 mt-4"><img src="img/intro/swirly-arrow.svg" width="120" alt="Arrow"></div>
            <div class="col-md-10 d-md-flex mt-md-n4">
              <!-- Real Estate-->
              <div class="d-block hover-img-scale position-relative zindex-5 mt-md-5 mx-auto me-md-n5 mb-4 mb-md-0" style="max-width: 633px;">
                <div class="pt-md-5 mt-4 me-md-n5">
                  <h2 class="h4 mb-2 pb-1 ms-md-3"><a class="nav-link stretched-link d-flex align-items-center justify-content-center justify-content-md-start" href="real-estate-home-v1.html"><i class="fi-building text-primary me-2 pe-1"></i><span>Property</span></a></h2>
                  <div class="position-relative zindex-0"><img class="position-relative zindex-5" src="img/intro/demos/real-estate.png" alt="Real Estate Demo">
                    <div class="d-none d-md-block position-absolute zindex-1" style="top: 15px; left: 20px; width: calc(100% - 40px); height: calc(100% - 50px); box-shadow: 33px 26px 85px rgba(0, 0, 0, .14);"></div>
                  </div>
                </div>
              </div>
              <!-- Job Board-->
              <div class="d-block hover-img-scale position-relative mt-md-n5 mx-auto me-md-n3" style="max-width: 550px;">
                <h2 class="h4 ms-md-3"><a class="nav-link stretched-link d-flex align-items-center justify-content-center justify-content-md-start" href="job-board-home-v1.html"><i class="fi-briefcase text-primary me-2 pe-1"></i><span>Job</span></a></h2><img src="img/intro/demos/job-board.png" alt="Job Board Demo">
              </div>
            </div>
            <div class="col-md-12 d-md-flex pt-2 pt-md-0 mt-md-n5">
              <!-- City Guide-->
              <div class="d-block hover-img-scale position-relative my-4 mt-md-5 mb-md-0 mx-auto ms-md-0 me-md-3" style="max-width: 550px;">
                <h2 class="h4 ms-md-3"><a class="nav-link stretched-link d-flex align-items-center justify-content-center justify-content-md-start" href="city-guide-home-v1.html"><i class="fi-map-pin text-primary me-2 pe-1"></i><span>City place</span></a></h2><img src="img/intro/demos/city-guide.png" alt="City Guide Demo">
              </div>
              <!-- Car Finder-->
              <div class="d-block hover-img-scale position-relative mt-md-n5 mx-auto me-md-n3" style="max-width: 636px;">
                <div class="d-flex flex-column">
                  <h2 class="h4 order-md-2 mb-4 mb-md-0 mt-md-4"><a class="nav-link stretched-link d-flex align-items-center justify-content-center justify-content-md-start" href="car-finder-home.html"><i class="fi-car text-primary me-2 pe-1"></i><span>Car</span></a></h2><img class="d-block order-md-1 mt-md-n2" src="img/intro/demos/car-finder.png" alt="Car Finder Demo">
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
      <!-- Features-->
      <section class="container pt-md-4 pt-xl-5 pb-lg-3 pb-xl-5">
        <div class="row mb-5">
          <div class="col-lg-3">
            <h2 class="py-2 pb-md-3 pb-lg-4">Finder feature highlights</h2><img class="d-none d-lg-block" src="img/intro/turn-right-arrow.svg" width="80" alt="Arrow">
          </div>
          <div class="col-lg-9">
            <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 gy-1 gy-md-3 gx-3 gx-md-4">
              <div class="col">
                <div class="card card-body card-hover h-100 border-0 bg-transparent"><img class="d-block mb-3" src="img/intro/features/bootstrap.png" width="56" alt="Bootstrap logo">
                  <h3 class="h6">Built with Bootstrap 5</h3>
                  <p class="fs-sm mb-0">Finder isÂ the powerful front-end solution based onÂ Bootstrap 5Â â the worldâsÂ most popular responsive, mobile-first front-end component library.</p>
                </div>
              </div>
              <div class="col">
                <div class="card card-body card-hover h-100 border-0 bg-transparent"><img class="d-block mb-3" src="img/intro/features/gulp.png" width="56" alt="Gulp logo">
                  <h3 class="h6">Kick-start your development</h3>
                  <p class="fs-sm mb-0">Start your development process fast and easy with Node.jsÂ and Gulp setup. Configuration files are included inÂ download package. Full tasks automation.</p>
                </div>
              </div>
              <div class="col">
                <div class="card card-body card-hover h-100 border-0 bg-transparent"><img class="d-block mb-3" src="img/intro/features/sass.png" width="56" alt="Sass logo">
                  <h3 class="h6">Easy to customize with Sass</h3>
                  <p class="fs-sm mb-0">Finder isÂ built using Sass. Easily change colors, typography and much more. ItÂ isÂ the most mature, stable, and powerful CSS extension language inÂ the world.</p>
                </div>
              </div>
              <div class="col">
                <div class="card card-body card-hover h-100 border-0 bg-transparent"><img class="d-block mb-3" src="img/intro/features/pug.png" width="56" alt="Pug logo">
                  <h3 class="h6">Pug - HTML templating</h3>
                  <p class="fs-sm mb-0">No need to write huge amount of HTML, if you donât want to. Pug provides features not available in plain HTML like variables, includes, mixins, functions and other.</p>
                </div>
              </div>
              <div class="col">
                <div class="card card-body card-hover h-100 border-0 bg-transparent"><img class="d-block mb-3" src="img/intro/features/components.png" width="56" alt="Components icon">
                  <h3 class="h6">50+ flexible components</h3>
                  <p class="fs-sm mb-0">Besides styling all default Bootstrap 5 components Finder introduces lots ofÂ new flexible, customizable and reusable elements you can use across the website.</p>
                </div>
              </div>
              <div class="col">
                <div class="card card-body card-hover h-100 border-0 bg-transparent"><img class="d-block mb-3" src="img/intro/features/mobile.png" width="56" alt="Mobile icon">
                  <h3 class="h6">Mobile friendly interface</h3>
                  <p class="fs-sm mb-0">It's not a surprise that nowadays over 60% of users surf the inernet using their mobile devices. Finder is 100% responsive and optimized for small touch screens.</p>
                </div>
              </div>
              <div class="col">
                <div class="card card-body card-hover h-100 border-0 bg-transparent"><img class="d-block mb-3" src="img/intro/features/touch.png" width="56" alt="Touch icon">
                  <h3 class="h6">Touch-enabled sliders</h3>
                  <p class="fs-sm mb-0">In the era of touch screens it is important to ensure great user experience on handheld devices, especially when it comes to such frequently used component as slider.</p>
                </div>
              </div>
              <div class="col">
                <div class="card card-body card-hover h-100 border-0 bg-transparent"><img class="d-block mb-3" src="img/intro/features/google-fonts.png" width="56" alt="Google Fonts logo">
                  <h3 class="h6">Google fonts</h3>
                  <p class="fs-sm mb-0">Finder uses Google font (Noto Sans) which is free, fast to load and of very high quality. Currently Google fonts library includes 1000+ font families to choose from.</p>
                </div>
              </div>
              <div class="col">
                <div class="card card-body card-hover h-100 border-0 bg-transparent"><img class="d-block mb-3" src="img/intro/features/vector.png" width="56" alt="Vector icon">
                  <h3 class="h6">Vector based HD ready icons</h3>
                  <p class="fs-sm mb-0">Finder is equiped with font-based icon pack to ensure that infographics and interface icons look sharp on any device with any screen resolution and pixel density.</p>
                </div>
              </div>
              <div class="col">
                <div class="card card-body card-hover h-100 border-0 bg-transparent"><img class="d-block mb-3" src="img/intro/features/html.png" width="56" alt="HTML5 logo">
                  <h3 class="h6">W3C valid HTML code</h3>
                  <p class="fs-sm mb-0">All HTML files are checked via W3C validator to ensure 100% valid code. As you probably know invalid HTML limits innovation, but Finder is innovative at its core.</p>
                </div>
              </div>
              <div class="col">
                <div class="card card-body card-hover h-100 border-0 bg-transparent"><img class="d-block mb-3" src="img/intro/features/js.png" width="56" alt="JS icon">
                  <h3 class="h6">Future-proof JavaScript</h3>
                  <p class="fs-sm mb-0">Finder core scripts asÂ well asÂ all dependencies are written inÂ vanillaÂ JS. And now with Bootstrap 5 we finally drop jQuery and use ES6 modules.</p>
                </div>
              </div>
              <div class="col">
                <div class="card card-body card-hover h-100 border-0 bg-transparent"><img class="d-block mb-3" src="img/intro/features/docs.png" width="56" alt="Docs icon">
                  <h3 class="h6">Detailed documentation</h3>
                  <p class="fs-sm mb-0">Download package includes offline and links to online documentation. ItÂ covers all crucial information about how toÂ get started, customize template and components usage.</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
      <!-- CTA-->
      <section class="container position-relative zindex-1">
        <div class="bg-secondary rounded-3 px-3 py-5">
          <div class="text-center py-sm-3 py-md-5">
            <h3 class="h5 fw-normal">Still not convinced?</h3>
            <h2 class="pb-4">Add premium support and lifetime updates to this!</h2><a class="btn btn-primary btn-lg rounded-pill" href="https://themes.getbootstrap.com/product/finder-directory-listings-template-ui-kit/" target="_blank" rel="noopener"><i class="fi-cart fs-lg me-2"></i>Buy Finder</a>
          </div>
        </div>
      </section>
      <!-- Footer-->
      <footer class="position-relative pb-5" style="margin-top: -5.75rem; padding-top: 9rem;">
        <div class="d-none d-xxl-block position-absolute top-0 start-0 w-100 h-100 bg-dark" style="border-top-left-radius: 1.875rem; border-top-right-radius: 1.875rem;"></div>
        <div class="d-xxl-none position-absolute top-0 start-0 w-100 h-100 bg-dark"></div>
        <div class="container content-overlay text-center py-md-3 py-lg-5">
          <h2 class="h3 text-light pb-3">Subscribe to our newsletter</h2>
          <div class="row justify-content-center mb-5 pb-lg-3">
            <div class="col-lg-6 col-md-7 col-sm-9">
              <form class="subscription-form validate" action="https://studio.us12.list-manage.com/subscribe/post?u=c7103e2c981361a6639545bd5&amp;amp;id=29ca296126" method="post" name="mc-embedded-subscribe-form" target="_blank" novalidate>
                <div class="form-group form-group-light rounded-pill">
                  <div class="input-group flex-nowrap"><span class="input-group-text text-muted"><i class="fi-mail"></i></span>
                    <input class="form-control" type="email" name="EMAIL" placeholder="Your email" required>
                  </div>
                  <button class="btn btn-primary rounded-pill" type="submit" name="subscribe">Subscribe*</button>
                </div>
                <!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
                <div style="position: absolute; left: -5000px;" aria-hidden="true">
                  <input class="subscription-form-antispam" type="text" name="b_c7103e2c981361a6639545bd5_29ca296126" tabindex="-1">
                </div>
                <div class="subscription-status mx-auto"></div>
                <div class="form-text text-light fs-xs opacity-70 mt-3">*Subscribe to our newsletter to receive early discount offers, updates and new products info.</div>
              </form>
            </div>
          </div>
          <p class="fs-sm mb-0"><span class="text-light">&copy; All rights reserved. Made by </span><a href="https://createx.studio/" target="_blank" rel="noopener">Createx Studio</a></p>
        </div>
      </footer>
    </main>
    <!-- Back to top button--><a class="btn-scroll-top" href="#top" data-scroll><span class="btn-scroll-top-tooltip text-muted fs-sm me-2">Top</span><i class="btn-scroll-top-icon fi-chevron-up">   </i></a>
    <!-- Vendor scrits: js libraries and plugins-->
    <script src="vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="vendor/simplebar/dist/simplebar.min.js"></script>
    <script src="vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>
    <!-- Main theme script-->
    <script src="js/theme.min.js"></script>
  </body>
</html>