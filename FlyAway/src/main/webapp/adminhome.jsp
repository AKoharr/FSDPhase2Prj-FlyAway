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
h2 {text-align: center;}

</style>
<title>WELCOME TO HOME PAGE</title>
</head>
<body>

<h1>WELCOME TO ADMIN HOME PAGE </h1>


<form action="placeslist.jsp" method="post">
			<h2>
				<input type="submit" value="Places List">
			</h2>
		</form>
		<form action="airlineslist.jsp" method="post">
			<h2>
				<input type="submit" value="Airlines List">
			</h2>
		</form>
		<form action="flightslist.jsp" method="post">
			<h2>
				<input type="submit" value="Flights List">
			</h2>
		</form>
		<form action="passdata.jsp" method="post">
			<h2>
				<input type="submit" value="Change Password">
			</h2>
		</form>

</body>
</html>