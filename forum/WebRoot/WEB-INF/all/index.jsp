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
	<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.0.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			$("#testing").click(function(){
				alert("进入jquery");
			
				$.post("user/login.do",{
				userName:$("input[name='userName']").val(),
				userPassword:$("input[name='userPassword']").val()},
				function(data){
					alert(data);
				});
			});
		});
	</script>
	<style type="text/css">

	</style>
  </head>
  
  <body>
  <div id="center">
	<%@include file="../../../common/head.jsp"%>
  	<div id="middle">
  		<div id="left">
  			${user.userName }
  			<p>你好</p>
  		</div>
  		<%@include file="../../../common/right.jsp"%>
  	</div>
	<%@include file="../../../common/foot.jsp"%>
  </div>
  </body>
</html>
