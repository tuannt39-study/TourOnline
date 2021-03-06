<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<div class="page-container">
    <div class="page-head">
        <div class="container">
            <div class="page-title">
                <h1>Booking Tour</h1>
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
                    <a href="<c:url value="/admin/dat-tour"/>">Booking Tour</a><i class="fa fa-circle"></i>
                </li>
                <li class="active">
                    Booking Tour
                </li>
            </ul>

            <div class="row margin-top-10">
                <div class="col-md-12">
                    <!-- BEGIN PROFILE CONTENT -->
                    <div class="profile-content">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="portlet light">
                                    <div class="portlet-title tabbable-line">
                                        <div class="caption caption-md">
                                            <i class="icon-globe theme-font hide"></i>
                                            <span class="caption-subject font-blue-madison bold uppercase">Người đại diện</span>
                                        </div>
                                    </div>
                                    <div class="portlet-body">
                                        <div class="tab-content">
                                            <div class="tab-pane active">
                                                <form role="form" action="#" class="form-horizontal">
                                                    <div class="form-body">
                                                        <div class="form-group">
                                                            <label class="col-md-3 control-label">Họ tên</label>
                                                            <div class="col-md-5">
                                                                <input type="text" class="form-control input-circle" placeholder="Họ tên"/>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="col-md-3 control-label">Email</label>
                                                            <div class="col-md-5">
                                                                <input type="text" class="form-control input-circle" placeholder="Email"/>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="col-md-3 control-label">Số điện thoại</label>
                                                            <div class="col-md-5">
                                                                <input type="text" class="form-control input-circle" placeholder="Số điện thoại"/>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="col-md-3 control-label">Địa chỉ</label>
                                                            <div class="col-md-5">
                                                                <input type="text" class="form-control input-circle" placeholder="Địa chỉ"/>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="col-md-3 control-label">Ghi chú</label>
                                                            <div class="col-md-8">
                                                                <textarea cols="22" rows="8" class="form-control input-circle" placeholder="Ghi chú"></textarea>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="portlet light">
                                    <div class="portlet-title tabbable-line">
                                        <div class="caption caption-md">
                                            <i class="icon-globe theme-font hide"></i>
                                            <span class="caption-subject font-blue-madison bold uppercase">Booking Tour</span>
                                        </div>
                                    </div>
                                    <div class="portlet-body">
                                        <div class="tab-content">
                                            <div class="tab-pane active">
                                                <form role="form" action="#" class="form-horizontal">
                                                    <div class="form-body">
                                                        <div class="form-group">
                                                            <label class="col-md-3 control-label">Tên Tour</label>
                                                            <div class="col-md-8">
                                                                <input type="text" class="form-control input-circle" placeholder="Tên Tour"/>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="col-md-3 control-label">Ngày khởi hành</label>
                                                            <div class="col-md-5">
                                                                <input type="text" class="form-control input-circle" placeholder="Ngày khởi hành"/>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="col-md-3 control-label">Người lớn (>12)</label>
                                                            <div class="col-md-5">
                                                                <input type="text" class="form-control input-circle" placeholder="Người lớn"/>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="col-md-3 control-label">Trẻ em (5 - 12)</label>
                                                            <div class="col-md-5">
                                                                <input type="text" class="form-control input-circle" placeholder="Trẻ em"/>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="col-md-3 control-label">Trẻ nhỏ (2 - 5)</label>
                                                            <div class="col-md-5">
                                                                <input type="text" class="form-control input-circle" placeholder="Trẻ nhỏ"/>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="col-md-3 control-label">Em bé (<2)</label>
                                                            <div class="col-md-5">
                                                                <input type="text" class="form-control input-circle" placeholder="Em bé"/>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="col-md-3 control-label">Trạng thái</label>
                                                            <div class="col-md-4">
                                                                <select class="form-control input-circle">
                                                                    <option value="">Xong</option>
                                                                    <option value="">Duyệt</option>
                                                                    <option value="">Chờ duyệt</option>
                                                                    <option value="">Hủy</option>
                                                                </select>
                                                            </div>
                                                        </div>
                                                        <div class="form-actions">
                                                            <div class="row">
                                                                <div class="col-md-offset-3 col-md-9">
                                                                    <button formaction="./booking.html" class="btn btn-circle blue">Xác nhận</button>
                                                                    <button class="btn btn-circle default">Hủy</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </form>
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