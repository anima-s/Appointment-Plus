<%-- 
    Document   : makeUpdateAttributeFalse
    Created on : Mar 14, 2010, 4:35:43 PM
    Author     : XP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:scriptlet>session.setAttribute("updateOrgRecords","false");
        response.sendRedirect("regStaffDetail.jsp");</jsp:scriptlet>
    </body>
</html>
