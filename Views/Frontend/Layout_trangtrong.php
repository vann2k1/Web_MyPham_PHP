<!doctype html>
<!--[if !IE]><!-->
<html lang="vi">
<!--<![endif]-->

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta http-equiv="content-language" content="vi" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="robots" content="noodp,index,follow" />
    <meta name='revisit-after' content='1 days' />
    <meta name="keywords" content="">
    <title>DKT Store</title>
    <meta name="description" content="DKT Store">
    <meta property="og:type" content="website">
    <meta property="og:title" content="DKT Store">
    <meta property="og:image" content="Assets/Frontend/100/047/633/themes/517833/Assets/logo221b.png?1481775169361">
    <meta property="og:image:secure_url" content="Assets/Frontend/100/047/633/themes/517833/Assets/logo221b.png?1481775169361">
    <meta property="og:url" content="index.html">
    <meta property="og:site_name" content="DKT Store">
    <link rel="canonical" href="index.html">
    <link rel="shortcut icon" href="Assets/Frontend/100/047/633/themes/517833/Assets/favicon221b.png?1481775169361" type="image/x-icon" />
    <!-- <link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i&amp;subset=vietnamese" rel="stylesheet"> -->
    <link href='Assets/Frontend/100/047/633/themes/517833/Assets/font-awesome.min221b.css?1481775169361' rel='stylesheet' type='text/css' />
    <link href='Assets/Frontend/100/047/633/themes/517833/Assets/bootstrap.min221b.css?1481775169361' rel='stylesheet' type='text/css' />
    <link href='Assets/Frontend/100/047/633/themes/517833/Assets/owl.carousel221b.css?1481775169361' rel='stylesheet' type='text/css' />
    <link href='Assets/Frontend/100/047/633/themes/517833/Assets/responsive221b.css?1481775169361' rel='stylesheet' type='text/css' />
    <link href='Assets/Frontend/100/047/633/themes/517833/Assets/styles.scss221b.css?1481775169361' rel='stylesheet' type='text/css' />
    <script src='Assets/Frontend/100/047/633/themes/517833/Assets/jquery.min221b.js?1481775169361' type='text/javascript'></script>
    <script src='Assets/Frontend/100/047/633/themes/517833/Assets/bootstrap.min221b.js?1481775169361' type='text/javascript'></script>
    <script src='Assets/Frontend/Assets/themes_support/api.jquerya87f.js?4' type='text/javascript'></script>
    <link href='Assets/Frontend/100/047/633/themes/517833/Assets/bw-statistics-style221b.css?1481775169361' rel='stylesheet' type='text/css' />
</head>
<body class="index">
    
