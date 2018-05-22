<?php
    $query_result = $obj_app->select_all_published_category_info();

?>
<div class="header-nav animate-dropdown">
    <div class="container">
        <div class="yamm navbar navbar-default" role="navigation">
            <div class="navbar-header">
                <button data-target="#mc-horizontal-menu-collapse" data-toggle="collapse" class="navbar-toggle collapsed" type="button">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <div class="nav-bg-class">
                <div class="navbar-collapse collapse" id="mc-horizontal-menu-collapse">
                    <div class="nav-outer">
                        <ul class="nav navbar-nav">
                            <li class="active dropdown yamm-fw">
                                <a href="home.html" data-hover="dropdown" class="dropdown-toggle" data-toggle="dropdown">Home</a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <div class="yamm-content">
                                            <div class="row">
                                                <div class="col-md-8 col-sm-8">
                                                    <div class="row">
                                                        <div class='col-md-12'>

                                                            <div class="col-xs-12 col-sm-6 col-md-3">
                                                                <h2 class="title">Computer</h2>
                                                                <ul class="links">
                                                                    <li><a href="#">Lenovo</a></li>
                                                                    <li><a href="#">Microsoft </a></li>
                                                                    <li><a href="#">Fuhlen</a></li>
                                                                    <li><a href="#">Longsleeves</a></li>
                                                                </ul>
                                                            </div><!-- /.col -->

                                                            <div class="col-xs-12 col-sm-6 col-md-3">
                                                                <h2 class="title">Camera</h2>
                                                                <ul class="links">
                                                                    <li><a href="#">Fuhlen</a></li>
                                                                    <li><a href="#">Lenovo</a></li>
                                                                    <li><a href="#">Microsoft </a></li>                   
                                                                    <li><a href="#">Longsleeves</a></li>
                                                                </ul>
                                                            </div><!-- /.col -->

                                                            <div class="col-xs-12 col-sm-6 col-md-3">
                                                                <h2 class="title">Apple Store</h2>
                                                                <ul class="links">
                                                                    <li><a href="#">Longsleeves</a></li>
                                                                    <li><a href="#">Fuhlen</a></li>
                                                                    <li><a href="#">Lenovo</a></li>
                                                                    <li><a href="#">Microsoft </a></li>                                       
                                                                </ul>
                                                            </div><!-- /.col -->

                                                            <div class="col-xs-12 col-sm-6 col-md-3">
                                                                <h2 class="title">Smart Phone</h2>
                                                                <ul class="links">
                                                                    <li><a href="#">Microsoft </a></li> 
                                                                    <li><a href="#">Longsleeves</a></li>
                                                                    <li><a href="#">Fuhlen</a></li>
                                                                    <li><a href="#">Lenovo</a></li>

                                                                </ul>
                                                            </div><!-- /.col -->

                                                        </div>

                                                    </div>
                                                </div>
                                                <div class="col-sm-4">
                                                </div>
                                            </div><!-- /.row -->

                                            <!-- ============================================== WIDE PRODUCTS ============================================== -->
                                            <div class="wide-banners megamenu-banner">
                                                <div class="row">
                                                    <div class="col-sm-12 col-md-8">
                                                        <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="col-sm-6 col-md-6">
                                                                    <div class="wide-banner cnt-strip">
                                                                        <div class="image">
                                                                            <img class="img-responsive" data-echo="assets/fornt_end/images/banners/4.jpg" src="assets/fornt_end/images/blank.gif" alt="">
                                                                        </div>  
                                                                        <div class="strip">
                                                                            <div class="strip-inner text-right">
                                                                                <h3 class="white">new trend</h3>
                                                                                <h2 class="white">apple product</h2>
                                                                            </div>  
                                                                        </div>
                                                                    </div><!-- /.wide-banner -->
                                                                </div><!-- /.col -->

                                                                <div class="col-sm-6 col-md-6">
                                                                    <div class="wide-banner cnt-strip">
                                                                        <div class="image">
                                                                            <img class="img-responsive" data-echo="assets/fornt_end/images/banners/5.jpg" src="assets/fornt_end/images/blank.gif" alt="">
                                                                        </div>  
                                                                        <div class="strip">
                                                                            <div class="strip-inner text-left">
                                                                                <h3 class="white">camera collection</h3>
                                                                                <h2 class="white">new arrivals</h2>
                                                                            </div>  
                                                                        </div>
                                                                    </div><!-- /.wide-banner -->
                                                                </div><!-- /.col -->
                                                            </div>

                                                        </div><!-- /.row -->
                                                    </div>
                                                    <div class="col-sm-12 col-md-4 hidden-xs hidden-sm">
                                                        <p class="text ">LenovoProin gravida nibh vel velit auctor aliquet es  Aenean sollicitudin,lorem quis bibendu auctor,nisi elit consequat ipsum auctor.</p>
                                                    </div>
                                                </div>
                                            </div><!-- /.wide-banners -->

                                            <!-- ============================================== WIDE PRODUCTS : END ============================================== -->

                                        </div><!-- /.yamm-content --></li>
                                </ul>
                            </li>
                            <?php while ($category_info = mysqli_fetch_assoc($query_result) ) { ?>
                            <li class="dropdown"><a href="category.php?id=<?php echo $category_info['category_id']; ?>"><?php echo $category_info['category_name']; ?></a></li>
                            <?php } ?>
                            <li class="dropdown">
                                <a href="contact.php">Contact</a>
                            </li>
                            
                        </ul><!-- /.navbar-nav -->
                        <div class="clearfix"></div>				
                    </div><!-- /.nav-outer -->
                </div><!-- /.navbar-collapse -->
            </div><!-- /.nav-bg-class -->
        </div><!-- /.navbar-default -->
    </div><!-- /.container-class -->

</div>