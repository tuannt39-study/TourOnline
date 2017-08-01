<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title><tiles:getAsString name="title" /></title>
    <tiles:insertAttribute name="head" />
</head>
<body>

    <tiles:insertAttribute name="header" />
    <h2 style="color: <tiles:getAsString name="error-color"/>;">
        <tiles:insertAttribute name="error-name" />
    </h2>
    <h3 style="color: <tiles:getAsString name="error-color"/>;">
        <tiles:insertAttribute name="error-message" />
    </h3>
    <tiles:insertAttribute name="footer" />

</body>
</html>
