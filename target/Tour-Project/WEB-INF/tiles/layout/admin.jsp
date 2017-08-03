<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
<head>
    <title><tiles:getAsString name="title" /></title>
    <tiles:insertAttribute name="head" />
</head>
<body>

<tiles:insertAttribute name="header" />
<tiles:insertAttribute name="main" />
<tiles:insertAttribute name="footer" />

</body>
</html>
