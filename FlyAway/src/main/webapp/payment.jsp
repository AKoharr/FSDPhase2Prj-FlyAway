<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <style>
    body { 
background-image:url("flyaway.jpg");
}
   h1 {text-align:center;color:green;}
   h2 {text-align:center;}
   </style>
<%
int count=Integer.parseInt(request.getParameter("no of persons"));
out.println("<h1>"+"Payment of amount " + 5000*count + "/- is successful" +"</h1>");
out.println("");

out.println("<h2>"+"HAVE A SAFE JOURNEY..."+"</h2>");
%>