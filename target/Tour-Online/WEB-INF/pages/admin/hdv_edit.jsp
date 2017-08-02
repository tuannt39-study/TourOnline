<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<div class="page-container">
	<div class="page-head">
		<div class="container">
			<div class="page-title">
				<h1>Hướng dẫn viên</h1>
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
					 <a href="<c:url value="/admin/huong-dan-vien"/>">Hướng dẫn viên</a><i class="fa fa-circle"></i>
				</li>
				<li class="active">
					 Nguyễn Thế Tuân
				</li>
			</ul>
			
			<div class="row margin-top-10">
				<div class="col-md-12">
					<!-- BEGIN PROFILE SIDEBAR -->
					<div class="profile-sidebar" style="width: 250px;">
						<!-- PORTLET MAIN -->
						<div class="portlet light profile-sidebar-portlet">
							<!-- SIDEBAR USERPIC -->
							<div class="profile-userpic">
								<img src="<c:url value="/static/assets/admin/pages/media/profile/profile_user.jpg"/>" class="img-responsive" alt=""/>
							</div>
							<!-- END SIDEBAR USERPIC -->
							<!-- SIDEBAR USER TITLE -->
							<div class="profile-usertitle">
								<div class="profile-usertitle-name">
									 Nguyễn Thế Tuân
								</div>
								<div class="profile-usertitle-job">
									 Hướng dẫn viên
								</div>
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
											<span class="caption-subject font-blue-madison bold uppercase">Thông tin</span>
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
															<label class="col-md-3 control-label">Trạng thái</label>
															<div class="col-md-4">
																<select class="form-control input-circle">
																	<option value="">Hoạt động</option>
																	<option value="">Chờ</option>
																	<option value="">Ngừng</option>
																</select>
															</div>
														</div>
														<div class="form-actions">
															<div class="row">
																<div class="col-md-offset-3 col-md-9">
																	<button formaction="/admin/huong-dan-vien" class="btn btn-circle blue">Xác nhận</button>
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
