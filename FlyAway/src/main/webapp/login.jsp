<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
body { 
background-image:url("flyaway.jpg");
}

h1 {text-align: center;}
form {text-align: center;}

</style>
<title>LOGIN</title>
</head>
<body>

<form action="validate.jsp" method="post">
		<h1> Admin Login</h1>
		USERNAME <input type="text" name="username"></br>
		</br> PASSWORD <input type="password" name="password"></br>
		</br> <input type="submit" value="login">
	</form>

</body>
</html>