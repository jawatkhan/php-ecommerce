<?php
    ob_start();
    session_start();
    require_once 'classes/application.php';
    $obj_app= new Application();
    
    require_once 'classes/checkout.php';
    $obj_checkout = new Checkout();
    
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Meta -->
        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <meta name="keywords" content="MediaCenter, Template, eCommerce">
        <meta name="robots" content="all">
        <title>themelock.com - Unicase</title>
        <!-- Bootstrap Core CSS -->
        
        <!-- Customizable CSS -->
        <link rel="stylesheet" href="assets/fornt_end/css/main.css">
        <link rel="stylesheet" href="assets/fornt_end/css/green.css">
        <link rel="stylesheet" href="assets/fornt_end/css/owl.carousel.css">
        <link rel="stylesheet" href="assets/fornt_end/css/owl.transitions.css">
        <!--<link rel="stylesheet" href="assets/css/owl.theme.css">-->
        <link href="assets/css/lightbox.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/fornt_end/css/animate.min.css">
        <link rel="stylesheet" href="assets/fornt_end/css/rateit.css">
        <link rel="stylesheet" href="assets/fornt_end/css/bootstrap-select.min.css">
        <!-- Demo Purpose Only. Should be removed in production -->
        <link rel="stylesheet" href="assets/fornt_end/css/config.css">
        <link href="assets/fornt_end/css/green.css" rel="alternate stylesheet" title="Green color">
        <link href="assets/fornt_end/css/blue.css" rel="alternate stylesheet" title="Blue color">
        <link href="assets/fornt_end/css/red.css" rel="alternate stylesheet" title="Red color">
        <link href="assets/fornt_end/css/orange.css" rel="alternate stylesheet" title="Orange color">
        <link href="assets/fornt_end/css/dark-green.css" rel="alternate stylesheet" title="Darkgreen color">
        <!-- Demo Purpose Only. Should be removed in production : END -->
        <!-- Icons/Glyphs -->
        <link rel="stylesheet" href="assets/fornt_end/css/font-awesome.min.css">
        <!-- Fonts --> 
        <link href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,700' rel='stylesheet' type='text/css'>
        <!-- Favicon -->
        <link rel="shortcut icon" href="assets/fornt_end/images/favicon.ico">
        <link rel="stylesheet" href="assets/back_end/vendor/bootstrap/css/bootstrap.min.css">
    </head>
    <body class="cnt-home">
        <!-- ============================================== HEADER ============================================== -->
        <header class="header-style-1">
            <!-- ============================================== TOP MENU ============================================== -->
            <?php include './includes/header.php'; ?>
            <!-- /.main-header -->

            <!-- ============================================== NAVBAR ============================================== -->
            <?php include './includes/menu.php'; ?>
            <!-- /.header-nav -->
            <!-- ============================================== NAVBAR : END ============================================== -->
        </header>
        <!-- ============================================== HEADER : END ============================================== -->
        <div class="body-content outer-top-xs" id="top-banner-and-menu">
            <div class="container">
               <?php
               
               if(isset($pages)) {
                   if($pages == 'cdf') {
                       include './pages/category_content.php';
                   }
                   else if ($pages == 'contact') {
                       include './pages/contact_content.php';
                   }
                   else if ($pages == 'product_details') {
                       include './pages/product_details_content.php';
                   }
                   else if ($pages == 'cart') {
                       include './pages/cart_content.php';
                   }
                   else if ($pages == 'checkout') {
                       include './pages/checkout_content.php';
                   }
                   else if ($pages == 'shipping') {
                       include './pages/shipping_content.php';
                   }
                   else if ($pages == 'login') {
                       include './pages/login_content.php';
                   }
                   
                   
               } else {
                   include './pages/home_content.php';
               }
               
               
               ?>
                <!-- /.row -->
                <!-- ============================================== BRANDS CAROUSEL ============================================== -->
               <?php include './includes/brands.php'; ?>
                <!-- /.logo-slider -->
                <!-- ============================================== BRANDS CAROUSEL : END ============================================== -->
            </div><!-- /.container -->
        </div><!-- /#top-banner-and-menu -->
        <!-- ============================================================= FOOTER ============================================================= -->
        <?php include './includes/footer.php'; ?>
        <!-- ============================================================= FOOTER : END============================================================= -->
 
        <!-- For demo purposes – can be removed on production : End -->
        <!-- JavaScripts placed at the end of the document so the pages load faster -->
        <script src="assets/fornt_end/js/jquery-1.11.1.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/fornt_end/js/bootstrap-hover-dropdown.min.js"></script>
        <script src="assets/fornt_end/js/owl.carousel.min.js"></script>
        <script src="assets/fornt_end/js/echo.min.js"></script>
        <script src="assets/fornt_end/js/jquery.easing-1.3.min.js"></script>
        <script src="assets/fornt_end/js/bootstrap-slider.min.js"></script>
        <script src="assets/fornt_end/js/jquery.rateit.min.js"></script>
        <script type="text/javascript" src="assets/fornt_end/js/lightbox.min.js"></script>
        <script src="assets/fornt_end/js/bootstrap-select.min.js"></script>
        <script src="assets/fornt_end/js/wow.min.js"></script>
        <script src="assets/fornt_end/js/scripts.js"></script>
        <!-- For demo purposes – can be removed on production -->
        <script src="assets/fornt_end/js/switchstylesheet.js"></script>
        <script>
            $(document).ready(function () {
                $(".changecolor").switchstylesheet({seperator: "color"});
                $('.show-theme-options').click(function () {
                    $(this).parent().toggleClass('open');
                    return false;
                });
            });

            $(window).bind("load", function () {
                $('.show-theme-options').delay(2000).trigger('click');
            });
        </script>
        <!-- For demo purposes – can be removed on production : End -->
    </body>
</html>