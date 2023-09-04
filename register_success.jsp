<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Success</title>
<style type="text/css">
	span {
		display: inline-block;
		width: 200px;
		text-align: left;
	}
</style>
</head>
<body>
	<div align="center">
		<h2>Registration Succeeded!</h2>
		Full name: ${user.name}<br>
		E-mail: ${user.email}<br>
		Password: ${user.password}<br>
		Birthday: ${user.birthday}<br>
		Gender: ${user.gender}<br>
		Married?: ${user.married}<br>
		Note: ${user.note}<br>
	</div>
</body>
</html>