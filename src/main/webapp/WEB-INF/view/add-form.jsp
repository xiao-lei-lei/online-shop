<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	  <div class="container">
		<form:form action="${pageContext.request.contextPath}/product/addProduct?${_csrf.parameterName}=${_csrf.token}" method="POST" class="form-horizontal" modelAttribute="myProduct" enctype="multipart/form-data">
	
			<form:hidden path="id" />
     
     
      Name :
     <form:input path="name" /><br><br>
      Description:
      <form:textarea path="description" /><br><br>
     Price:
      <form:input path="unitPrice" />
      Quantity
      <form:input path="quantity" />
			<br>
			<br>
			<form:input type="file" path="file" />
			<br>
			<br>
			<br>
			
			<form:select class="form-control" path="categorizes">
				<option value="Clothing">Clothing</option>
				<option value="Shoes">Shoes</option>
				<option value="Bags">Bags</option>
				<option value="Accessories">Accessories</option>
			</form:select>

			<input type="submit" value="Save">
		</form:form>
		<hr>
		<a href="${pageContext.request.contextPath}">Back to Home</a>
	</div>
	
</body>
</html>	
	
	
	
	
	