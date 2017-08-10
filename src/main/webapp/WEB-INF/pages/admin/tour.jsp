<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
                    Tour
                </li>
            </ul>

            <div class="row">
                <div class="col-md-12">
                    <!-- BEGIN EXAMPLE TABLE PORTLET-->
                    <div class="portlet light">
                        <div class="portlet-title">
                            <div class="caption">
                                <i class="fa fa-cogs font-green-sharp"></i>
                                <span class="caption-subject font-green-sharp bold uppercase">Tour</span>
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
                                            <a href="<c:url value="/admin/tour/add"/>">
                                                <button id="sample_editable_1_new" class="btn green"> Tạo mới <i class="fa fa-plus"></i> </button>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <c:choose>
                                <c:when test="${empty tours}">
                                    <p>Chưa có tour!</p>
                                </c:when>
                                <c:otherwise>
                            <table class="table table-striped table-bordered table-hover" id="sample_6">
                                <thead>
                                <tr>
                                    <th>
                                        ID
                                    </th>
                                    <th>
                                        Tên Tour
                                    </th>
                                    <th>
                                        Ảnh tour
                                    </th>
                                    <th>
                                        Thời gian
                                    </th>
                                    <th>
                                        Gíá
                                    </th>
                                    <th>
                                        Giá khuyến mãi
                                    </th>
                                    <th>
                                        Dịch vụ
                                    </th>
                                    <th>
                                        Nơi khởi hành
                                    </th>
                                    <th>
                                        Ngày tạo
                                    </th>
                                    <th>
                                        Người tạo
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
                                <c:forEach items="${tours}" var="tour" >
                                    <tr class="odd gradeX">
                                        <td align="center">${tour.id}</td>
                                        <td align="center">${tour.name}</td>
                                        <td align="center">${tour.image}</td>
                                        <td align="center">${tour.length}</td>
                                        <td align="center">${tour.origin}</td>
                                        <td align="center">${tour.promotion}</td>
                                        <td align="center">${tour.service}</td>
                                        <td align="center">${tour.address}</td>
                                        <td align="center">${tour.createdAt}</td>
                                        <td align="center">${tour.user.name}</td>
                                        <td align="center">
                                            <a href="<c:url value="/admin/tour/${tour.id}/edit"/>" title="Sửa tour" class="btn btn-icon-only btn-circle yellow"><i class="fa fa-edit"></i></a>
                                        </td>
                                        <td align="center">
                                            <a href="<c:url value="/admin/tour/${tour.id}/delete"/>" title="Xóa tour" class="btn btn-icon-only btn-circle red" onclick="return confirmDelete('tour');"><i class="fa fa-times"></i></a>
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