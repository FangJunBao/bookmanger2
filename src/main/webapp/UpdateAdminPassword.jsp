<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<script type="text/javascript" src="js/ajax.js"></script>
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javascript">
	//校验原密码
	var flag;

	function validatePassword() {
		var password = document.updatePassword.password;
		var passwordMsg = document.getElementById("passwordMsg");
		ajax({
			method : "POST",
			url : "validatePassword?password=" + password.value,
		/* 	params : "action=validatePassword&password=" + password.value, */
		    type : "text",
			success : function(data) {

				if (data !=null) {//找到用户名

					passwordMsg.style.color = "green";

					passwordMsg.innerHTML = "原密码输入正确!";

					flag = true;

				} else {//没找到用户名

					passwordMsg.style.color = "red";

					passwordMsg.innerHTML = "原密码输入错误，请重新输入!";

					password.focus();

					flag = false;

				}

			}

		});

	}
	//新密码
	function validateNewPassword() {
		var password = document.updatePassword.password;
		var newpassword = document.updatePassword.newpassword;
		var reg = /^(\w|\w){6,15}$/;
		var newpasswordMsg = document.getElementById("newpasswordMsg");
		if (!reg.test(newpassword.value)) {//格式不匹配

			newpasswordMsg.style.color = "red";

			newpasswordMsg.innerHTML = "必须是6-15位数字字母下划线或者特殊字符";

			return false;

		}

		if (password.value == newpassword.value) {
			
			newpasswordMsg.style.color = "red";

			newpasswordMsg.innerHTML = "与原密码不能一致";

			return false;

		}
		
		newpasswordMsg.style.color = "green";

		newpasswordMsg.innerHTML = "新密码合法!";
		
		return true;

	}
	
	//确认密码
	function validateRePassword() {
		var newpassword = document.updatePassword.newpassword;
		var repassword = document.updatePassword.repassword;
		var repasswordMsg = document.getElementById("repasswordMsg");
		if (repassword.value == newpassword.value) {
			repasswordMsg.style.color = "green";
			repasswordMsg.innerHTML = "密码一致";
			return true;
		} else {
			repasswordMsg.style.color = "red";
			repasswordMsg.innerHTML = "密码不一致";
			repassword.focus();
			return false;
		}
	}

	function jiaoyan() {
		return flag && validateNewPassword() && validateRePassword();
	}
</script>
</head>
<body background="imgs/3.jpg">
 <form action="updatePassword" method="post" name="updatePassword"  enctype="application/x-www-form-urlencoded"     onsubmit="return jiaoyan()"><!--  提交修改管理员密码-->
		<table align="center" width="800px" height="200px" border="1px"
			cellspacing="0" bordercolor="silver">
			<caption align="top">
				<h2>
					<font color="red">修改管理员密码</font>
				</h2>
			</caption>
			<tr align="center" >
				<td>原密码:</td>
				<td><input name="password" type="password"  onblur="validatePassword()"/><span id="passwordMsg"></span></td>
			</tr>
			<tr align="center">
				<td>请输入新的密码:</td>
				<td><input name="newpassword" type="password"  onblur="validateNewPassword()"/><span id="newpasswordMsg"></span></td>
			</tr>
		  	<tr align="center">
				<td>确认新的密码:</td>
				<td><input type="password" name="repassword" onblur="validateRePassword()"/><span id="repassowrdMsg"></span></td>
			</tr>
			<tr align="center"><td colspan="2"><input type="submit" value="确认修改"/>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="reset" value="重新填写"/></td></tr>
		</table>
	</form>
  </body>
</html>