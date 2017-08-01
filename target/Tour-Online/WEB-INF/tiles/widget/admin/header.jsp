<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<div class="page-header">
    <div class="page-header-top">
        <div class="container">
            <div class="page-logo">
                <a href="#"><img src="<c:url value="/static/assets/admin/layout3/img/logo-default.png"/>" alt="logo" class="logo-default" /></a>
            </div>
            <a href="#" class="menu-toggler"></a>
            <div class="top-menu">
                <ul class="nav navbar-nav pull-right">
                    <li class="dropdown dropdown-user dropdown-dark">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                            <img alt="" class="img-circle" src="<c:url value="/static/assets/admin/layout3/img/avatar9.jpg"/>" />
                            <span class="username username-hide-mobile">Nguyễn Thế Tuân</span>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-default" style="width: 150px;">
                            <li>
                                <a href="#">
                                    <i class="icon-user"></i> Cá nhân </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="icon-key"></i> Thoát </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="page-header-menu">
        <div class="container">
            <div class="hor-menu ">
                <ul class="nav navbar-nav">
                    <li class="menu-dropdown">
                        <a href="/admin">Trang chủ</a>
                    </li>
                    <li class="menu-dropdown">
                        <a href="/admin/tai-khoan">Tài khoản </a>
                    </li>
                    <li class="menu-dropdown">
                        <a href="/admin/tour">Tour </a>
                    </li>
                    <li class="menu-dropdown">
                        <a href="/admin/dat-tour">Booking Tour </a>
                    </li>
                    <li class="menu-dropdown">
                        <a href="/admin/huong-dan-vien">Hướng dẫn viên </a>
                    </li>
                    <li class="menu-dropdown">
                        <a href="/admin/lien-he">Liên hệ </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>