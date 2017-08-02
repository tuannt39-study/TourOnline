<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
                  <c:url value="/dang-ky" var="action" />
                  <form:form action="${action}" method="POST" modelAttribute="user" class="form-horizontal" role="form">
                    <fieldset>
                      <legend>Thông tin cá nhân</legend>
                      <div class="form-group">
                        <label for="email" class="col-lg-4 control-label">Email <span class="require">*</span></label>
                        <div class="col-lg-8">
                          <form:input path="email" cssClass="form-control" type="email" id="email"/>
                          <c:set var="emailErrors"><form:errors path="email"/></c:set>
                          <c:if test="${not empty emailErrors}">
                            <div class="field-error" style="color: red;">
                              <i class="fa fa-exclamation-circle"></i>
                              <form:errors path="email" delimiter="<br><i class='fa fa-exclamation-circle'></i> " />
                            </div>
                          </c:if>
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="name" class="col-lg-4 control-label">Họ tên <span class="require">*</span></label>
                        <div class="col-lg-8">
                          <form:input path="name" cssClass="form-control" type="text" id="name"/>
                          <c:set var="nameErrors"><form:errors path="name"/></c:set>
                          <c:if test="${not empty nameErrors}">
                            <div class="field-error" style="color: red;">
                              <i class="fa fa-exclamation-circle"></i>
                              <form:errors path="name" delimiter="<br><i class='fa fa-exclamation-circle'></i> " />
                            </div>
                          </c:if>
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="gender" class="col-lg-4 control-label">Giới tính </label>
                        <div class="col-lg-8">
                          <form:input path="gender" cssClass="form-control" type="text" id="gender"/>
                          <c:set var="genderErrors"><form:errors path="gender"/></c:set>
                          <c:if test="${not empty genderErrors}">
                            <div class="field-error" style="color: red;">
                              <i class="fa fa-exclamation-circle"></i>
                              <form:errors path="gender" delimiter="<br><i class='fa fa-exclamation-circle'></i> " />
                            </div>
                          </c:if>
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="phone" class="col-lg-4 control-label">Số điện thoại <span class="require">*</span></label>
                        <div class="col-lg-8">
                          <form:input path="phone" cssClass="form-control" type="text" id="phone"/>
                          <c:set var="phoneErrors"><form:errors path="phone"/></c:set>
                          <c:if test="${not empty phoneErrors}">
                            <div class="field-error" style="color: red;">
                              <i class="fa fa-exclamation-circle"></i>
                              <form:errors path="phone" delimiter="<br><i class='fa fa-exclamation-circle'></i> " />
                            </div>
                          </c:if>
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="address" class="col-lg-4 control-label">Địa chỉ <span class="require">*</span></label>
                        <div class="col-lg-8">
                          <form:input path="address" cssClass="form-control" type="text" id="address"/>
                          <c:set var="addressErrors"><form:errors path="address"/></c:set>
                          <c:if test="${not empty addressErrors}">
                            <div class="field-error" style="color: red;">
                              <i class="fa fa-exclamation-circle"></i>
                              <form:errors path="address" delimiter="<br><i class='fa fa-exclamation-circle'></i> " />
                            </div>
                          </c:if>
                        </div>
                      </div>
                    </fieldset>
                    <fieldset>
                      <legend>Mật khẩu</legend>
                      <div class="form-group">
                        <label for="password" class="col-lg-4 control-label">Mật khẩu <span class="require">*</span></label>
                        <div class="col-lg-8">
                          <form:input path="password" cssClass="form-control" type="password" id="password"/>
                          <c:set var="passwordErrors"><form:errors path="password"/></c:set>
                          <c:if test="${not empty passwordErrors}">
                            <div class="field-error" style="color: red;">
                              <i class="fa fa-exclamation-circle"></i>
                              <form:errors path="password" delimiter="<br><i class='fa fa-exclamation-circle'></i> " />
                            </div>
                          </c:if>
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="confirmPassword" class="col-lg-4 control-label">Xác nhận mật khẩu <span class="require">*</span></label>
                        <div class="col-lg-8">
                          <form:input path="confirmPassword" cssClass="form-control" type="password" id="confirmPassword"/>
                          <c:set var="confirmPasswordErrors"><form:errors path="confirmPassword"/></c:set>
                          <c:if test="${not empty confirmPasswordErrors}">
                            <div class="field-error" style="color: red;">
                              <i class="fa fa-exclamation-circle"></i>
                              <form:errors path="confirmPassword" delimiter="<br><i class='fa fa-exclamation-circle'></i> " />
                            </div>
                          </c:if>
                        </div>
                      </div>
                    </fieldset>
                    <div class="row">
                      <div class="col-lg-8 col-md-offset-4 padding-left-0 padding-top-20">                        
                        <button type="submit" class="btn btn-primary">Đăng ký tài khoản</button>
                      </div>
                    </div>
                  </form:form>
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
