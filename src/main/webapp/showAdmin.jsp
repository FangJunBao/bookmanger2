<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width; initial-scale=1">
<title>查看管理员</title>
<script type="text/javascript" src="js/ajax.js"></script>
</head>
<body background="imgs/3.jpg">
	<br />
	<br />
	<br />
	<br />
	<center>
		<table width="300px" height="280px" border="1px" bordercolor="pink"
			cellspacing="0">
			<caption align="top">
				<h1>
					<font color="red">查看管理员信息</font>
				</h1>
				<hr size="2px" color="red" width="600px" />
			</caption>
			<tr align="center">
				<td>编号</td>
				<td id="id"></td>
			</tr>
			<tr align="center">
				<td>姓名</td>
				<td id="name"></td>
			</tr>
			<tr align="center">
				<td>手机</td>
				<td id="phone"></td>
			</tr>
			<tr align="center">
				<td>账号</td>
				<td id="username"></td>
			</tr>
			<tr align="center">
				<td>密码</td>
				<td ><input   type="password" id="password" 
					disabled="disabled"/></td>
			</tr>
			<tr align="center">
			    <td>头像</td>
				<td><img src="touxiang/${sessionScope.touxiang }" style="width:60px;height:50px" class="img-circle img-responsive"/></td>
			</tr>
			
		</table>
	</center>
</body>
</html>