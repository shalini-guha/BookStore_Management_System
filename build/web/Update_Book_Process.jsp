<%-- 
    Document   : Update_Book_Process
    Created on : Apr 19, 2018, 1:12:19 PM
    Author     : Zlalini
--%>
    <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
        <%@ page import="java.sql.*" %>
            <%! String driverName = "com.mysql.jdbc.Driver";%>
                <%!String url = "jdbc:mysql://localhost:3306/login";%>
                    <%!String user = "root";%>
                        <%!String psw = "";%>
                            <%

String bid = request.getParameter("bid");
String bname=request.getParameter("bname");
String author=request.getParameter("author");
String quantity=request.getParameter("quantity");
String id=request.getParameter("id");
String price=request.getParameter("price");
out.println(id);
out.println(bname);
out.println(author);
out.println(quantity);
out.println(bid);

if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
String personID = id;
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update books set bid=?,bname=?,author=?,quantity=?,uname=?,price=? where bid='"+bid+"'";
ps = con.prepareStatement(sql);
ps.setString(1, bid);
ps.setString(2, bname);
ps.setString(3, author);
ps.setString(4, quantity);
ps.setString(5, id);
ps.setString(6, price);
int i = ps.executeUpdate();
if(i > 0)
{
%>
                                <!DOCTYPE html>
                                <html>

                                <head>
                                    <title>Book Added Successfully</title>
                                    <meta name="viewport" content="width=device-width, initial-scale=1">
                                    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
                                    <meta name="keywords" content="Smooth Error Page template Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web forms, Login sign up Responsive web Forms, SmartPhone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design"
                                    />
                                    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
                                    <!-- Custom Theme files -->
                                    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
                                    <!-- //Custom Theme files -->
                                    <!-- web font -->
                                    <link href="//fonts.googleapis.com/css?family=Josefin+Sans" rel="stylesheet">
                                    <link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic' rel='stylesheet'
                                        type='text/css'>
                                    <!-- //web font -->
                                </head>

                                <body>
                                    <!--mian-content-->
                                    <h1>Details Updated!</h1>
                                    <div class="main-wthree">
                                        <p>
                                            <a href="Search_Book.jsp">Search for more Books </a>
                                        </p>
                                        <br>
                                        <br>
                                        <br>

                                    </div>
                                    <!--//mian-content-->
                                    <!-- copyright -->

                                    <!-- //copyright -->

                                </body>

                                </html>
                                <%
}
else
{
%>
                                    <!DOCTYPE html>
                                    <html>

                                    <head>
                                        <title>Book Update Failed</title>
                                        <meta name="viewport" content="width=device-width, initial-scale=1">
                                        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
                                        <meta name="keywords" content="Smooth Error Page template Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web forms, Login sign up Responsive web Forms, SmartPhone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design"
                                        />
                                        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
                                        <!-- Custom Theme files -->
                                        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
                                        <!-- //Custom Theme files -->
                                        <!-- web font -->
                                        <link href="//fonts.googleapis.com/css?family=Josefin+Sans" rel="stylesheet">
                                        <link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic' rel='stylesheet'
                                            type='text/css'>
                                        <!-- //web font -->
                                    </head>

                                    <body>
                                        <!--mian-content-->
                                        <h1>Could not Update Details</h1>
                                        <div class="main-wthree">
                                            <h2>ERROR</h2>
                                            <p>
                                                <span class="sub-agileinfo">Sorry! </span>The record you requested was not Updated!</p>
                                            <!--form-->
                                            <!--//form-->
                                            <p>
                                                <a href="Search_Book.jsp">Search for more Books </a>
                                            </p>
                                        </div>
                                        <!--//mian-content-->
                                        <!-- copyright -->


                                    </body>

                                    </html>
                                    <%
} 
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>