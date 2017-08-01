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
				<h1>Hackademics Hà Nội</h1>
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
					 Trang chủ
				</li>
			</ul>

			<div class="row">
				<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 margin-bottom-10">
					<a class="dashboard-stat dashboard-stat-light blue-madison" href="#">
					<div class="visual">
						<i class="fa fa-briefcase fa-icon-medium"></i>
					</div>
					<div class="details">
						<div class="number">
							 20
						</div>
						<div class="desc">
							 Tour đã đặt tháng 7
						</div>
					</div>
					</a>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
					<a class="dashboard-stat dashboard-stat-light red-intense" href="#">
					<div class="visual">
						<i class="fa fa-shopping-cart"></i>
					</div>
					<div class="details">
						<div class="number">
							 500,000,000 VNĐ
						</div>
						<div class="desc">
							 Doanh thu tháng 7
						</div>
					</div>
					</a>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
					<a class="dashboard-stat dashboard-stat-light green-haze" href="#">
					<div class="visual">
						<i class="fa fa-group fa-icon-medium"></i>
					</div>
					<div class="details">
						<div class="number">
							 3000
						</div>
						<div class="desc">
							 Tổng tài khoản
						</div>
					</div>
					</a>
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
   Index.init();
   Tasks.initDashboardWidget();
});
</script>
