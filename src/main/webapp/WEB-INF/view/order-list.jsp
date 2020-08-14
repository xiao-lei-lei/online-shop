<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
        
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<!-- Bootstrap core CSS -->
<link
	href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link
	href="${pageContext.request.contextPath}/resources/css/shop-homepage.css"
	rel="stylesheet">
</head>
<body>
<c:forEach var="tmpOrder" items="${order}">
	
<c:if test="${not tmpOrder.status}">
<h3>Order Id : ${tmpOrder.id}</h3>
<h4>Username : ${tmpOrder.userName}</h4>
<br>
<ul>
<c:forEach var="orderItem" items="${tmpOrder.orderItems}">
	<li>Product Id : ${orderItem.product.id} | Product Name : ${orderItem.product.name} | Quantity : ${orderItem.quantity}
</li>
</c:forEach>
</ul>


<c:url var="deliveryLink" value="/process/deliver">
<c:param name="orderId" value="${tmpOrder.id}"/>
</c:url>

<a href="${deliveryLink}" class="btn btn-success">Delivery </a>
<hr>
</c:if>
</c:forEach>

</body>
</html>