<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
Class.forName("com.mysql.cj.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/flyaway";
String user = "root";
String pass = "root";
String sql = "select * from places order by name";
Connection con = DriverManager.getConnection(url, user, pass);
Statement st = con.createStatement();
ResultSet rs = st.executeQuery(sql);
%>
<style>
body { 
background-image:url("flyaway.jpg");
}
table, th, td {
  border: 1px solid white;
  border-radius: 10px;

}
th, td {
  background-color: #96D4D4;
}
h1 {text-align: center;}


</style>
<h1>Places List</h1>
<table style=margin-left:auto;margin-right:auto;>
	<tr>
		<th>code</th>
		<th>name</th>
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
	</tr>
	<%
	}
	%>
</table>