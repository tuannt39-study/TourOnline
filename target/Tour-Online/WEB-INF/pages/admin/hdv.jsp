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
				<h1>Hướng dẫn viên</h1>
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
					 Hướng dẫn viên
				</li>
            </ul>
            
            <div class="row">
				<div class="col-md-12">
					<!-- BEGIN EXAMPLE TABLE PORTLET-->
					<div class="portlet light">
						<div class="portlet-title">
							<div class="caption">
								<i class="fa fa-cogs font-green-sharp"></i>
								<span class="caption-subject font-green-sharp bold uppercase">Hướng dẫn viên</span>
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
							<table class="table table-striped table-bordered table-hover" id="sample_2">
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
									 Trạng thái
								</th>
								<th>
									 Sửa
								</th>
							</tr>
							</thead>
							<tbody>
							<tr class="odd gradeX">
								<td>
									 1
								</td>
								<td>
									<a href="mailto:tuannt@gmail.com">
									tuannt@gmail.com </a>
								</td>
								<td>
									<a href="/admin/huong-dan-vien">
									Nguyễn Thế Tuân </a>
								</td>
								<td>
									 0963340577
								</td>
								<td>
									 Hà Nội
								</td>
								<td>
									<span class="label label-success">
									Hoạt động </span>
								</td>
								<td>
									<a href="/admin/huong-dan-vien" class="btn btn-icon-only btn-circle yellow"><i class="fa fa-edit"></i></a>
								</td>
							</tr>
							<tr class="odd gradeX">
								<td>
									 2
								</td>
								<td>
									<a href="mailto:anhvt@gmail.com">
									anhvt@gmail.com </a>
								</td>
								<td>
									 Vũ Tuấn Anh
								</td>
								<td>
									 0963340577
								</td>
								<td>
									 Hà Nội
								</td>
								<td>
									<span class="label label-default">
									Ngừng </span>
								</td>
								<td>
									<a href="#" class="btn btn-icon-only btn-circle yellow"><i class="fa fa-edit"></i></a>
								</td>
							</tr>
							<tr class="odd gradeX">
								<td>
									 3
								</td>
								<td>
									<a href="mailto:viethq@yahoo.com">
									viethq@yahoo.com </a>
								</td>
								<td>
									 Hà Quốc Việt
								</td>
								<td>
									 0963340577
								</td>
								<td>
									 Hà Nội
								</td>
								<td>
									<span class="label label-info">
									Chờ </span>
								</td>
								<td>
									<a href="#" class="btn btn-icon-only btn-circle yellow"><i class="fa fa-edit"></i></a>
								</td>
							</tr>
							<tr class="odd gradeX">
								<td>
									 4
								</td>
								<td>
									<a href="mailto:htucmt@gmail.com">
									thuctm@gmail.com </a>
								</td>
								<td>
									 Trương Minh Thức
								</td>
								<td>
									 0963340577
								</td>
								<td>
									 Hà Nội
								</td>
								<td>
									<span class="label label-default">
									Ngừng </span>
								</td>
								<td>
									<a href="#" class="btn btn-icon-only btn-circle yellow"><i class="fa fa-edit"></i></a>
								</td>
							</tr>
							<tr class="odd gradeX">
								<td>
									 5
								</td>
								<td>
									<a href="mailto:tuannv@gmail.com">
									tuannv@gmail.com </a>
								</td>
								<td>
									 Nguyễn Văn Tuấn
								</td>
								<td>
									 0963340577
								</td>
								<td>
									 Hà Nội
								</td>
								<td>
									<span class="label label-success">
									Hoạt động </span>
								</td>
								<td>
									<a href="#" class="btn btn-icon-only btn-circle yellow"><i class="fa fa-edit"></i></a>
								</td>
							</tr>
							<tr class="odd gradeX">
								<td>
									 6
								</td>
								<td>
									<a href="mailto:hapn@gmail.com">
									hapn@gmail.com </a>
								</td>
								<td>
									 Phạm Ngọc Hà
								</td>
								<td>
									 0963340577
								</td>
								<td>
									 Hà Nội
								</td>
								<td>
									<span class="label label-success">
									Hoạt động </span>
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
