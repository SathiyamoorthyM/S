<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Registration Form</title>
<style type="text/css">
	label {
		display: inline-block;
		width: 200px;
		margin: 5px;
		text-align: left;
	}
	input[type=text], input[type=password], select {
		width: 200px;	
	}
	input[type=radio] {
		display: inline-block;
		margin-left: 45px;
	}
	input[type=checkbox] {
		display: inline-block;
		margin-right: 190px;
	}	
	
	button {
		padding: 10px;
		margin: 10px;
	}
</style>
</head>
<body>
	<div align="center">
		<h2>User Registration</h2>
		<form:form action="submit" method="post" modelAttribute="user">
		
			Full name:<form:input path="name"/><br/>
			
			Email :<form:input path="email"/><br/>
			
			Password : <form:password path="password"/><br/>		

			Birth Day: <form:input path="birthday"/><br/>
			
			Gender : <form:radiobutton path="gender" value="Male"/>Male
			<form:radiobutton path="gender" value="Female"/>Female<br/>
					
			Marital Status: <form:checkbox path="married"/><br/>
			
			Note :<form:textarea path="note" cols="25" rows="5"/><br/>
				
			<form:button>Register</form:button>
		</form:form>
	</div>
</body>
</html>