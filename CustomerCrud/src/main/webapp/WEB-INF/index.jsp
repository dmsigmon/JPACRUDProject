<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customers</title>
</head>
<body>
<h1>CRUD Customers</h1>

<h4>Find Customer By ID</h4>
<form action="getCustomer.do" method="GET">
		Customer ID: <input type="text" name="cid" /> <input type="submit"
			value="Show Customer" />
    </form>
			
	<h4>Create New Customer</h4>
	<form action="addCustomer.do" method="POST">
      <label for="firstName">First Name:</label>
      <input type="text" name="firstName" value="Dee">
      <br>
      
      <label for="lastName">Last Name:</label>
      <input type="text" name="lastName" value="Fresh">
      <br>
      <label for="email">Email:</label>
      <input type="text" name = "email" value ="email">
      <br>
      <label for="address">Address:</label>
      <input type="text" name = "address" value ="address">
      <br>
      <label for="phone">Email:</label>
      <input type="text" name = "phone" value ="phone">
      <br>
      <input type="submit">
      
      
</form>
</body>
</html>