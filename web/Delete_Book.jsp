<%-- 
    Document   : Delete_Book
    Created on : Apr 19, 2018, 1:28:46 PM
    Author     : Zlalini
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String id=request.getParameter("id");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/login", "root", "");
Statement st=conn.createStatement();
try
{

String sql="Update books set quantity=quantity-1 where bid= '"+id+"'";
int rs=st.executeUpdate(sql); 
if( rs > 0 )
{
response.sendRedirect("Search_Book.jsp");
}
else
{
int i=st.executeUpdate("DELETE FROM users WHERE bid='" + id + "' ");
} 
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>