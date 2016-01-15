<%@ page pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="right">
  			<div id="right_top"></div>
  			<div id="right_middle">
  				<hr color="#fff" size="5px"/>
  				
  					<div id="right_middle_middle">
	  					<c:if test="${user==null }">
	  					<form action="user/login.do" method="post">
	  						<table>
	  							<tr>
	  								<td>用户名：</td>
	  								<td><input type="text" name="userName" class="uInput"/></td>
	  							</tr>
	  							<tr>
	  								<td colspan="2">&nbsp;<span id="msg" class="msg"></span></td>
	  							</tr>
	  							<tr>
	  								<td>&nbsp;&nbsp;&nbsp;密码：</td>
	  								<td><input type="password" name="userPassword" class="uInput"/></td>
	  							</tr>
	  							<tr>
	  								<td colspan="2">
	  								&nbsp;&nbsp;&nbsp;
	  								<input type="button" id="testing" class="uButton" value="登录"/>
	  								&nbsp;&nbsp;&nbsp;
	  								<input type="reset"  class="uButton" value="重置"/>
	  								
	  								</td>
	  							</tr>
	  						</table>
	  					</form>
	  					<span class="msg">还没有用户名？点击<a href="user/goToRegister.do">这里</a>注册</span>
	  					</c:if>
	  					<c:if test="${user!=null }">
	  						欢迎<a>${user.userName }</a><br>
	  						<a href="user/logOut.do">退出登录</a>
	  					</c:if>
  					</div>
  			</div>
  			<div id="right_bottom">
  				<hr color="#fff" size="5px"/>
  				<p><span class="type">分类</span></p>
  				<c:forEach items="${typeList}" var="type">
  					<a href="post/getPostByTypeId.do?typeId=${type.typeId}"><span class="type">${type.typeName }</span></a><br>
  				</c:forEach>
  			</div>
  		</div>
