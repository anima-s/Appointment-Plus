<%-- 
    Document   : servletdeleteAcc
    Created on : Oct 25, 2009, 9:04:25 PM
    Author     : PPT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

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
        String a="",b="",c="",sql="",usertype;
        %>
        <%
        a=request.getParameter("deluserID");
        b=request.getParameter("delpwd1");
        c=request.getParameter("delpwd2");
        usertype=session.getAttribute("USER").toString();
        try{
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
        con = DriverManager.getConnection("jdbc:odbc:mydsn");
        st=con.createStatement();
        if(b.equals(c))
        {
            if(usertype.equalsIgnoreCase("user"))
                sql="delete from custinfo where sno="+a+" and cpwd='"+b+"' ";
            else if(usertype.equalsIgnoreCase("organisation"))
                sql="delete from org where orgID="+a+" and orgPwd='"+b+"' ";
            int has=st.executeUpdate(sql);
            if(has!=0)
            {
                %>
<div style="width: 400px;margin: 0 auto;padding: 30px 0;">
<div id="search" class="boxed">
			<h2 id="detail">Account Deleted</h2>
			<div class="content">

                <form id="searchform" method="post" action="index.jsp">

					<fieldset>
                        <center> <h5>Your account has been deleted successfully.</h5>

                        <br><input type="submit" value="  OK  " />
                        </center>
					</fieldset>

				</form>
			</div>
		</div>
</div>

                <%              
            }
            else
            {
                %>
<div style="width: 400px;margin: 0 auto;padding: 30px 0;">
<div id="search" class="boxed">
			<h2 id="detail">Account Not Deleted!!</h2>
			<div class="content">
                <form id="searchform" method="post" action="deleteAccount.jsp">
					<fieldset>
                        <center> <h5>Please enter correct userID and password to delete account.</h5>
                        <br><input type="submit" value="  OK  " />
                        </center>
					</fieldset>
				</form>
			</div>
		</div>
</div>

                <%
            }
        }
   
}
     catch (SQLException e) {
        out.println("ANIMA ANIMA " + e);
     }
      catch (Exception e) {
      out.println("Error occurred " + e);
     }

        %>
    </body>
</html>
