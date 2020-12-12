<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header class="main-header">
            <!-- Logo -->
            <a href="/Admin/Home" class="logo">
                <!-- mini logo for sidebar mini 50x50 pixels -->
                <span class="logo-mini"><b>A</b>LT</span>
                <!-- logo for regular state and mobile devices -->
                <span class="logo-lg"><b>Admin</b></span>
            </a>
            <!-- Header Navbar: style can be found in header.less -->
            <nav class="navbar navbar-static-top">
                <!-- Sidebar toggle button-->
                <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                    <span class="sr-only">Toggle navigation</span>
                </a>

                <div class="navbar-custom-menu">
                    <ul class="nav navbar-nav">
                        <!-- Messages: style can be found in dropdown.less-->
                        <li class="dropdown messages-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-envelope-o"></i>
                                <span class="label label-success"></span>
                            </a>
                            
                        </li>
                        <!-- Notifications: style can be found in dropdown.less -->
                        <li class="dropdown notifications-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-bell-o"></i>
                                <span class="label label-warning">2</span>
                            </a>
                            <ul class="dropdown-menu">
                                <li class="header">Bạn có 2 thông báo</li>
                                <li>
                                    <!-- inner menu: contains the actual data -->
                                    <ul class="menu">
                                        <li>
                                            <a href="/Admin/Customer/UserProfile">
                                                <i class="fa fa-users text-aqua"></i> 1 khách hàng đăng ký mới
                                            </a>
                                        </li>
                                       
                                       
                                        <li>
                                            <a href="/Admin/Order">
                                                <i class="fa fa-shopping-cart text-green"></i> 1 đơn hàng mới
                                            </a>
                                        </li>
                                        
                                    </ul>
                                </li>
                                <li class="footer"><a href="#">View all</a></li>
                            </ul>
                        </li>
                        <!-- Tasks: style can be found in dropdown.less -->
                        
                        <!-- User Account: style can be found in dropdown.less -->
                        <li class="dropdown user user-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <img src="<c:url value='/assets/admin/dist/img/26219765_153092935338641_7804066461055097235_n.jpg'/>" class="img-circle" alt="User Image" style="width: 18px;">
                                <span class="hidden-xs">Mr.Hiếu</span>
                            </a>
                            <ul class="dropdown-menu">
                                <!-- User image -->
                                <li class="user-header">
                                    <img src="<c:url value='/assets/admin/dist/img/26219765_153092935338641_7804066461055097235_n.jpg'/>" class="img-circle" alt="User Image">

                                    <p>
                                        Mr.Hiếu-Admin

                                    </p>
                                </li>
                                <!-- Menu Body -->
                                <!-- Menu Footer-->
                                <li class="user-footer">
                                    <div class="pull-left">
                                        <a href="/Admin/AdminProfile/Detail" class="btn btn-default btn-flat">Hồ sơ</a>
                                    </div>
                                    <div class="pull-left" style="margin-left:5px;">
                                        <a href="/Admin/Changepassword/newPassword" class="btn btn-default btn-flat">Đổi mật khẩu</a>
                                    </div>

                                    <div class="pull-right">
                                        <a href="/Admin/Logout/Logout" class="btn btn-default btn-flat">Đăng xuất</a>
                                    </div>
                                </li>
                            </ul>
                        </li>
                        <!-- Control Sidebar Toggle Button -->
                        <li>
                            <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>