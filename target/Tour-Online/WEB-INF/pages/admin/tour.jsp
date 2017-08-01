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
						<div class="portlet-body">
							<div class="table-toolbar">
								<div class="row">
									<div class="col-md-6">
										<div class="btn-group">
											<button id="sample_editable_1_new" class="btn green">
											Tạo mới <i class="fa fa-plus"></i>
											</button>
										</div>
									</div>
								</div>
							</div>
							<table class="table table-striped table-bordered table-hover" id="sample_3">
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
									 Nơi khởi hành
								</th>
								<th>
									 Dịch vụ
								</th>
								<th>
									 Trạng thái
								</th>
								<th>
									 Tùy chọn
								</th>
							</tr>
							</thead>
							<tbody>
							<tr class="odd gradeX" th:each="tour, iterStat : ${tours}">
								<td th:text="${iterStat.count}"></td>
								<td th:text="${tour.name}"> </td>
								<td th:text="${tour.image}"> </td>
								<td th:text="${tour.length}"> </td>
								<td th:text="${tour.origin}"> </td>
								<td th:text="${tour.promotion}"> </td>
								<td>
									<span class="label label-primary">
									Duyệt </span>
								</td>
								<td>
									<a th:href="@{/admin/tour/{id}/edit(id=${tour.id})}" class="btn btn-icon-only btn-circle yellow"><i class="fa fa-edit"></i></a>
								</td>
								<td>
									<a th:href="@{/admin/tour/{id}/delete(id=${tour.id})}" th:attr="onclick='return confirm(\'Bạn có đồng ý xóa tour này không?\');'" class="btn btn-icon-only btn-circle red"><i class="fa fa-times-circle"></i></a>
								</td>
							</tr>
							</tbody>
							</table>
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
