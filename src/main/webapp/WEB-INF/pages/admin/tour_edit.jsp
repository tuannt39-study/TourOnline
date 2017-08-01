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
				<li>
					<a href="/admin/tour">Tour</a><i class="fa fa-circle"></i>
				</li>
				<li class="active">
					 Tên Tour
				</li>
            </ul>
			<div class="row margin-top-10">
				<div class="col-md-12">
					<!-- BEGIN PROFILE CONTENT -->
					<div class="profile-content">
						<div class="row">
							<div class="col-md-4">
								<div class="portlet light">
									<div class="portlet-title tabbable-line">
										<div class="caption caption-md">
											<i class="icon-globe theme-font hide"></i>
											<span class="caption-subject font-blue-madison bold uppercase">Giá Tour</span>
										</div>
									</div>
									<div class="portlet-body">
										<div class="tab-content">
											<div class="tab-pane active">
												<form role="form" action="#" class="form-horizontal">
													<div class="form-body">
														<div class="form-group">
															<label class="col-md-5 control-label">Thời gian</label>
															<div class="col-md-7">
																<input type="text" class="form-control input-circle" placeholder="Thời gian"/>
															</div>
														</div>
														<div class="form-group">
															<label class="col-md-5 control-label">Dịch vụ</label>
															<div class="col-md-7">
																<input type="text" class="form-control input-circle" placeholder="Dịch vụ"/>
															</div>
														</div>
														<div class="form-group">
															<label class="col-md-5 control-label">Giá Tour</label>
															<div class="col-md-7">
																<input type="text" class="form-control input-circle" placeholder="Giá"/>
															</div>
														</div>
														<div class="form-group">
															<label class="col-md-5 control-label">Giá khuyến mãi</label>
															<div class="col-md-7">
																<input type="text" class="form-control input-circle" placeholder="Giá khuyến mãi"/>
															</div>
														</div>
													</div>
												</form>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-8">
								<div class="portlet light">
									<div class="portlet-title tabbable-line">
										<div class="caption caption-md">
											<i class="icon-globe theme-font hide"></i>
											<span class="caption-subject font-blue-madison bold uppercase">Thông tin Tour</span>
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
															<label class="col-md-3 control-label">Ảnh tour</label>
															<div class="col-md-6">
																<input type="text" class="form-control input-circle" placeholder="Ảnh tour"/>
															</div>
														</div>
														<div class="form-group">
															<label class="col-md-3 control-label">Nơi khởi hành</label>
															<div class="col-md-4">
																<input type="text" class="form-control input-circle" placeholder="Nơi khởi hành"/>
															</div>
														</div>
														<div class="form-group">
															<label class="col-md-3 control-label">Trạng thái</label>
															<div class="col-md-4">
																<select class="form-control input-circle">
																	<option value="">Duyệt</option>
																	<option value="">Chờ duyệt</option>
																	<option value="">Hủy</option>
																</select>
															</div>
														</div>
														<div class="form-actions">
															<div class="row">
																<div class="col-md-offset-3 col-md-9">
																	<button formaction="/admin/tour" class="btn btn-circle blue">Xác nhận</button>
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
							<div class="col-md-12">
								<div class="portlet light">
									<div class="portlet-title tabbable-line">
										<div class="caption caption-md">
											<i class="icon-globe theme-font hide"></i>
											<span class="caption-subject font-blue-madison bold uppercase">Chi tiết Tour</span>
										</div>
									</div>
									<div class="portlet-body">
										<div class="tab-content">
											<div class="tab-pane active">
												<form role="form" action="#" class="form-horizontal">
													<div class="form-body">
														<div class="form-group last">
															<div class="col-md-12">
																<textarea class="ckeditor" name="editor" id="editor">

																	<h1
																	style="text-align:center"><span style="font-family:Georgia,serif"><span style="color:#006699">Recognition of
																						Achievement</span></span></h1>

																	<p style="text-align:justify"><span style="font-family:Georgia,serif">This letter acknowledges the invaluable input <strong>you</strong>, as a member
																						of our <em>Innovation Team</em>,&nbsp;have provided in the &ldquo;Implement Rich Text Editor&rdquo;&nbsp;project. The Management would like to hereby thank you for this great accomplishment that was delivered in a timely fashion, up to the highest company standards, and with great results:</span></p>

																	<table border="1" bordercolor="#ccc" cellpadding="5" cellspacing="0"
																		style="border-collapse:collapse;width:100%" summary="Project Schedule">
																	<thead>
																	<tr>
																		<th scope="col" style="background-color:#cccccc"><span style="font-family:Georgia,serif">Project Phase</span></th>
																		<th scope="col" style="background-color:#cccccc"><span style="font-family:Georgia,serif">Deadline</span></th>
																		<th scope="col" style="background-color:#cccccc"><span style="font-family:Georgia,serif">Status</span></th>
																	</tr>
																	</thead>
																	<tbody>
																	<tr>
																		<td><span style="font-family:Georgia,serif">Phase 1: Market research</span></td>
																		<td style="text-align:center"><span style="font-family:Georgia,serif">2016-10-15</span></td>
																		<td style="text-align:center"><span style="font-family:Georgia,serif"><span style="color:#19b159">✓</span></span></td>
																	</tr>
																	<tr>
																		<td style="background-color:#eeeeee"><span style="font-family:Georgia,serif">Phase 2: Editor implementation</span></td>
																		<td style="background-color:#eeeeee; text-align:center"><span style="font-family:Georgia,serif">2016-10-20</span></td>
																		<td style="background-color:#eeeeee; text-align:center"><span style="font-family:Georgia,serif"><span style="color:#19b159">✓</span></span></td>
																	</tr>
																	<tr>
																		<td><span style="font-family:Georgia,serif">Phase 3: Rollout to Production</span></td>
																		<td style="text-align:center"><span style="font-family:Georgia,serif">2016-10-22</span></td>
																		<td style="text-align:center"><span style="font-family:Georgia,serif"><span style="color:#19b159">✓</span></span></td>
																	</tr>
																	</tbody>
																	</table>

																	<p style="text-align:justify"><span style="font-family:Georgia,serif">The project that you participated in is of utmost importance to the future success of our platform. &nbsp;We are very proud to share that&nbsp;the&nbsp;CKEditor implementation was a huge success and brought congratulations from both the key Stakeholders and the Customers:</span></p>

																	<blockquote>
																	<p style="text-align:center">This new editor has totally changed our content creation experience!</p>

																	<p style="text-align:center">&mdash; John F. Smith, CEO, The New Web</p>
																	</blockquote>

																	<p style="text-align:justify"><span style="font-family:Georgia,serif">This letter recognizes that much of our success is directly attributable to your efforts.&nbsp;You deserve to be proud of your achievement. May your future efforts be equally successful and rewarding.</span></p>

																	<p style="text-align:justify"><span style="font-family:Georgia,serif">I am sure we will be seeing and hearing a great deal more about your accomplishments in the future. Keep up the good work!</span></p>

																	<p>&nbsp;</p>

																	<p><span style="font-family:Georgia,serif">Best regards,</span></p>

																	<p><span style="font-family:Georgia,serif"><em>The Management</em></span></p>

																</textarea>
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
CKEDITOR.config.resize_enabled = false;
CKEDITOR.config.width = '100%';
CKEDITOR.config.height = '600px';
</script>
