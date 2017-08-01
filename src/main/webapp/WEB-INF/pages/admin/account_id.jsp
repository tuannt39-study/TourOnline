<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
					<a href="/admin">Trang chủ</a><i class="fa fa-circle"></i>
				</li>
				<li>
					 <a href="/admin/tai-khoan">Tài khoản</a><i class="fa fa-circle"></i>
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
									 Người dùng
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
										<div style="float: right;">
											<a href="#" class="btn btn-icon-only btn-circle yellow"><i class="fa fa-edit"></i></a>
										</div>
									</div>
									<div class="portlet-body">
										<div class="tab-content">
											<div class="tab-pane active">
												<form role="form" action="#" class="form-horizontal">
													<div class="form-body">
														<div class="form-group">
															<label class="col-md-3 control-label">Email</label>
															<div class="col-md-4">
																<span class="form-control-static">tuannt@gmail.com </span>
															</div>
														</div>
														<div class="form-group">
															<label class="col-md-3 control-label">Số điện thoại</label>
															<div class="col-md-4">
																<span class="form-control-static">0963340577 </span>
															</div>
														</div>
														<div class="form-group">
															<label class="col-md-3 control-label">Địa chỉ</label>
															<div class="col-md-4">
																<span class="form-control-static">Hà Nội </span>
															</div>
														</div>
														<div class="form-group">
															<label class="col-md-3 control-label">Tour đã đặt </label>
															<div class="col-md-4">
																<a href="/admin/tour" class="form-control-static">11</a> (1 lần) - 
																<a href="/admin/tour" class="form-control-static">12</a> (2 lần) 
															</div>
														</div>
														<div class="form-group">
															<label class="col-md-3 control-label">Trạng thái</label>
															<div class="col-md-4">
																<span class="form-control-static">Hoạt động </span>
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
