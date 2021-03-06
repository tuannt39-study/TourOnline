<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<div class="main">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="/">Trang chủ</a></li>
            <li class="active">Đặt tour</li>
        </ul>
        <!-- BEGIN SIDEBAR & CONTENT -->
        <div class="row margin-bottom-40">
            <!-- BEGIN SIDEBAR -->
            <div class="sidebar col-md-3 col-sm-3">

            </div>
            <!-- END SIDEBAR -->

            <!-- BEGIN CONTENT -->
            <div class="col-md-9 col-sm-9">
                <h1>Đăng ký đặt tour</h1>
                <div class="content-form-page">
                    <div class="row">
                        <div class="col-md-7 col-sm-7">
                            <form class="form-horizontal" role="form">
                                <fieldset>
                                    <legend>Thông tin cá nhân</legend>
                                    <div class="form-group">
                                        <label for="firstname" class="col-lg-4 control-label">Tên <span class="require">*</span></label>
                                        <div class="col-lg-8">
                                            <input type="text" class="form-control" id="firstname"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="lastname" class="col-lg-4 control-label">Họ <span class="require">*</span></label>
                                        <div class="col-lg-8">
                                            <input type="text" class="form-control" id="lastname"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="email" class="col-lg-4 control-label">Email <span class="require">*</span></label>
                                        <div class="col-lg-8">
                                            <input type="text" class="form-control" id="email"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="persion" class="col-lg-4 control-label">Số người đi tour <span class="require">*</span></label>
                                        <div class="col-lg-8">
                                            <input type="text" class="form-control" id="persion"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="tel" class="col-lg-4 control-label">Số điện thoại <span class="require">*</span></label>
                                        <div class="col-lg-8">
                                            <input type="text" class="form-control" id="tel"/>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label>Ghi ch&#250;</label>
                                        <div>
                                            <textarea class="form-control input-lg" cols="20" id="note" name="note" rows="4"></textarea>
                                        </div>
                                    </div>


                                </fieldset>


                                <div class="row">
                                    <div class="col-lg-8 col-md-offset-4 padding-left-0 padding-top-20">
                                        <button type="submit" class="btn btn-primary">Đặt tour</button>
                                        <a href="/"><button type="button" class="btn btn-default">Hủy bỏ</button></a>
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