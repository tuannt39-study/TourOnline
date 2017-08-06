<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                <li class="active">
                    Tài khoản
                </li>
            </ul>

            <div class="row">
                <div class="col-md-12">
                    <!-- BEGIN EXAMPLE TABLE PORTLET-->
                    <div class="portlet light">
                        <div class="portlet-title">
                            <div class="caption">
                                <i class="fa fa-cogs font-green-sharp"></i>
                                <span class="caption-subject font-green-sharp bold uppercase">Tài khoản</span>
                            </div>
                        </div>
                        <c:if test="${not empty success}">
                            <div class="alert alert-success alert-dismissible">
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                                <i class="icon fa fa-check"></i> ${success}
                            </div>
                        </c:if>

                        <c:if test="${not empty error}">
                            <div class="alert alert-danger alert-dismissible">
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                                <i class="icon fa fa-exclamation-triangle"></i> ${error}
                            </div>
                        </c:if>
                        <div class="portlet-body">
                            <div class="table-toolbar">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="btn-group">
                                            <a href="<c:url value="/admin/tai-khoan/add"/>">
                                                <button id="sample_editable_1_new" class="btn green"> Tạo mới <i class="fa fa-plus"></i> </button>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <c:choose>
                                <c:when test="${empty users}">
                                    <p>Chưa có tài khoản!</p>
                                </c:when>
                                <c:otherwise>
                            <table class="table table-striped table-bordered table-hover" id="sample_5">
                                <thead>
                                <tr>
                                    <th>
                                        ID
                                    </th>
                                    <th>
                                        Email
                                    </th>
                                    <th>
                                        Họ tên
                                    </th>
                                    <th>
                                        Số điện thoại
                                    </th>
                                    <th>
                                        Địa chỉ
                                    </th>
                                    <th>
                                        Phân quyền
                                    </th>
                                    <th>
                                        Sửa
                                    </th>
                                    <th>
                                        Xóa
                                    </th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${users}" var="user" >
                                <tr class="odd gradeX">
                                    <td align="center">${user.id}</td>
                                    <td align="center">
                                        <a href="mailto:${user.email}"> ${user.email} </a>
                                    </td>
                                    <td align="center">
                                        <a href="<c:url value="/admin/tai-khoan/${user.id}"/>"> ${user.name} </a>
                                    </td>
                                    <td align="center">${user.phone}</td>
                                    <td align="center">${user.address}</td>

                                    <td align="center">
                                    <c:choose>
                                        <c:when test="${user.admin}">
                                            <span class="label label-danger">Quản trị viên</span>
                                        </c:when>
                                        <c:otherwise>
                                            <span class="label label-info">Người dùng</span>
                                        </c:otherwise>
                                    </c:choose>
                                    </td>
                                    <td align="center">
                                        <a href="<c:url value="/admin/tai-khoan/${user.id}/edit"/>" title="Sửa tài khoản" class="btn btn-icon-only btn-circle yellow"><i class="fa fa-edit"></i></a>
                                    </td>
                                    <td align="center">
                                        <a href="<c:url value="/admin/tai-khoan/${user.id}/delete"/>" title="Xóa tài khoản" class="btn btn-icon-only btn-circle red"><i class="fa fa-times"></i></a>
                                    </td>
                                </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                                </c:otherwise>
                            </c:choose>
                        </div>
                    </div>
                    <!-- END EXAMPLE TABLE PORTLET-->
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