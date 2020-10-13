<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf8">
<base href="${pageContext.servletContext.contextPath}/">
<title>Quản Lý Sản Phẩm</title>

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
<h4>Trở về <a href="http://localhost:8080/WebFinal/admin/admin_index.htm"><button>Trang Chủ</button></a></h4>
	<div>
		<div>
			<div>Xin Chào: <b>${user.name}</b>  / <a href="http://localhost:8080/WebFinal/index.htm"><button>Đăng Xuất</button></a></div>
			<div>
			<br>
				<a href="http://localhost:8080/WebFinal/admin/product.htm"><button>SẢN PHẨM</button></a>
				/
				<a href="http://localhost:8080/WebFinal/admin/admin_cart.htm"><button>GIỎ HÀNG</button></a>
				/
				<a href="admin/insert.htm"><button>THÊM MỚI</button></a>
				/
				<a href="admin/user.htm"><button>QUẢN LÝ TÀI KHOẢN</button></a>
			</div>
		</div>
		
		<table class="table table-hover">
		<br>
			<tr>
				<th>ID</th>
				<th>Hình</th>
				<th>Tên Mặt Hàng</th>				
				<th>Loại</th>
				<th>Giá</th>
				<th>Mô tả sản phẩm</th>
				<th>giảm giá</th>
				<th>Delete</th>
				<th>Edit</th>
			</tr>
			<c:forEach var="item" items="${items}">
				<tr>
					<td>${item.id}</td>
					<td><img style="width: 200px;height:150px;" src="images/products/${item.link}" /></td>
					<td>${item.name}</td>					
					<td>${item.product_type.name}</td>
					<td><f:formatNumber>${item.price}</f:formatNumber><span style="text-decoration: underline;">đ</span></td>	
					<td>${item.description}</td>
					<td>${item.discount}</td>
					<td><a href="admin/delete/${item.id}.htm"><button>Delete</button></a></td>
					<td><a href="admin/edit/${item.id}.htm"><button>Edit</button></a></td>
				</tr>
			</c:forEach>
		</table>
		<div>${message}</div>
	</div>
</body>
</html>