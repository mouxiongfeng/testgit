<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="css/head.css">
	
	<style type="text/css">
		#middle{
			height:450px;
		}
		#register{
			height:37px;
		}
		table{
			margin-left:100px;
			height:316px;
			font-size: 14px;
			font-family: "微软雅黑";
		}
		table .userInput{
			height:26px;
			width:160px;
			border-radius:5px;
			border:none;
		}
		.userButton{
			height:30px;
			width:50px;
			background:#4E9DCD;
			border-radius:5px;
			color:#fff;
			font-weight: bold;;
			border:none;
			font-size: 16px;
		}
	</style>
	
  </head>
  <body>
  	<div id="center">
  		<%@include file="../../../common/head.jsp"%>
  		<div id="middle">
  		<div id="register"></div>
  		<form action="user/register.do" method="post">
  			<table>
  				<tr>
  					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;邮箱：</td>
  					<td><input type="text" placeholder="请输入邮箱.." name="userEmail" class="userInput"/></td>
  					<td><span class="msg"><img src="images/tishi.jpg" width="12px" height="12px"/>请输入正确的邮箱地址</span></td>
  				</tr>
  				<tr>
  					<td>&nbsp;&nbsp;&nbsp;用户名：</td>
  					<td><input type="text" placeholder="请输入名字.." name="userName" class="userInput"/></td>
  					<td><span class="msg"><img src="images/tishi.jpg" width="12px" height="12px"/>用户名在6-12个字符之间</span></td>
  				</tr>
  				<tr>
  					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;密码：</td>
  					<td><input type="text" placeholder="请输入密码.." name="userPassword" class="userInput"/></td>
  					<td><span class="msg"><img src="images/tishi.jpg" width="12px" height="12px"/>密码长度在6-16个字符之间</span></td>
  				</tr>
  				<tr>
  					<td>确认密码：</td>
  					<td><input type="text" placeholder="请再次输入密码.." class="userInput"/></td>
  					<td><span class="msg"><img src="images/tishi.jpg" width="12px" height="12px"/>请再次输入密码</span></td>
  				</tr>
  				<tr>
  					<td colspan="2">
  					&nbsp;&nbsp;&nbsp;
  					<input type="submit" class="userButton" value="注册"/>
  					&nbsp;&nbsp;&nbsp;
  					<input type="reset" class="userButton" value="重置"/></td>
  				</tr>
  			</table>
  		</form>
  		
  		</div>
  		<%@include file="../../../common/foot.jsp"%>
  	</div>
  </body>
</html>
