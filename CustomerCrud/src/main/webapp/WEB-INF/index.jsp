<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

	<p>
		<a href="createCustomerHomepage.do" class="btn btn-secondary"
			role="button">Create Customer</a>
	</p>

	<!-- <h4>Create New Customer</h4>
	<form action="addCustomer.do" method="POST">
		<label for="firstName">First Name:</label> <input type="text"
			name="firstName" value="Dee"> <br> <label for="lastName">Last
			Name:</label> <input type="text" name="lastName" value="Dizzle"> <br>
		<label for="email">Email:</label> <input type="text" name="email"
			value="DeeMail@fredFreddette.org"> <br> <label
			for="address">Address:</label> <input type="text" name="address"
			value="Dark Side of the Moon"> <br> <label for="phone">Email:</label>
		<input type="text" name="phone" value="222 NOT FOR YOU"> <br>
		<input type="submit">
	</form> -->


	<p>
		<a href="deleteCustomerHomepage.do" class="btn btn-secondary"
			role="button">Delete Customer</a>
	</p>
	<!-- <h4>Delete Customer</h4>
<form action="deleteCustomer.do" method="GET">
Customer ID: <input type="text" name="id" /> <input type="submit"
	value="Delete Customer" />
</form> -->

<p>
		<a href="updateEmailByPhoneHomePage.do" class="btn btn-secondary"
			role="button">Update Email By Phone</a>
	</p>
<!-- 	<h4>Update email by phone</h4>
	<form action="updateEmail.do" method="POST">
		<label for="phone">phone:</label> <input type="text" name="phone"
			value="222 NOT FOR YOU"> <br> <label for="email">Email:</label>
		<input type="text" name="email" value=""> <br> <input
			type="submit">
	</form> -->

</body>
</html>