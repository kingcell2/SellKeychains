<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<base href="${pageContext.servletContext.contextPath}/">
<meta charset="utf-8" />
<title>INSERT</title>
<style>
.form-group {
	margin: 10px;
}
</style>
</head>
<body>
	<h2>THÊM NGƯỜI DÙNG</h2>
	${message}
	<form action="admin/insertaccount.htm" method="post"
		enctype="multipart/form-data">
		<div class="form-group">
			<div>Tài Khoản</div>
			<input type="text" name="email" required> <div style="color:red;">${msg }</div>
		</div>
		<div class="form-group">
			<div>Password</div>
			<input type="text" name="password" required>
		</div>
		<div class="form-group">
			<div>Tên</div>
			<input type="text" name="name" required />
		</div>
		<div class="form-group">
			<div>Active</div>
			<select name="active" required >
				<option value="1">Active</option>
				<option value="0">Not Active</option>
				</select>
		</div>
		<div class="form-group">
			<div>Phân Quyền</div>
			<input type="text" name="role" required />
		</div>
		<div class="form-group">
			<div>Địa Chỉ</div>
			<input type="text" name="address" required />
		</div>
		
		<div class="form-group">
			<button>INSERT</button>
		</div>

		<div>
			${message}
		</div>
	</form>
</body>
</html>