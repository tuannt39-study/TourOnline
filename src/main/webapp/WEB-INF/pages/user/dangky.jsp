<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    <div class="main">
      <div class="container">
        <ul class="breadcrumb">
            <li><a href="/">Trang chủ</a></li>
            <li class="active">Đăng ký</li>
        </ul>
        <!-- BEGIN SIDEBAR & CONTENT -->
        <div class="row margin-bottom-40">
          <!-- BEGIN SIDEBAR -->
          <div class="sidebar col-md-3 col-sm-3">
            
          </div>
          <!-- END SIDEBAR -->

          <!-- BEGIN CONTENT -->
          <div class="col-md-9 col-sm-9">
            <h1>Đăng ký tài khoản</h1>
            <div class="content-form-page">
              <div class="row">
                <div class="col-md-7 col-sm-7">
                  <form class="form-horizontal" role="form" action="#" th:action="@{/dang-ky}" th:object="${user}" method="post">
                    <fieldset>
                      <legend>Thông tin cá nhân</legend>
                      <div class="form-group">
                        <label for="email" class="col-lg-4 control-label">Email <span class="require">*</span></label>
                        <div class="col-lg-8">
                          <input type="email" class="form-control" id="email" th:field="*{email}"/>
                          <em th:if="${#fields.hasErrors('email')}" th:errors="*{email}"></em>
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="name" class="col-lg-4 control-label">Họ tên <span class="require">*</span></label>
                        <div class="col-lg-8">
                          <input type="text" class="form-control" id="name" th:field="*{name}"/>
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="gender" class="col-lg-4 control-label">Giới tính <span class="require">*</span></label>
                        <div class="col-lg-8">
                          <input type="text" class="form-control" id="gender" th:field="*{gender}" />
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="phone" class="col-lg-4 control-label">Số điện thoại <span class="require">*</span></label>
                        <div class="col-lg-8">
                          <input type="text" class="form-control" id="phone" th:field="*{phone}"/>
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="address" class="col-lg-4 control-label">Địa chỉ <span class="require">*</span></label>
                        <div class="col-lg-8">
                          <input type="text" class="form-control" id="address" th:field="*{address}"/>
                        </div>
                      </div>
                    </fieldset>
                    <fieldset>
                      <legend>Mật khẩu</legend>
                      <div class="form-group">
                        <label for="password" class="col-lg-4 control-label">Mật khẩu <span class="require">*</span></label>
                        <div class="col-lg-8">
                          <input type="password" class="form-control" id="password" th:field="*{password}"/>
                        </div>
                      </div>
                    </fieldset>
                    <div class="row">
                      <div class="col-lg-8 col-md-offset-4 padding-left-0 padding-top-20">
                        <button type="submit" class="btn btn-primary">Đăng ký tài khoản</button>
                      </div>
                    </div>
                  </form>
                </div>
                
                </div>
              </div>
            </div>
          </div>
          <!-- END CONTENT -->
        </div>
        <!-- END SIDEBAR & CONTENT -->
      </div>

    <script type="text/javascript">
        jQuery(document).ready(function() {
            Layout.init();
            Layout.initUniform();
            Layout.initTwitter();
        });
    </script>
