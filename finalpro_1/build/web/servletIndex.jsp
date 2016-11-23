<%-- 
    Document   : servletIndex
    Created on : Apr 28, 2008, 12:01:07 AM
    Author     : sandeep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Appointment+.com</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="default.css" rel="stylesheet" type="text/css" />
</head>
    <body>
<div id="header">
	<div id="logo">
		<h1><a href="#">Appointment+.com</a></h1>
		<h2><a href="">Manage your appointments</a></h2>
	</div>
	<div id="menu">
		<ul>
			<li class="active"><a href="index.jsp">Home</a></li>
			<li class="active"><a href="about.jsp" target="top">About</a></li>
			<li class="active"><a href="events.jsp" target="top">Events</a></li>
			<li class="active"><a href="contacts.jsp" target="top">Contact</a></li>
		</ul>
	</div>
</div>
  <%!
        Connection con=null;
        Statement st=null;
        ResultSet rs=null;
        String sql="",userpassword="",usertype="",userID="",username="";
        int ID=0;
        %>
 <%
        try{
      Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      con = DriverManager.getConnection("jdbc:odbc:mydsn");
    st=con.createStatement();

         usertype=request.getParameter("Usertypeinput");
         username=request.getParameter("Usernameinput");
         userpassword=request.getParameter("Passwordinput");        
         if(username.equalsIgnoreCase("admin")&& userpassword.equalsIgnoreCase("admin"))
             {
             response.sendRedirect("adminEnableStatus.jsp");

             }
       else if(usertype.equalsIgnoreCase("user"))
            {
           ID=Integer.parseInt(username);
            sql="select * from custinfo where sno='"+ID+"' and cpwd='"+userpassword+"' ";
            rs=st.executeQuery(sql);
            if(rs.next())
              {
                session.setAttribute("ID",ID);
                session.setAttribute("USER", usertype);
                response.sendRedirect("appointment.jsp");
                }
            else
                {
                %>
<script type="text/javascript">
    alert("You have entered wrong username or password.");   
    </script>
                <%
                //response.sendRedirect("index.jsp");
               }
           
            }
        else if(usertype.equalsIgnoreCase("organisation"))
            {
            ID=Integer.parseInt(username);            
            sql="select * from org where orgID='"+ID+"' and orgPwd='"+userpassword+"' ";
            rs=st.executeQuery(sql);
            if(rs.next())
                {
                session.setAttribute("ID",ID);
                session.setAttribute("USER", usertype);               

                     if(rs.getString("status").equals("enabled"))
                     {
                            if(rs.getString("firstaccess").equals("true"))
                            {
                                response.sendRedirect("completeRegisteration.jsp");
                                session.setAttribute("updateOrgRecords", "false");
                            }
                            else
                                {
                                 response.sendRedirect("staffLogin.jsp");
                                 session.setAttribute("updateOrgRecords", "true");
                                 }
                         }
                         else
                         {
                            response.sendRedirect("notEnabled.jsp");
                         }
             }
            else
                {
                %>
<script type="text/javascript">
    alert("You have entered wrong username or password.");
    </script>
    <%response.sendRedirect("index.jsp");
                }
           
           }

        }
     catch (SQLException e) {
        out.println("Exception " + e);
     }
      catch (Exception e) {
      out.println("Error occurred " + e);
     }

        %>

    </body>
</html>
