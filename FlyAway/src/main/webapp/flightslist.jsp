<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
Class.forName("com.mysql.cj.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/flyaway";
String user = "root";
String pass = "root";
String sql = "select * from flights order by name";
Connection con = DriverManager.getConnection(url, user, pass);
Statement st = con.createStatement();
ResultSet rs = st.executeQuery(sql);
%>
<style>
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

</style>
<h1>Flights List</h1>
<table style=margin-left:auto;margin-right:auto;>
	<tr>
		<th>name</th>
		<th>airline</th>
		<th>way</th>
		<th>price</th>
	</tr>
	<%
	while (rs.next()) {
	%>
	<tr>
		<td>
			<%=
			rs.getString(1)
			%>
		</td>
		<td>
			<%=
			rs.getString(2)
			%>
		</td>
		<td>
			<%=
			rs.getString(3)
			%>
		</td>
		<td>
			<%=
			rs.getString(4)
			%>
		</td>
	</tr>
	<%
	}
	%>
</table>