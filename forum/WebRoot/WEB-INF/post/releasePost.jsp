<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>发布帖子</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/head.css">
	<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.0.js"></script>
 	<style>
 		#center_post{
 			height:400px;
 			border:1px solid;
 			width:100%;
 		}
 		#release_post{
 			height:100%;
 			margin-top:50px;
 		}
 		#tianchong{
 			width:100%;
 			height:118px;
 		}
 		#release_post input,select,textarea,option{
 			border-radius:5px;
 		}
 		.uButton{
 			height:27px;
 			font-size:18px;
 			width:50px;
 		}
 	</style>
 
  </head>
  <body>
  	<div id="center">
  		<%@include file="../../../common/head.jsp"%>
  		<div id="center_post">
  			<div id="release_post">
  				<form action="post/addPost.do" method="post">
  				<table>
  					<tr>
  						<td>帖子标题：</td>
  						<td><input type="text" name="postTitle"/></td>
  					</tr>
  					<tr>
  						<td>帖子类型：</td>
  						<td>
  							<select name="typeId">
  								<c:forEach items="${typeList}" var="type">
  								<option value="${type.typeId }">${type.typeName }</option>
  								</c:forEach>
  							</select>
  						</td>
  					</tr>
  					<tr >
  						<td>帖子内容:<div id="tianchong"></div></td>
  						<td>
  							<textarea name="postContent" cols="40" rows="8"></textarea>
  						</td>
  					</tr>
  					<tr>
  						<td colspan="2"><input class="uButton" type="submit" value="提交"/></td>
  					</tr>
  				</table>
  				</form>
  				<c:if test="${user==null}">
  					<span class="msg">您还没有登录，不能发布帖子！<a href="index.do">点击</a>登录</span>
  				</c:if>
  			</div>
  		</div>
  		<%@include file="../../../common/foot.jsp"%>
  	</div>
  </body>
</html>
