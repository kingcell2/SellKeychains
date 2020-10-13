<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<base href="${pageContext.servletContext.contextPath}/">
<meta charset="utf-8" />
<title>EDIT</title>
<style>
.form-group {
	margin: 10px;
}
</style>
</head>
<body>
	<h2>SỬA NGƯỜI DÙNG</h2>
	
	<form action="admin/editaccount.htm" method="post" 
		enctype="multipart/form-data">
		<div class="form-group">
			<div>Tài Khoản</div>
			<input type="text" name="email" value="${users.email} "required />
			<div class="form-group">
	
		</div>		
		</div>
		<div class="form-group">
			<div>Password</div>
			<input type="text" name="password" value="${users.password}" required/>
		</div>
		<div class="form-group">
			<div>Tên</div>
			<input type="text" name="name" value="${users.name}"  required />
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
			<input type="text" name="role" value="${users.role }"required>
		</div>
		<div class="form-group">
			<div>Địa Chỉ</div>
			<input type="text" name="address" value="${users.address }"required>
		</div>
		

		<div class="form-group">
			<button>EDIT </button>
		</div>
		<div>
			${message}
		</div>
	</form>
</body>
</html>