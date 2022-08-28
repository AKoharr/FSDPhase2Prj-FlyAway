<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<style >
body { 
background-image:url("flyaway.jpg");
}
table {
  border: 1px solid white;
  border-radius: 10px;

}
th, td {
  borde:1px solid black;
  border-style: solid;

}

h1 {text-align: center;}
h2 {text-align: center;}
form {text-align: center;}
</style>
<%
String SOURCE = request.getParameter("source");
String DESTINATION = request.getParameter("destination");
String time = "10:45 PM";
Class.forName("com.mysql.cj.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/flyaway";
String user = "root";
String pass = "root";
String sql = "select * from flights where source='" + SOURCE + "'and destination='" + DESTINATION + "'";
Connection con = DriverManager.getConnection(url, user, pass);
Statement st = con.createStatement();
ResultSet rs = st.executeQuery(sql);
%>
<h1>Flight Details:</h1>
<table style=margin-left:auto;margin-right:auto;>
	<tr>
		<th>Flight name</th>
		<th>Airline</th>
		<th>Way</th>
		<th>Price</th>
		<th>Source</th>
		<th>Destination</th>
		<th>Time</th>
	</tr>
	<%
	while (rs.next()) {
	%>
	<tr>
		<td><%=rs.getString(1)%></td>
		<td><%=rs.getString(2)%></td>
		<td><%=rs.getString(3)%></td>
		<td><%=rs.getString(4) + "/-"%></td>
		<td><%=rs.getString(5)%></td>
		<td><%=rs.getString(6)%></td>
		<td><%=time%></td>
	</tr>
	<%
	}
	%>
</table>
<form action="payment.jsp" method="post">
<br>
No of Persons <input type="number" name="no of persons" required></br> </br>
	<h1>Payment Details :</h1>
	Debit card Number : <input type="number" required></br>
	</br> Expiry Date : <input type="text"></br>
	</br> CVV : <input type="number" required></br>
	</br> <input type="submit" value="submit" ></br>
	</br>
</form>