<div id="fb-root"></div>
<script>(function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.9&appId=1780127515631166";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>
<div id="fb-root"></div>
<!-- header -->
<?php
  include "Views/Frontend/HeaderView.php";
?>
<!-- end header -->
<div class="content">
    <div class="container">
        <h1 style="display:none;">DKT Store</h1>
        <!-- category product -->
        <div class="slideshow">
            <div class="row">
                <div class="col-md-3 col-xs-12 hidden-xs hidden-sm">
                    <?php
                      //load mvc o day
                      include "Controllers/Frontend/CategoryController.php";
                      $obj = new categoryController();
                      $obj->index();
                    ?>
                </div>
                <div class="col-md-9">
                <!-- slide -->
                <div class="owl-slider">
                    <div class="item">
                        <!-- ============================ -->
                        <div id="myCarousel" class="carousel slide" data-ride="carousel">
                            <!-- Indicators -->
                            <ol class="carousel-indicators">
                                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                                <li data-target="#myCarousel" data-slide-to="1"></li>
                                <li data-target="#myCarousel" data-slide-to="2"></li>
                                <li data-target="#myCarousel" data-slide-to="3"></li>
                            </ol>

                            <!-- Wrapper for slides -->
                            <div class="carousel-inner" >
                                <div class="item active"> <img style="height: 470px;width: 1000px;" src="Assets/frontend/images/b1.jpg" alt="Los Angeles"> </div>
                                <div class="item"> <img style="height: 470px;width: 1000px;" src="Assets/frontend/images/b2.jpg" alt="Los Angeles"> </div>
                                <div class="item"> <img style="height: 470px;width: 1000px;" src="Assets/frontend/images/b4.jpg" alt="Chicago"> </div>
                                <div class="item"> <img style="height: 470px;width: 1000px;" src="Assets/frontend/images/b5.jpg" alt="New York"> </div>
                            </div>

                            <!-- Left and right controls -->
                        </div>
                        <!-- ============================ -->
                    </div>
                </div>
                <!-- end slide -->
            </div>
            </div>
        </div>
        <!-- end category product -->
        <div class="row">
            <div class="col-xs-12 col-md-3">
                <!-- end support -->
                <!-- <div class="online_support block">
                    <div class="new_title">
                        <h2>Hỗ trợ trực tuyến</h2>
                    </div>
                    <div class="block-content">
                        <div class="sp_1">
                            <p>Tư vấn bán hàng 1</p>
                            <p>Nguyễn Thế Tùng: 0399966637</p>
                        </div>
                        <div class="sp_1">
                            <p>Tư vấn bán hàng 2</p>
                            <p>Nguyễn Thế Tùng: 0399966637</p>
                        </div>
                        <div class="sp_1">
                            <p>Email liên hệ</p>
                            <p>septung1211@mail.com</p>
                        </div>
                    </div>
                </div> -->
                <!-- end support online -->
                <!-- hot news -->
                <div class="home-blog">
                    <h2 class="title"> <span>Tin tức</span></h2>
                    <div class="row">
                        <div class="owl-home-blog owl-home-blog-sidebar">
                            <!-- list hot news -->
                            <div class="item">
                                <div class="article"> 
                                    <div class="info">
                                        <h3><a href="index.php?controller=news_detail&id=20">Son môi cho bạn gái thêm tự tin</a></h3>
                                        <p class="desc">
                                        <p>Trong cuộc sống , đâu phải ai sinh ra cũng được trời phú cho đôi môi cong hồng hào, căng mộng tự nhiên. Nên nếu bạn có nằm trong diện môi kém đẹp, kém xinh thì cũng chẳng phải là vấn đề gì to tát cả. Mỹ phẩm dành cho môi, đặc biệt là son môi hiện nay vô cùng phong phú để bạn lựa chọn tô điểm thêm cho môi. Không cần phải mất thời gian, trang điểm cầu kỳ, một lớp son môi mỏng với sắc màu phù hợp đôi khi cũng đủ khiến bạn trở nên đẹp hơn, cuốn hút hơn.</p>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <!-- end list hot news -->
                            <!-- list hot news -->
                            <div class="item">
                                <div class="article"> 
                                    <div class="info">
                                        <h3><a href="index.php?controller=news_detail&id=19">Son môi cho bạn gái thêm tự tin</a></h3>
                                        <p class="desc">
                                        <p>Trong cuộc sống , đâu phải ai sinh ra cũng được trời phú cho đôi môi cong hồng hào, căng mộng tự nhiên. Nên nếu bạn có nằm trong diện môi kém đẹp, kém xinh thì cũng chẳng phải là vấn đề gì to tát cả. Mỹ phẩm dành cho môi, đặc biệt là son môi hiện nay vô cùng phong phú để bạn lựa chọn tô điểm thêm cho môi. Không cần phải mất thời gian, trang điểm cầu kỳ, một lớp son môi mỏng với sắc màu phù hợp đôi khi cũng đủ khiến bạn trở nên đẹp hơn, cuốn hút hơn.</p>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <!-- end list hot news -->
                            <!-- list hot news -->
                            <div class="item">
                                <div class="article"> 
                                    <div class="info">
                                        <h3><a href="index.php?controller=news_detail&id=17">Son môi cho bạn gái thêm tự tin</a></h3>
                                        <p class="desc">
                                        <p>Trong cuộc sống , đâu phải ai sinh ra cũng được trời phú cho đôi môi cong hồng hào, căng mộng tự nhiên. Nên nếu bạn có nằm trong diện môi kém đẹp, kém xinh thì cũng chẳng phải là vấn đề gì to tát cả. Mỹ phẩm dành cho môi, đặc biệt là son môi hiện nay vô cùng phong phú để bạn lựa chọn tô điểm thêm cho môi. Không cần phải mất thời gian, trang điểm cầu kỳ, một lớp son môi mỏng với sắc màu phù hợp đôi khi cũng đủ khiến bạn trở nên đẹp hơn, cuốn hút hơn.</p>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <!-- end list hot news -->
                            <!-- list hot news -->
                            <div class="item">
                                <div class="article">
                                    <div class="info">
                                        <h3><a href="index.php?controller=news_detail&id=16">Son môi cho bạn gái thêm tự tin</a></h3>
                                        <p class="desc">
                                        <p>Trong cuộc sống , đâu phải ai sinh ra cũng được trời phú cho đôi môi cong hồng hào, căng mộng tự nhiên. Nên nếu bạn có nằm trong diện môi kém đẹp, kém xinh thì cũng chẳng phải là vấn đề gì to tát cả. Mỹ phẩm dành cho môi, đặc biệt là son môi hiện nay vô cùng phong phú để bạn lựa chọn tô điểm thêm cho môi. Không cần phải mất thời gian, trang điểm cầu kỳ, một lớp son môi mỏng với sắc màu phù hợp đôi khi cũng đủ khiến bạn trở nên đẹp hơn, cuốn hút hơn.</p>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <!-- end list hot news -->
                            <!-- list hot news -->
                            <div class="item">
                                <div class="article"> 
                                    <div class="info">
                                        <h3><a href="index.php?controller=news_detail&id=15">Son môi cho bạn gái thêm tự tin</a></h3>
                                        <p class="desc">
                                        <p>Trong cuộc sống , đâu phải ai sinh ra cũng được trời phú cho đôi môi cong hồng hào, căng mộng tự nhiên. Nên nếu bạn có nằm trong diện môi kém đẹp, kém xinh thì cũng chẳng phải là vấn đề gì to tát cả. Mỹ phẩm dành cho môi, đặc biệt là son môi hiện nay vô cùng phong phú để bạn lựa chọn tô điểm thêm cho môi. Không cần phải mất thời gian, trang điểm cầu kỳ, một lớp son môi mỏng với sắc màu phù hợp đôi khi cũng đủ khiến bạn trở nên đẹp hơn, cuốn hút hơn.</p>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <!-- end list hot news -->
                        </div>
                    </div>
                </div>
                <!-- end hot news -->
                <!-- adv -->
                <img src="Assets/Frontend/images/22.jpg">
                <!-- end adv -->

            </div>
            <div class="col-xs-12 col-md-9">
                <!-- main -->
               <?php echo $this->view; ?>
                <!-- end main -->
            </div>
        </div>
        <!-- adv -->
        <!-- <div class="widebanner"> <a href=""><img src="Assets/Frontend/100/047/633/themes/517833/Assets/logo221b.png?1481775169361" alt="#" class="img-responsive"></a> </div> -->
        <!-- end adv -->

    </div>
</div>
<div class="privacy">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-4">
                <div class="image"> <img src="Assets/Frontend/100/047/633/themes/517833/Assets/ico-service-1221b.png?1481775169361" alt="Giao hàng miễn phí" title="Giao hàng miễn phí" class="img-responsive"> </div>
                <div class="info">
                    <h3>Giao hàng miễn phí</h3>
                    <p>Miễn phí giao hàng trong nội thành Hà Nội</p>
                </div>
            </div>
            <div class="col-xs-12 col-sm-4">
                <div class="image"> <img src="Assets/Frontend/100/047/633/themes/517833/Assets/ico-service-2221b.png?1481775169361" class="img-responsive" alt="Khuyến mại" title="Khuyến mại"> </div>
                <div class="info">
                    <h3>Khuyến mại</h3>
                    <p>Khuyến mại sản phẩm nếu đơn hàng trên 1.000.000đ</p>
                </div>
            </div>
            <div class="col-xs-12 col-sm-4">
                <div class="image"> <img src="Assets/Frontend/100/047/633/themes/517833/Assets/ico-service-3221b.png?1481775169361" class="img-responsive" alt="Hoàn trả lại tiền" title="Hoàn trả lại tiền"> </div>
                <div class="info">
                    <h3>Hoàn trả lại tiền</h3>
                    <p>Nếu sản phẩm không đảm bảo chất lượng hoặc sản phẩm không đúng miêu tả</p>
                </div>
            </div>
        </div>
    </div>
</div>
<footer id="footer">
    <div class="top-footer">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-3">
                    <h3>Về chúng tôi</h3>
                    <ul class="list-unstyled">
                        <li><a href="index.html">Trang chủ</a></li>
                        <li><a href="gioi-thieu">Giới thiệu</a></li>
                        <li><a href="tin-tuc">Tin tức</a></li>
                        <li><a href="gioi-thieu">Liên hệ</a></li>
                    </ul>
                </div>
                <div class="col-xs-12 col-sm-3">
                    <h3>Hướng dẫn</h3>
                    <ul class="list-unstyled">
                        <li><a href="huo-ng-da-n-mua-ha-ng">Hướng dẫn mua hàng</a></li>
                        <li><a href="huong-dan">Giao nhận và thanh toán</a></li>
                        <li><a href="do-i-tra-va-ba-o-ha-nh">Đổi trả và bảo hành</a></li>
                        <li><a href="account/register">Đăng ký thành viên</a></li>
                    </ul>
                </div>
                <div class="col-xs-12 col-sm-3">
                    <h3>Chính sách</h3>
                    <ul class="list-unstyled">
                        <li><a href="chinh-sach">Chính sách thanh toán</a></li>
                        <li><a href="chi-nh-sa-ch-va-n-chuye-n">Chính sách vận chuyển</a></li>
                        <li><a href="chi-nh-sa-ch-do-i-tra">Chính sách đổi trả</a></li>
                        <li><a href="chi-nh-sa-ch-ba-o-ha-nh">Chính sách bảo hành</a></li>
                    </ul>
                </div>
                <div class="col-xs-12 col-sm-3">
                    <h3>Điều khoản</h3>
                    <ul class="list-unstyled">
                        <li><a href="dieu-khoan">Điều khoản sử dụng</a></li>
                        <li><a href="die-u-khoa-n-giao-di-ch">Điều khoản giao dịch</a></li>
                        <li><a href="di-ch-vu-tie-n-i-ch">Dịch vụ tiện ích</a></li>
                        <li><a href="quye-n-so-hu-u-tri-tue">Quyền sở hữu trí tuệ</a></li>
                    </ul>
                </div>
            </div>
            <div class="payments-method"> <img src="Assets/Frontend/100/047/633/themes/517833/Assets/payments-method221b.png?1481775169361" alt="Phương thức thanh toán" title="Phương thức thanh toán"> </div>
        </div>
    </div>
    <div class="bottom-footer">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-5"> © Bản quyền thuộc về Nguyễn Thế Tùng</div>
                <div class="col-xs-12 col-sm-7">
                    <ul class="list-unstyled">
                        <li><a href="http://localhost/php41/php41_project_product/index.php">Trang chủ</a></li>
                        <li><a href="gioi-thieu">Giới thiệu</a></li>
                        <li><a href="tin-tuc">Tin tức</a></li>
                        <li><a href="lien-he">Liên hệ</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</footer>
<script src='Assets/Frontend/100/047/633/themes/517833/Assets/owl.carousel.min221b.js?1481775169361' type='text/javascript'></script>
<script src='Assets/Frontend/100/047/633/themes/517833/Assets/responsive-menu221b.js?1481775169361' type='text/javascript'></script>
<script src='Assets/Frontend/100/047/633/themes/517833/Assets/elevate-zoom221b.js?1481775169361' type='text/javascript'></script>
<script src='Assets/Frontend/100/047/633/themes/517833/Assets/main221b.js?1481775169361' type='text/javascript'></script>
<script src='Assets/Frontend/100/047/633/themes/517833/Assets/ajax-cart221b.js?1481775169361' type='text/javascript'></script>
<div class="ajax-error-modal modal">
    <div class="modal-inner">
        <div class="ajax-error-title">Lỗi</div>
        <div class="ajax-error-message"></div>
    </div>
</div>
<div class="ajax-success-modal modal">
    <div class="overlay"></div>
    <div class="content col-xs-12">
        <div class="ajax-left"> <img class="ajax-product-image" alt="&nbsp;" src="#" style="max-width:65px; max-height:100px"/> </div>
        <div class="ajax-right">
            <p class="ajax-product-title"></p>
            <p class="success-message btn-go-to-cart"><span style="color:#789629">&#10004;</span> Đã được thêm vào giỏ hàng.</p>
            <div class="actions">
                <button class="button" onclick="window.location='cart'">Đi tới giỏ hàng</button>
                <button class="button" onclick="window.location='checkout'">Thanh toán</button>
            </div>
        </div>
        <a href="javascript:void(0)" class="close-modal"><i class="fa fa-times"></i></a> </div>
</div>
</body>
</html>