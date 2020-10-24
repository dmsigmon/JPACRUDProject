<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Results</title>
</head>
<body>
	<c:choose>
		<c:when test="${! empty customer}">
			<h1>Customer Created</h1>
			<table>
				<tr>
					<td>Customer ID:</td>
					<td>${customer.id}</td>
				</tr>
				<tr>
					<td>Customer First Name:</td>
					<td>${customer.firstName}</td>
				</tr>
				<tr>
					<td>Customer last Name :</td>
					<td>${customer.lastName}</td>
				</tr>
				<tr>
					<td>Address:</td>
					<td>${customer.address}</td>
				</tr>
				<tr>
					<td>Email:</td>
					<td>${customer.email}</td>
				</tr>
				<tr>
					<td>Phone Number:</td>
					<td>${customer.phone}</td>
				</tr>
			</table>
			<p>
				<a href="/" class="btn btn-secondary" role="button">Back
					to Home</a>
			</p>
		</c:when>
		<c:otherwise>
    No Customer found
    
    	<p>
				<a href="index.do" class="btn btn-secondary" role="button">Back
					to Home</a>
			</p>
		</c:otherwise>
	</c:choose>
	
	public boolean destroy(int id) {
		EntityManager em = emf.createEntityManager();
		
		Actor poorActor = em.find(Actor.class, id);
		
		em.getTransaction().begin();
		em.remove(poorActor);
		boolean actorWasDeleted = ! em.contains(poorActor);
		
		em.flush();
		
		em.getTransaction().commit();
		
		em.close();
		
		return actorWasDeleted;

<!-- 	<form action="deleteCustomer.do" method="GET">
		<input type="text" name="Customer" /> <br /> <br /> <input
			type="submit" value="Submit" /> <br />
	</form> -->


</body>
</html>