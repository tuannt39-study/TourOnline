<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<div class="page-container">
    <div class="page-head">
        <div class="container">
            <div class="page-title">
                <h1>Tài khoản</h1>
            </div>
        </div>
    </div>
    <div class="page-content">
        <div class="container">
            <ul class="page-breadcrumb breadcrumb">
                <li>
                    <a href="<c:url value="/admin"/>">Trang chủ</a><i class="fa fa-circle"></i>
                </li>
                <li>
                    <a href="<c:url value="/admin/tai-khoan"/>">Tài khoản</a><i class="fa fa-circle"></i>
                </li>
                <li class="active">
                    <c:choose>
                        <c:when test="${user.id == 0}">
                            Thêm tài khoản
                        </c:when>
                        <c:otherwise>
                            ${user.name}
                        </c:otherwise>
                    </c:choose>
                </li>
            </ul>

            <div class="row margin-top-10">
                <div class="col-md-12">
                    <!-- BEGIN PROFILE SIDEBAR -->
                    <div class="profile-sidebar __web-inspector-hide-shortcut__" style="width: 250px; height: 303px">
                        <!-- PORTLET MAIN -->
                        <div class="portlet light profile-sidebar-portlet">
                            <!-- SIDEBAR USERPIC -->
                            <div class="profile-userpic">
                                <img src="<c:url value="/static/assets/admin/pages/media/profile/profile_user.jpg"/>" class="img-responsive" alt="" style="height: 125px; width: 125px"/>
                            </div>
                            <!-- END SIDEBAR USERPIC -->
                            <!-- SIDEBAR USER TITLE -->
                            <div class="profile-usertitle">
                                <div class="profile-usertitle-name">
                                    ${user.name}
                                </div>
                                <c:choose>
                                    <c:when test="${user.admin}">
                                        <div class="profile-usertitle-job">Quản trị viên</div>
                                    </c:when>
                                    <c:otherwise>
                                        <div class="profile-usertitle-job">Người dùng</div>
                                    </c:otherwise>
                                </c:choose>
                            </div>
                            <!-- END SIDEBAR USER TITLE -->
                            <!-- SIDEBAR MENU -->
                            <div class="profile-usermenu">
                            </div>
                            <!-- END MENU -->
                        </div>
                        <!-- END PORTLET MAIN -->
                    </div>
                    <!-- END BEGIN PROFILE SIDEBAR -->
                    <!-- BEGIN PROFILE CONTENT -->
                    <div class="profile-content">
                        <div class="row">
                            <div class="col-md-9">
                                <div class="portlet light">
                                    <div class="portlet-title tabbable-line">
                                        <div class="caption caption-md">
                                            <i class="icon-globe theme-font hide"></i>
                                            <span class="caption-subject font-blue-madison bold uppercase">Tài khoản</span>
                                        </div>
                                    </div>
                                    <div class="portlet-body">
                                        <div class="tab-content">
                                            <div class="tab-pane active">
                                                <c:url value="/admin/tai-khoan/save" var="action" />
                                                <form:form action="${action}" method="POST" modelAttribute="user" class="form-horizontal">
                                                    <div class="form-body">
                                                        <div class="form-group">
                                                            <label class="col-md-3 control-label">Họ tên</label>
                                                            <div class="col-md-5">
                                                                <form:input path="name" cssClass="form-control input-circle" />
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
                                                            <label class="col-md-3 control-label">Giới tính</label>
                                                            <div class="col-md-5">
                                                                <form:input path="gender" cssClass="form-control input-circle" />
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
                                                            <label class="col-md-3 control-label">Email</label>
                                                            <div class="col-md-5">
                                                                <form:input path="email" cssClass="form-control input-circle" />
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
                                                            <label class="col-md-3 control-label">Mật khẩu</label>
                                                            <div class="col-md-5">
                                                                <form:input path="password" cssClass="form-control input-circle" type="password"/>
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
                                                            <label class="col-md-3 control-label">Xác nhận mật khẩu</label>
                                                            <div class="col-md-5">
                                                                <form:input path="confirmPassword" cssClass="form-control input-circle" type="password"/>
                                                                <c:set var="confirmPasswordErrors"><form:errors path="confirmPassword"/></c:set>
                                                                <c:if test="${not empty confirmPasswordErrors}">
                                                                    <div class="field-error" style="color: red;">
                                                                        <i class="fa fa-exclamation-circle"></i>
                                                                        <form:errors path="confirmPassword" delimiter="<br><i class='fa fa-exclamation-circle'></i> " />
                                                                    </div>
                                                                </c:if>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="col-md-3 control-label">Số điện thoại</label>
                                                            <div class="col-md-5">
                                                                <form:input path="phone" cssClass="form-control input-circle" />
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
                                                            <label class="col-md-3 control-label">Địa chỉ</label>
                                                            <div class="col-md-5">
                                                                <form:input path="address" cssClass="form-control input-circle" />
                                                                <c:set var="addressErrors"><form:errors path="address"/></c:set>
                                                                <c:if test="${not empty addressErrors}">
                                                                    <div class="field-error" style="color: red;">
                                                                        <i class="fa fa-exclamation-circle"></i>
                                                                        <form:errors path="address" delimiter="<br><i class='fa fa-exclamation-circle'></i> " />
                                                                    </div>
                                                                </c:if>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="col-md-3 control-label">Phân quyền</label>
                                                            <div class="col-md-4">
                                                                <select name="role" class="form-control input-circle">
                                                                    <option value="admin" ${user.admin eq true ? 'selected' : ''}>Quản trị viên</option>
                                                                    <option value="member" ${user.admin eq false ? 'selected' : ''}>Người dùng</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="form-actions">
                                                            <div class="row">
                                                                <div class="col-md-offset-3 col-md-9">
                                                                    <button class="btn btn-circle blue">Xác nhận</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </form:form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- END PROFILE CONTENT -->
                </div>
            </div>

        </div>
    </div>
</div>

<script>
    jQuery(document).ready(function() {
        Metronic.init();
        Layout.init();
        Demo.init();
        TableManaged.init();
    });
</script>