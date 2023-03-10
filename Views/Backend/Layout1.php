<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>AdminLTE 2 | Dashboard</title>
    <!-- load ckeditor vao day -->
    <script type="text/javascript" src="Assets/Backend/ckeditor/ckeditor.js"></script>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="assets/backend/layout1/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="assets/backend/layout1/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/backend/layout1/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="assets/backend/layout1/css/_all-skins.min.css">
    <!-- Google Font -->
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

    <header class="main-header">
        <!-- Logo -->
        <a href="index.php?area=Backend" class="logo">
            <!-- mini logo for sidebar mini 50x50 pixels -->
            <span class="logo-mini"><b>A</b>LT</span>
            <!-- logo for regular state and mobile devices -->
            <span class="logo-lg"><b>Admin</b>LTE</span>
        </a>
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top">
            <!-- Sidebar toggle button-->
            <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
                <span class="sr-only">Toggle navigation</span>
            </a>

            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                    <!-- User Account: style can be found in dropdown.less -->
                    <li class="dropdown user user-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img src="assets/backend/layout1/images/tung.jpg" class="user-image" alt="User Image">
                            <span class="hidden-xs"><?php echo $_SESSION["email"]; ?></span>
                        </a>
                        <ul class="dropdown-menu">
                            <!-- User image -->
                            <li class="user-header">
                                <img src="assets/backend/layout1/images/user2-160x160.jpg" class="img-circle" alt="User Image">

                                <p>
                                    Your profile
                                    <small>Web developer</small>
                                </p>
                            </li>
                            <!-- Menu Footer-->
                            <li class="user-footer">
                                <div class="pull-left">
                                    <a href="#" class="btn btn-default btn-flat">Profile</a>
                                </div>
                                <div class="pull-right">
                                    <a href="index.php?area=Backend&controller=Login" class="btn btn-default btn-flat">Sign out</a>
                                </div>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
    </header>
    <!-- Left side column. contains the logo and sidebar -->
    <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
            <!-- Sidebar user panel -->
            <div class="user-panel">
                <div class="pull-left image">
                    <img src="assets/backend/layout1/images/tung.jpg" class="img-circle" alt="User Image">
                </div>
                <div class="pull-left info">
                    <p><?php echo $_SESSION["email"]; ?></p>
                    <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                </div>
            </div>
            <!-- sidebar menu: : style can be found in sidebar.less -->
            <ul class="sidebar-menu" data-widget="tree">
                <li class="header">LAYOUT ADMIN</li>

                <li>
                    <a href="index.php?area=Backend&controller=Category">
                        <i class="fa fa-th"></i> <span>Danh m???c s???n ph???m</span>
                    </a>
                </li>
                <li>
                    <a href="index.php?area=Backend&controller=Product">
                        <i class="fa fa-th"></i> <span>Danh s??ch s???n ph???m</span>
                    </a>
                </li>
                <li>
                    <a href="index.php?area=Backend&controller=New">
                        <i class="fa fa-th"></i> <span>Qu???n l?? tin t???c</span>
                    </a>
                </li>
                <li>
                    <a href="index.php?area=Backend&controller=Cart&action=order">
                        <i class="fa fa-th"></i> <span>Danh s??ch ????n h??ng</span>
                    </a>
                </li>
                <li class="dropdown"><a href="#" class="fa fa-th" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">&nbsp;&nbsp;Th???ng k?? <span class="caret"></span></a>
                            <ul class="dropdown-menu" style="background-color: #222d32;width: 230px;color: white;">
                                <li><a href="index.php?area=Backend&controller=Cart&action=thongke">Doanh thu</a></li>
                                <li><a href="index.php?area=Backend&controller=Cart&action=thongkehuy">S??? ????n h??ng h???y</a></li>
                                
                            </ul>
                </li>
                
                <li>
                    <a href="index.php?area=Backend&controller=User">
                        <i class="fa fa-code"></i> <span>Qu???n l?? user</span>
                        <span class="pull-right-container">
            </span>
                    </a>
                </li>
                <li>
                    <a href="index.php?area=Backend&controller=Logout">
                        <i class="fa fa-th"></i> <span>????ng xu???t</span>
                    </a>
                </li>
            </ul>
        </section>
        <!-- /.sidebar -->
    </aside>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <!-- <section class="content-header">
            
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                <li class="active">Dashboard</li>
            </ol>
        </section> -->

        <!-- Main content -->
        <section class="content">
            <?php 
                //xuat noi dung cua view trong MVC ra day
                echo $this->view;
             ?>

        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
    <footer class="main-footer">
        <div class="pull-right hidden-xs">
            <b>Version</b> 1.0
        </div>
        <strong> <a href="https://adminlte.io">Admin T??ng Anh</a>.</strong> All rights
        reserved.
    </footer>
    <!-- Add the sidebar's background. This div must be placed
         immediately after the control sidebar -->
    <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->

<!-- jQuery 3 -->
<script src="assets/backend/layout1/js/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="assets/backend/layout1/js/jquery-ui.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="assets/backend/layout1/js/bootstrap.min.js"></script>
<!-- AdminLTE App -->
<script src="assets/backend/layout1/js/adminlte.min.js"></script>
</body>
</html>
