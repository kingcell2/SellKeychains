<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>

<head>
<base href="${pageContext.servletContext.contextPath}/">
<title>Registration</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<style type="text/css">

.errors{
color: red}

body {
	font-family: Arial, Helvetica, sans-serif;
}

form {
	border: 3px solid #f1f1f1;
	margin-left: 400px;
	margin-right: 400px;
	margin-top: 60px;
	box-shadow: 1px 3px 6px 3px rgba(15, 15, 15, 0.219);
}

input[type=text], input[type=password] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

button {
	background-color: #FDC215;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}

button:hover {
	opacity: 0.8;
}

.cancelbtn {
	width: auto;
	background-color: #f44336;
}
.regisbtn {
	width: auto;
	padding: 10px 18px;
	background-color: #F08080;
	}

.imgcontainer {
	text-align: center;
	margin: 24px 0 12px 0;
}

img.avatar {
	width: 40%;
	border-radius: 50%;
}

.container {
	padding: 60px;
}

span.psw {
	float: right;
	padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
	span.psw {
		display: block;
		float: none;
	}
	.cancelbtn {
		width: auto;
	}
}
</style>
</head>

<body>


	<form action="user/registration.htm" method="post"enctype="multipart/form-data">
		<div class="imgcontainer">
			<div><a href="index.htm"><img src="images/logo.png" style="width: 100px; height: 100px;"
				alt="Avatar" class="avatar"></a></div>
			<b>ĐĂNG KÍ TÀI KHOẢN</b>
		</div>
		
		<div class="container">
			<label for="email"><b>Tài Khoản</b></label> 
			<input type="text" placeholder="Emai hoặc tài khoản" name="email" required> 
			<div style="color:red;">${msg }</div>
			<label for="password"><b>Mật khẩu</b></label> 
			<input type="password" placeholder="Mật Khẩu" name="password" required>
			<label for="name"><b>Họ Tên</b></label> 
			<input type="text" placeholder="" name="name" required>
			<input type="hidden" name="active" value="1" required />
				
			<input type="hidden"name="role" value="100" required />	 
			<label for="address"><b>Địa chỉ</b></label> 
			<input type="text" placeholder="" name="address" required> 
			<div style="color:red;">${message }</div>
			<button type="submit">Đăng Kí</button>
			<button type="reset" class="cancelbtn">Cancel</button>
			
			
		</div>

		
	</form>

</body>

</html>