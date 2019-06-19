<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="jquery-ui.css">
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="js/jquery-ui.js"></script>
      <style type="text/css">
li {
	list-style-type: none;
	padding-top: 5px;
}

a {
	text-decoration: none;
}
       </style>
<script type="text/javascript">
	             $(function() {
		         $("#accordion").accordion();
		        
		        
		         
	})
</script>
<body background="">
     <h2 class="demoHeaders" align="center">菜单</h2>
	<div id="accordion">
		<h3>分类管理</h3>
		<div>
			
				<li><a href="addFenlei.jsp" target="right" ><span class="ui-icon ui-icon-circle-plus"></span>添加分类</a></li>
				<!--<li><a href="UpdateFenlei.jsp" target="right"   ><span class="ui-icon ui-icon-wrench"></span>修改分类</a></li>  -->
				<li><a href="monsterss"  target="right"><span class="ui-icon ui-icon-copy"></span>查看分类</a></li>
				


		</div>
		<h3>图书管理</h3>
		<div>
	

				<li><a href= "addBook.jsp" target="right" ><span class="ui-icon ui-icon-circle-plus"></span>添加图书</a></li>
				<li><a href="Bookservlet?action=showBookByPage" target="right" ><span class="ui-icon ui-icon-copy"></span>查看图书</a></li>
				<!--  <li><a href="xiugaiBook.jsp" target="right"><span class="ui-icon ui-icon-wrench"></span>修改图书</a></li>-->
				

	
	  
	  
	  </div>
	  <h3>用户管理</h3>
		<div>
				<li><a  href="addUser.jsp" target="right"><span class="ui-icon ui-icon-circle-plus"></span>添加用户</a></li>
				<li><a href="users" target="right"  ><span class="ui-icon ui-icon-copy"></span>查看用户</a></li>
				
			

	 
	  </div>
	  <h3>管理员信息管理</h3>
		<div>
				<li><a href="showAdmin" target="right"><span class="ui-icon ui-icon-copy"></span>查看管理员信息</a></li>
				<li><a href="UpdateAdminPassword.jsp" target="right" ><span class="ui-icon ui-icon-wrench"></span>修改管理员密码</a></li>
				<li><a href="login.jsp" target="_parent"><span class="ui-icon ui-icon-info"></span>退出系统</a></li>
				<!--  <li><a href="#"><span class="ui-icon ui-icon-trash"></span>删除分类</a></li>-->

	  </div>
	
</html>