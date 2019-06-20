<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 引入核心css文件 -->
<link rel="stylesheet" href="bootstrap/css/bootstrap.css">

<link rel="stylesheet" href="bootstrap/css/bootstrapValidator.css">

<script type="text/javascript" src="bootstrap/js/jquery.js"></script>

<script type="text/javascript" src="bootstrap/js/jquery.js"></script>

<script type="text/javascript" src="bootstrap/js/bootstrapValidator.js"></script>
<!-- 
<c:if test="${!(empty usernameture) }">

	<script>
		alert("${usernameture}");
	</script>
	<c:remove var="usernameture" scope="session"></c:remove>
</c:if>
 -->
<script type="text/javascript" src="js/ajax.js"></script>
<script type="text/javascript">
	$(function() {
		$("#login").bootstrapValidator({

			feedbackIcons : {
				valid : "glyphicon glyphicon-ok",
				invalid : "glyphicon glyphicon-remove",
				validating : "glyphicon glyphicon-refresh"
			},
			fields : {
				name : {
					validators : {
						notEmpty : {
							message : '姓名不能为空'
						},
						regexp : {
							regexp : /^[\u0391-\uFFE5]{2,10}$/,
							message : '姓名必须2-10位汉字'
						},
					}
				},
				phone : {
					validators : {
						notEmpty : {
							message : '手机号不能为空'
						},
						regexp : {
							regexp : /^1[3-9][0-9]{9}$/,
							message : '手机号不合法'
						},
					}
				},
				
				username : {
					validators : {
						notEmpty : {
							message : '账号不能为空'
						},
						regexp : {
							regexp : /^\w{5,15}$/,
							message : '账号必须是由5~15字母下划线组成'
						},
						remote : {
							message : '用户名已经存在',
							url : 'yanzheng',
							type : 'GET',
							data : {
								username : $('input[name=username]').val(),
								

							}

						}
					}
				},
				password : {
					validators : {
						notEmpty : {
							message : '密码不能为空'
						},
						regexp : {
							regexp : /^(\w|\W){6,15}$/,
							message : '密码必须至少六位数'
						},
						different : {
							field : 'uname',
							message : '密码不能和用户名一样'
						}

					}
				},
				repassword : {
					validators : {
						notEmpty : {
							message : '确认密码不能为空'
						},
						identical : {
							field : 'password',
							message : '两次密码不一致'
						}

					}
				},

				touxiang : {
					validators : {
						notEmpty : {
							message : '头像不能为空'
						},

					}
				},
			}

		})

	});
</script>

<div class="container">
	<div class="row">
		<div class="col-md-4 col-md-offset-4">
			<form id="login" action="admin" method="post" class="form-horizontal" enctype="multipart/form-data">
				<h3 class="text-center text-danger">注册页面</h3>
				<div class="form-group">
					<label>管理员姓名：</label> <input type="text" name="name"
						class="form-control" />
				</div>
				<div class="form-group">
					<label>手&nbsp;机&nbsp;号&nbsp;码：</label> <input type="text"
						name="phone" class="form-control" />
				</div>
				<div class="form-group">
					<label>帐&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号</label>
					<input type="text" name="username" class="form-control" />
				</div>
				<div class="form-group">
					<label>密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：</label>
					<input type="password" name="password" class="form-control" />
				</div>
				<div class="form-group">
					<label>确&nbsp;认&nbsp;密&nbsp;码：</label> <input type="password"
						name="repassword" class="form-control" />
				</div>
				<div class="form-group">
					<label>头&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;像：</label>
					<input type="file" name="touxiang" class="form-control" />
				</div>
				<div class="form-group">
					<button type="submit" class="btn btn-success btn-block">注册</button>
					<button type="reset" class="btn btn-success btn-block">重填</button>
					<button type="submit" class="btn btn-success btn-block"><a href="login.jsp">已是管理员点击登录</a></button>
					
				</div>
			</form>

		</div>

	</div>
</div>
  
</body>
</html>