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
<title>Insert title here</title>
</head>
<body>
<h1> Change password:</h1>
<form action="changepassword.jsp" method="post">
Enter existing password <input type="password" name="existing password" required><br><br>
Enter new password <input type="password" name="new password" required><br><br>
Confirm password <input type="password" name="confirm password" required><br><br>
<input type="submit" value="change">
</form>
</body>
</html>