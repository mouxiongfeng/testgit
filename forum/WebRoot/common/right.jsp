<%@ page pageEncoding="UTF-8"%>
<div id="right">
  			<div id="right_top"></div>
  			<div id="right_middle">
  				<hr color="#fff" size="5px"/>
  					<form action="user/login.html" method="post">
  						<table>
  							<tr>
  								<td>用户名：</td>
  								<td><input type="text" name="userName" class="uInput"/></td>
  							</tr>
  							<tr>
  								<td colspan="2">&nbsp;<span class="msg"></span></td>
  							</tr>
  							<tr>
  								<td>&nbsp;&nbsp;&nbsp;密码：</td>
  								<td><input type="password" name="userPassword" class="uInput"/></td>
  							</tr>
  							<tr>
  								<td colspan="2">
  								&nbsp;&nbsp;&nbsp;
  								<input type="submit" class="uButton" value="登录"/>
  								&nbsp;&nbsp;&nbsp;
  								<input type="reset"  class="uButton" value="重置"/>
  								
  								</td>
  							</tr>
  						</table>
  					</form>
  					<span class="msg">还没有用户名？点击<a href="">这里</a>注册</span>
  			</div>
  			<div id="right_bottom">
  				<hr color="#fff" size="5px"/>
  			</div>
  		</div>
