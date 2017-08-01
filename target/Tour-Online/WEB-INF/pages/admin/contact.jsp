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
				<h1>Liên hệ</h1>
			</div>
		</div>
	</div>
	<div class="page-content">
		<div class="container">
			<ul class="page-breadcrumb breadcrumb">
				<li>
					<a href="/admin">Trang chủ</a><i class="fa fa-circle"></i>
				</li>
				<li class="active">
					 Liên hệ
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
											<span class="caption-subject font-blue-madison bold uppercase">Thông tin</span>
										</div>
										<div style="float: right;">
											<a href="/admin/huong-dan-vien" class="btn btn-icon-only btn-circle yellow"><i class="fa fa-edit"></i></a>
										</div>
									</div>
									<div class="portlet-body">
										<div class="tab-content">
											<div class="tab-pane active">
												<form role="form" action="#" class="form-horizontal">
													<div class="form-body">
														<div class="form-group">
															<label class="col-md-3 control-label">Địa chỉ</label>
															<div class="col-md-4">
																<span class="form-control-static">190 Pasteur, Phường 6, Quận 3, Tp. HCM </span>
															</div>
														</div>
														<div class="form-group">
															<label class="col-md-3 control-label">Số điện thoại</label>
															<div class="col-md-4">
																<span class="form-control-static">(+84 28)963340577 </span>
															</div>
														</div>
														<div class="form-group">
															<label class="col-md-3 control-label">Fax</label>
															<div class="col-md-4">
																<span class="form-control-static">(+84 28)963340577 </span>
															</div>
														</div>
														<div class="form-group">
															<label class="col-md-3 control-label">Email</label>
															<div class="col-md-4">
																<span class="form-control-static">tuannt39@gmail.com </span>
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
											<span class="caption-subject font-blue-madison bold uppercase">Địa điểm</span>
										</div>
										<div style="float: right;">
											<a href="/admin/huong-dan-vien" class="btn btn-icon-only btn-circle yellow"><i class="fa fa-edit"></i></a>
										</div>
									</div>
									<div class="portlet-body">
										<h4 class="block">Trong nước </h4>
										<ul class="list-group">
											<li class="list-group-item">
												Hà Nội
											</li>
											<li class="list-group-item">
												Hạ Long
											</li>
											<li class="list-group-item">
												Đà Nẵng
											</li>
											<li class="list-group-item">
												Đà Lạt
											</li>
											<li class="list-group-item">
												Phú Quốc
											</li>
										</ul>
									</div>
									<div class="portlet-body">
										<h4 class="block">Quốc tế </h4>
										<ul class="list-group">
											<li class="list-group-item">
												Singapore
											</li>
											<li class="list-group-item">
												Thái lan
											</li>
											<li class="list-group-item">
												Nhật Bản
											</li>
											<li class="list-group-item">
												Hàn Quốc
											</li>
											<li class="list-group-item">
												Hồng Kông - Macau
											</li>
										</ul>
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
