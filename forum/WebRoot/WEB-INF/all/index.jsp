<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
				$.post("user/login.do",{
				userName:$("input[name='userName']").val(),
				userPassword:$("input[name='userPassword']").val()},
				function(data){
					$("#msg").html(data);
				});
			});
		});
	</script>
	<style type="text/css">
	#post{
		border:1px solid #7AE6F4;
		margin:0 auto;
		margin-top:10px;
		width:570px;
		border-radius:5px;
		border-bottom-width: 5px
	}
	#post table{
		width:570px;
	}
	#see{
		width:15px;
		height:15px;
		background:#F9C5B2;
		border-radius:5px;
		color:#fff;
		text-align: center;
	}
	</style>
  </head>
  
  <body>
  <div id="center">
	<%@include file="../../../common/head.jsp"%>
  	<div id="middle">
  		<div id="left">
  			<c:forEach items="${postList}" var="post" begin="1" end="8">
  				<div id="post">
  					<table>
  						<tr>
  							<td width="73px;" rowspan="3"><img src="images/touxiang1.jpg" width="70px" height="70px"/></td>
  							<td width="150px">${post.postTitle}</td>
							<td></td>
  							<td width="50px"><div title="访问量" id="see">4</div></td>
  						</tr>
  						<tr>
  							<td>${post.user.userName}</td>
  							<td colspan="2">${post.postDate} </td>
  						</tr>
  					</table>
  				</div>
  			</c:forEach>
  			<p>${sessionScope.user.userName}</p>
  		</div>
  		<%@include file="../../../common/right.jsp"%>
  	</div>
	<%@include file="../../../common/foot.jsp"%>
  </div>
  </body>
</html>
