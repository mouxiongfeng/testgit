<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>BBS论坛</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/head.css">
	<link rel="stylesheet" type="text/css" href="css/middle.css">
	<style type="text/css">

	</style>
  </head>
  
  <body>
  <div id="center">
	<%@include file="../../../common/head.jsp"%>
  	<div id="middle">
  		<div id="left">
  			${user.userName }
  		</div>
  		<%@include file="../../../common/right.jsp"%>
  	</div>
  	<div id="foot">
  		<hr size="4px" color="#2DBFFF"/>
  		<p>网页制作</p>
  	</div>
  </div>
  </body>
</html>
