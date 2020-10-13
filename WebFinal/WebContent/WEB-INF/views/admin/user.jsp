<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<% 
//	string username = request.getProducts("name");
//	out.print(user.getActive());
	 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf8">
<base href="${pageContext.servletContext.contextPath}/">
<title>Danh sánh sản phẩm</title>

</head>
<style>
table {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	line-height: 25px;
	border: 1px solid black;
	padding: 5px;
}

th {
	background-color: orange;
}
</style>

<body>
<h1>QUẢN LÝ CỬA HÀNG</h1>
	<div>
		<div>
			<div>Xin Chào: <b>${user.name}</b>  /  <a href="http://localhost:8080/WebFinal/index.htm"><button>Đăng Xuất</button></a></div>
			<div>
			<br>
				<a href="http://localhost:8080/WebFinal/admin/product.htm"><button>SẢN PHẨM</button></a>
				/
				<a href="http://localhost:8080/WebFinal/admin/admin_cart.htm"><button>ĐƠN HÀNG</button></a>
				/
				<a href="http://localhost:8080/WebFinal/admin/user.htm"><button>TÀI KHOẢN</button></a>
				/
					<a href="http://localhost:8080/WebFinal/admin/insertaccount.htm"><button>THÊM MỚI</button></a>
			</div>
		</div>
		<table class="table table-hover">
		<br>
			<tr>
			    <th>ID</th>
				<th>Tài Khoản</th>
				<th>Passwork</th>
				<th>Tên</th>				
				<th>Active</th>
				<th>Phân Quyền</th>	
				<th>Địa Chỉ</th>
				<th>Button</th>
				<th>Button</th>
			</tr>
			<c:forEach var="item1" items="${items1}">
				<tr> 
				    <td>${item1.id}</td>
					<td>${item1.email}</td>
					<td>${item1.password}</td>
					<td>${item1.name}</td>					
					<td>${item1.active}</td>
					<td >
					<c:choose>
					<c:when test="${item1.role>1&&item1.role<100}">
					Employer</c:when>
					<c:otherwise>
					User
					</c:otherwise>
					</c:choose>
					</td>
					<td>${item1.address }</td>
					<td><a href="admin/deleteaccount/${item1.id}.htm"><button>Xóa</button></a></td>
					<td><a href="admin/editaccount/${item1.id}.htm"><button>Sửa</button></a></td>
				</tr>
			</c:forEach>
		</table>
		<div>${message}</div>
	</div>
</body>
</html>