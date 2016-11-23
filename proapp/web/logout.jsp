<%-- 
    Document   : logout
    Created on : Mar 18, 2010, 12:33:41 PM
    Author     : XP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
    </head>
    <body>
       <%
       String usertype=session.getAttribute("USER").toString();
       if(usertype.equalsIgnoreCase("user"))
           response.sendRedirect("appointment.jsp");
       else
           response.sendRedirect("staffLogin.jsp");
       %>

    </body>
</html>
