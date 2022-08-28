<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
try{
String PASS = request.getParameter("new password");
String oldpass = request.getParameter("existing password");
String OLDPASS = "";
String confirmPassword = request.getParameter("confirm password");
Class.forName("com.mysql.cj.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/flyaway";
String user = "root";
String pass = "root";
String sql1 = "select password from login where password='" + oldpass + "'";
String sql2 = "update login set password='" + confirmPassword + "' where username='annukohar'";
Connection con = DriverManager.getConnection(url, user, pass);
Statement st = con.createStatement();
ResultSet rs = st.executeQuery(sql1);
if (rs.next()) {
	OLDPASS = rs.getString("password");
}
if (PASS.equals(confirmPassword)) {
	if (oldpass.equals(OLDPASS)) {
		st = con.createStatement();
		int i = st.executeUpdate(sql2);
		out.println("----------------------------------------------------------------------------------------------------------PASSWORD UPDATED SUCCESSFULLY---------------------------------------------------------------------------------------------");
		
		
	} else {
		out.println("----------------------------------------------------------------------------------------------------------OLD PASSWORD DOES NOT MATCH---------------------------------------------------------------------------------------------");
		RequestDispatcher rd = request.getRequestDispatcher("/passdata.jsp");
		rd.include(request, response);
	}
} else {
	out.println("----------------------------------------------------------------------------------------------------------------PASSWORD NOT MATCHED------------------------------------------------------------------------------------------------------");
	RequestDispatcher rd = request.getRequestDispatcher("/passdata.jsp");
	rd.include(request, response);
}
} catch (Exception e) {
	out.println(e);
}
%>