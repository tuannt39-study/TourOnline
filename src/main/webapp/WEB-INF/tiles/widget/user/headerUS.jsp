<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!-- BEGIN TOP BAR -->
<div class="pre-header">
    <div class="container">
        <div class="row">
            <!-- BEGIN TOP BAR LEFT PART -->
            <div class="col-md-6 col-sm-6 additional-shop-info">
                <ul class="list-unstyled list-inline">
                    <li><i class="fa fa-phone"></i><span>(+84) 111 111 1111</span></li>
                    <li><i class="fa fa-envelope-o"></i><span>info@hackademics.vn</span></li>
                </ul>
            </div>
            <!-- END TOP BAR LEFT PART -->
            <!-- BEGIN TOP BAR MENU -->
            <div class="col-md-6 col-sm-6 additional-nav">
                <ul class="list-unstyled list-inline pull-right">
                    <li><a href="<c:url value="/dang-nhap"/>">Đăng nhập</a></li>
                    <li><a href="<c:url value="/dang-ky"/>">Đăng ký</a></li>
                </ul>
            </div>
            <!-- END TOP BAR MENU -->
        </div>
    </div>
</div>
<!-- END TOP BAR -->
<!-- BEGIN HEADER -->
<div class="header">
    <div class="container">
        <a class="site-logo" href="#"><img src="<c:url value="/static/assets/frontend/layout/img/logos/logo-kv.jpg"/>" alt="Metronic FrontEnd" /></a>
        <a href="#" class="mobi-toggler"><i class="fa fa-bars"></i></a>
        <!-- BEGIN NAVIGATION -->
        <div class="header-navigation pull-right font-transform-inherit">
            <ul>
                <li >
                    <a  href="#">
                        Trang chủ
                    </a>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="#">
                        Trong nước
                    </a>
                    <ul class="dropdown-menu">
                        <li class="dropdown-submenu">
                            <a href="#">Miền bắc<i class="fa fa-angle-right"></i></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="#">Hạ Long</a></li>
                                <li><a href="#">Sapa</a></li>
                                <li><a href="#">Hà Nội</a></li>
                            </ul>
                        </li>
                        <li class="dropdown-submenu">
                            <a href="#">Miền trung<i class="fa fa-angle-right"></i></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="#">Đà nẵng</a></li>
                                <li><a href="#">Nha Trang</a></li>
                                <li><a href="#">Đà Lạt</a></li>
                                <li><a href="#">Hội An</a></li>
                                <li><a href="#">Huế</a></li>
                            </ul>
                        </li>
                        <li class="dropdown-submenu">
                            <a href="#">Miền nam<i class="fa fa-angle-right"></i></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="#">Hồ Chí Minh</a></li>
                                <li><a href="#">Côn Đảo</a></li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="#">
                        Quốc Tế
                    </a>
                    <ul class="dropdown-menu">
                        <li class="dropdown-submenu">
                            <a href="#">Đông Nam Á</a>
                        </li>
                        <li class="dropdown-submenu">
                            <a href="#">Châu Á</a>
                        </li>
                        <li class="dropdown-submenu">
                            <a href="#">Châu Âu</a>
                        </li>
                    </ul>
                </li>
                <li >
                    <a  href="<c:url value="/lien-he"/>">
                        Liên hệ
                    </a>
                </li>
                <!-- BEGIN TOP SEARCH -->
                <li class="menu-search">
                    <span class="sep"></span>
                    <i class="fa fa-search search-btn"></i>
                    <div class="search-box">
                        <form action="#">
                            <div class="input-group">
                                <input type="text" placeholder="Search" class="form-control" />
                                <span class="input-group-btn">
                        <button class="btn btn-primary" type="submit">Search</button>
                        </span>
                            </div>
                        </form>
                    </div>
                </li>
                <!-- END TOP SEARCH -->
            </ul>
        </div>
        <!-- END NAVIGATION -->
    </div>
</div>