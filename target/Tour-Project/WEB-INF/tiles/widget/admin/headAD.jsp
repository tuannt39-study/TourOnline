<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta content="width=device-width, initial-scale=1" name="viewport" />
<link href="<c:url value="/static/assets/global/plugins/font-awesome/css/font-awesome.min.css"/>" rel="stylesheet" type="text/css" />
<link href="<c:url value="/static/assets/global/plugins/simple-line-icons/simple-line-icons.min.css"/>" rel="stylesheet" type="text/css" />
<link href="<c:url value="/static/assets/global/plugins/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet" type="text/css" />
<link href="<c:url value="/static/assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css"/>" rel="stylesheet" type="text/css" />
<link href="<c:url value="/static/assets/global/plugins/uniform/css/uniform.default.css"/>" rel="stylesheet" type="text/css" />
<link href="<c:url value="/static/assets/global/plugins/bootstrap-fileinput/bootstrap-fileinput.css"/>" rel="stylesheet" type="text/css" />
<link href="<c:url value="/static/assets/global/plugins/jqvmap/jqvmap/jqvmap.css"/>" rel="stylesheet" type="text/css" />
<link href="<c:url value="/static/assets/global/plugins/morris/morris.css"/>" rel="stylesheet" type="text/css" />
<link href="<c:url value="/static/assets/global/plugins/select2/select2.css"/>" rel="stylesheet" type="text/css" />
<link href="<c:url value="/static/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.css"/>" rel="stylesheet" type="text/css" />
<link href="<c:url value="/static/assets/global/css/components.css"/>" rel="stylesheet" type="text/css" />
<link href="<c:url value="/static/assets/global/css/plugins.css"/>" rel="stylesheet" type="text/css" />
<link href="<c:url value="/static/assets/admin/pages/css/profile.css"/>" rel="stylesheet" type="text/css" />
<link href="<c:url value="/static/assets/admin/pages/css/tasks.css"/>" rel="stylesheet" type="text/css" />
<link href="<c:url value="/static/assets/admin/layout3/css/layout.css"/>" rel="stylesheet" type="text/css" />
<link href="<c:url value="/static/assets/admin/layout3/css/themes/default.css"/>" rel="stylesheet" type="text/css" id="style_color" />
<link href="<c:url value="/static/assets/admin/layout3/css/custom.css"/>" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="<c:url value="/static/assets/favicon.ico"/>" />
<script src="<c:url value="/static/assets/global/plugins/jquery.min.js"/>" type="text/javascript"></script>
<script src="<c:url value="/static/assets/global/plugins/jquery-migrate.min.js"/>" type="text/javascript"></script>
<script src="<c:url value="/static/assets/global/plugins/jquery-ui/jquery-ui-1.10.3.custom.min.js"/>" type="text/javascript"></script>
<script src="<c:url value="/static/assets/global/plugins/bootstrap/js/bootstrap.min.js"/>" type="text/javascript"></script>
<script src="<c:url value="/static/assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js"/>" type="text/javascript"></script>
<script src="<c:url value="/static/assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js"/>" type="text/javascript"></script>
<script src="<c:url value="/static/assets/global/plugins/jquery.blockui.min.js"/>" type="text/javascript"></script>
<script src="<c:url value="/static/assets/global/plugins/jquery.cokie.min.js"/>" type="text/javascript"></script>
<script src="<c:url value="/static/assets/global/plugins/jquery.sparkline.min.js"/>" type="text/javascript"></script>
<script src="<c:url value="/static/assets/global/plugins/uniform/jquery.uniform.min.js"/>" type="text/javascript"></script>
<script src="<c:url value="/static/assets/global/plugins/jqvmap/jqvmap/jquery.vmap.js"/>" type="text/javascript"></script>
<script src="<c:url value="/static/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.russia.js"/>" type="text/javascript"></script>
<script src="<c:url value="/static/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.world.js"/>" type="text/javascript"></script>
<script src="<c:url value="/static/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.europe.js"/>" type="text/javascript"></script>
<script src="<c:url value="/static/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.germany.js"/>" type="text/javascript"></script>
<script src="<c:url value="/static/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.usa.js"/>" type="text/javascript"></script>
<script src="<c:url value="/static/assets/global/plugins/jqvmap/jqvmap/data/jquery.vmap.sampledata.js"/>" type="text/javascript"></script>
<script src="<c:url value="/static/assets/global/plugins/morris/morris.min.js"/>" type="text/javascript"></script>
<script src="<c:url value="/static/assets/global/plugins/morris/raphael-min.js"/>" type="text/javascript"></script>
<script src="<c:url value="/static/assets/global/plugins/select2/select2.min.js"/>" type="text/javascript"></script>
<script src="<c:url value="/static/assets/global/plugins/datatables/media/js/jquery.dataTables.min.js"/>" type="text/javascript"></script>
<script src="<c:url value="/static/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.js"/>" type="text/javascript"></script>
<script src="<c:url value="/static/assets/global/plugins/bootstrap-fileinput/bootstrap-fileinput.js"/>" type="text/javascript"></script>
<script src="<c:url value="/static/assets/global/plugins/ckeditor/ckeditor.js"/>" type="text/javascript"></script>
<script src="<c:url value="/static/assets/global/scripts/metronic.js"/>" type="text/javascript"></script>
<script src="<c:url value="/static/assets/admin/layout3/scripts/layout.js"/>" type="text/javascript"></script>
<script src="<c:url value="/static/assets/admin/layout3/scripts/demo.js"/>" type="text/javascript"></script>
<script src="<c:url value="/static/assets/admin/pages/scripts/index3.js"/>" type="text/javascript"></script>
<script src="<c:url value="/static/assets/admin/pages/scripts/tasks.js"/>" type="text/javascript"></script>
<script src="<c:url value="/static/assets/admin/pages/scripts/table-managed.js"/>" type="text/javascript"></script>
