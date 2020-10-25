<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Customer</title>
</head>
<body>

	<h4>Create New Customer</h4>
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
	</form>

</body>
</html>