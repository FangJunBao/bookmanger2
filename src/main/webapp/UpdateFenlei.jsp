<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
<title>修改分类</title>
   <script type="text/javascript" src="js/ajax.js"></script>
<script type="text/javascript">
    window.onload=function(){
    	var select=document.getElementById("fenleiList");
    	ajax({
    		method:"POST",
    		url:"Fenleiservlet",
    		params:"action=UpdateFenlei",
    		type:"xml",
    		success:function(date){
    				//var content=http.responseXML;
    				var names=date.getElementsByTagName("name");
    				for(var i=0;i<names.length;i++){
    					var name=names[i];
    					var opt=document.createElement("option");
    					var value;
    					if(window.addEventListener){
    						value=name.textContent;
    					}else{
    						value=text;
    					}
    					opt.innerHTML=value;
        				opt.value=value;
        				select.appendChild(opt);
    				}
    		}
    	});
    	
        }
    </script>
</head>
<body background="imgs/3.jpg">
 	<%-- <form action="monster" class="form-horizontal" method="post">
	
		<input type="hidden" name="_method" value="PUT">
		<!-- 做一个隐藏域，id -->
		<input type="hidden" name="id" value="${fenlei.id }">
		
		<table align="center" width="400px" height="200px" border="1px"
			cellspacing="0" bordercolor="silver">
			<caption align="top">
				<h2>
					<font color="red">修改分类页面</font>
				</h2>
			</caption>
			<form action="user" method="post"  class="form-horizontal">  --%>
			
		
			<!-- frnlei -->
			
			<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
        <form action="monster" class="form-horizontal" method="post">
	  <!-- <h1 align="center"><font color="red">修改分类界面</font></h1>
 -->
		<!-- <div class="container"> -->
		<input type="hidden" name="_method" value="PUT">
		
		<%--  <table align=center width="150px" height="150px"  border=1 class="table"
			cellspacing="0" bordercolor="silver"> 
			 <input type="hidden" name="id" value="${fenlei.id }"/> 
			
			<tr align="center">
			
				<td>姓&nbsp;&nbsp;&nbsp;&nbsp;名</td>
				
				<td><input type='text' name='name' value="${fenlei.name }" /></td>
				
			</tr>
			
			<tr>
				<td align='center' colspan='2'><input type='submit' value='修改' class="btn btn-primary" />
				   &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;  &nbsp;<a
					href='monsterss' class="btn btn-primary">取消</a></td>
			</tr>
			</table>	--%>
			
			 <input type="hidden" name="id" value="${fenlei.id }"/> 
			 
			<h3 class="text-center text-success">修改分类</h3>
					<div class="form-group">
						<label>分类的名称:</label> 
						<input type="text" name="name" class="form-control"  value="${fenlei.name }"  />
					</div>
				
				<div class="form-group">
						<button type="submit" class="btn btn-success btn-block">修改</button>
						<button type="reset" class="btn btn-success btn-block">重填</button>
					</div>
	  </form> 
	  
	  </div>


		</div>

	</div>
	  
	  
	<%--   
		 <tr align="center">

				<td>选择你要修改的分类名称:</td>
				<td>
				
				<!--  id="fenlei"   -->
				
				 <select name="name" id="fenlei">
				  
				    <c:forEach items="${slist }" var="s">
				    
				     <option>${s.name }</option>
					 
				 </c:forEach>
				
				</select>
				
				</td>
			</tr>
			<tr>
				<td>请输入新的分类名称:</td>
				<td><input type="text" name="newname" /></td>
			</tr>
			<tr align="center">
				<td colspan="2"><input type="submit" value="修改" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
					type="reset" value="清空" /></td>
			</tr> 
		</table>
	</form> --%>
</body>
</html>