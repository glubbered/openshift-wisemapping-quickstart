<%@ page import="java.util.Locale" %>
<%@ page import="org.springframework.context.i18n.LocaleContextHolder" %>
<%@page pageEncoding="UTF-8" %>
<%@include file="/jsp/init.jsp" %>
<%
    final Locale locale = LocaleContextHolder.getLocale();
    request.setAttribute("locale", locale.getLanguage());
%>

<!DOCTYPE HTML>

<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<tiles:importAttribute name="title" scope="page"/>
<tiles:importAttribute name="details" scope="page"/>

<html>
<head>
    <base href="${requestScope['site.baseurl']}/">
    <!--[if lt IE 9]>
    <meta http-equiv="X-UA-Compatible" content="chrome=1">
    <![endif]-->
    <script type="text/javascript" language="javascript" src="js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" language="javascript" src="bootstrap/js/bootstrap.js"></script>
    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap-responsive.min.css"/>
    <script type="text/javascript" language="javascript" src="js/jquery.timeago.js"></script>
    <script type="text/javascript" language="javascript" src="js/jquery.timeago.${locale}.js"></script>

<body>
<div style="padding-top:20px">
    <tiles:insertAttribute name="body"/>
</div>
</body>
</html>
