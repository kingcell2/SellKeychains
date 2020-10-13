<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf8">
<base href="${pageContext.servletContext.contextPath}/">
<title>GIỎ HÀNG</title>

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
	background-color: gray;
}
</style>

<body>
	<div>
		<div>
			<div>Xin Chào:<b> ${user.name}</b> / <a href="http://localhost:8080/WebFinal/index.htm"><button>Đăng Xuất</button></a></div>
			<div>
			<br>
				<a href="http://localhost:8080/WebFinal/admin/colla_product.htm"><button>SẢN PHẨM</button></a>
				|
				<a href="http://localhost:8080/WebFinal/admin/colla_cart.htm"><button>ĐƠN HÀNG</button></a>
			<br>
			</div>
		</div>
		<table class="table table-hover">
			<tr>
				
				<th>Hình</th>
				<th>Tên sản sẩn phẩm</th>								
				<th>Số lượng</th>
				<th>Giá</th>
				<th>Tên khách hàng</th>
				<th>Số điện thoại</th>
				<th>Địa chỉ</th>
				<th>Ngày đặc hàng</th>
				
			</tr>
			<c:forEach var="item" items="${items}">
				<tr>
					
					<td><img style="width: 200px;height:150px;" src="images/products/${item.product.link}" /></td>
					<td>${item.product.name}</td>					
					<td>${item.quantity}</td>
					<td><f:formatNumber value="${(item.price-item.price*item.product.discount)*item.quantity}"></f:formatNumber>
					<span style="text-decoration: underline;">đ</span>
					<td>${item.bill.name}</td>
					<td>${item.bill.phone }</td>
					<td>${item.bill.address }</td>
					<td>${item.bill.date_order }</td>
				</tr>
			</c:forEach>
		</table>
		
	</div>
</body>
</html>