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
				<li class="active">
					 Booking Tour
				</li>
            </ul>
            
            <div class="row">
				<div class="col-md-12">
					<!-- BEGIN EXAMPLE TABLE PORTLET-->
					<div class="portlet light">
						<div class="portlet-title">
							<div class="caption">
								<i class="fa fa-cogs font-green-sharp"></i>
								<span class="caption-subject font-green-sharp bold uppercase">Booking Tour</span>
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
							<table class="table table-striped table-bordered table-hover" id="sample_4">
							<thead>
							<tr>
								<th>
									 Ngày tạo
								</th>
								<th>
									 Người tạo
								</th>
								<th>
									 Tên tour
								</th>
								<th>
									 Ngày khởi hành
								</th>
								<th>
									 Người lớn (&gt;12)
								</th>
								<th>
									 Trẻ em (5 - 12)
								</th>
								<th>
									 Trẻ nhỏ (2 - 5)
								</th>
								<th>
									 Em bé (&lt;2)
								</th>
								<th>
									 Tổng cộng
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
							<tr class="odd gradeX">
								<td>
									 2017-04-20
								</td>
								<td>
									<a href="<c:url value="/admin/tai-khoan"/>">
									Nguyễn Thế Tuân </a>
								</td>
								<td>
									 11
								</td>
								<td>
									 2017-05-01
								</td>
								<td>
									 12
								</td>
								<td>
									 6
								</td>
								<td>
									 4
								</td>
								<td>
									 2
								</td>
								<td>
									 20000000
								</td>
								<td>
									<span class="label label-success">
									Xong </span>
								</td>
								<td>
									<a href="<c:url value="/admin/dat-tour"/>" class="btn btn-icon-only btn-circle yellow"><i class="fa fa-edit"></i></a>
								</td>
							</tr>
							<tr class="odd gradeX">
								<td>
									 2017-04-25
								</td>
								<td>
									 Nguyễn Thế Tuân
								</td>
								<td>
									 11
								</td>
								<td>
									 2017-05-15
								</td>
								<td>
									 12
								</td>
								<td>
									 6
								</td>
								<td>
									 4
								</td>
								<td>
									 2
								</td>
								<td>
									 20000000
								</td>
								<td>
									<span class="label label-primary">
									Duyệt </span>
								</td>
								<td>
									<a href="#" class="btn btn-icon-only btn-circle yellow"><i class="fa fa-edit"></i></a>
								</td>
							</tr>
							<tr class="odd gradeX">
								<td>
									 2017-05-01
								</td>
								<td>
									 Nguyễn Thế Tuân
								</td>
								<td>
									 11
								</td>
								<td>
									 2017-05-20
								</td>
								<td>
									 12
								</td>
								<td>
									 6
								</td>
								<td>
									 4
								</td>
								<td>
									 2
								</td>
								<td>
									 20000000
								</td>
								<td>
									<span class="label label-info">
									Chờ duyệt </span>
								</td>
								<td>
									<a href="#" class="btn btn-icon-only btn-circle yellow"><i class="fa fa-edit"></i></a>
								</td>
							</tr>
							<tr class="odd gradeX">
								<td>
									 2017-05-05
								</td>
								<td>
									 Nguyễn Thế Tuân
								</td>
								<td>
									 11
								</td>
								<td>
									 2017-05-30
								</td>
								<td>
									 12
								</td>
								<td>
									 6
								</td>
								<td>
									 4
								</td>
								<td>
									 2
								</td>
								<td>
									 20000000
								</td>
								<td>
									<span class="label label-default">
									Hủy </span>
								</td>
								<td>
									<a href="#" class="btn btn-icon-only btn-circle yellow"><i class="fa fa-edit"></i></a>
								</td>
							</tr>
							<tr class="odd gradeX">
								<td>
									 2017-05-11
								</td>
								<td>
									 Nguyễn Thế Tuân
								</td>
								<td>
									 11
								</td>
								<td>
									 2017-06-01
								</td>
								<td>
									 12
								</td>
								<td>
									 6
								</td>
								<td>
									 4
								</td>
								<td>
									 2
								</td>
								<td>
									 20000000
								</td>
								<td>
									<span class="label label-info">
									Chờ duyệt </span>
								</td>
								<td>
									<a href="#" class="btn btn-icon-only btn-circle yellow"><i class="fa fa-edit"></i></a>
								</td>
							</tr>
							<tr class="odd gradeX">
								<td>
									 2017-05-20
								</td>
								<td>
									 Nguyễn Thế Tuân
								</td>
								<td>
									 11
								</td>
								<td>
									 2017-06-11
								</td>
								<td>
									 12
								</td>
								<td>
									 6
								</td>
								<td>
									 4
								</td>
								<td>
									 2
								</td>
								<td>
									 20000000
								</td>
								<td>
									<span class="label label-info">
									Chờ duyệt </span>
								</td>
								<td>
									<a href="#" class="btn btn-icon-only btn-circle yellow"><i class="fa fa-edit"></i></a>
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
