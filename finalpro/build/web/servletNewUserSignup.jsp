<%--
    Document   : servletIndex
    Created on : Apr 28, 2008, 12:01:07 AM
    Author     : sandeep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.*" %>

 
  <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--

Design by Free CSS Templates
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 2.5 License

Title      : Center Stage
Version    : 1.0
Released   : 20070710
Description: A two-column, fixed-width template suitable for small business websites.

-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Appointment+.com</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="default.css" rel="stylesheet" type="text/css" />
</head>
<body>

     <%!
        Connection con=null;
        Statement st=null;
        ResultSet rs=null;
        String sql="";
        String userpassword="",id="",usermail="",usertype="";
        %>
 <%
        try{
      Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      con = DriverManager.getConnection("jdbc:odbc:mydsn");
     st=con.createStatement();

             usermail=request.getParameter("Usermail");
             userpassword=request.getParameter("Userpwd");
            usertype=request.getParameter("selectUsertype");

        if(usertype.equalsIgnoreCase("user"))
            {
            sql="insert into custinfo(cmail,cpwd) values('"+usermail+"','"+userpassword+"')";
            int has=st.executeUpdate(sql);
            sql="select sno from custinfo where cmail='"+usermail+"' ";
            rs=st.executeQuery(sql);
            while(rs.next())
                id=rs.getString(1);

             sql="Your UserID is "+id+" and Password is "+userpassword+" .";
            }
        else if(usertype.equalsIgnoreCase("Organisation"))
            {
            sql="insert into org(oEmail,orgPwd) values('"+usermail+"','"+userpassword+"')";
            int has=st.executeUpdate(sql);
            sql="select orgID from org where oEmail='"+usermail+"' ";
            rs=st.executeQuery(sql);
            while(rs.next())
                id=rs.getString(1);

             sql="Your UserID is "+id+" and Password is "+userpassword+" .You have to submit all the documents related to your registeration number and certifying authority.For more details go to HELP regarding registeration.";
            }       
       
      %>

<div id="header">
	<div id="logo">
		<h1><a href="#">Appointment+.com</a></h1>
		<h2><a href="">Your Everyday Alarm Clock</a></h2>
	</div>
	<div id="menu">
		<ul>
			<li class="active"><a href="#">Home</a></li>
			<li><a href="#">About</a></li>
			<li><a href="#">Events</a></li>
			<li><a href="#">Galleries</a></li>
			<li><a href="#">Forums</a></li>
			<li><a href="#">Contact</a></li>
		</ul>
	</div>
</div>
<div style="width: 400px;margin: 0 auto;padding: 30px 0;">
<div id="search" class="boxed">
			<h2 id="detail">
            Register successful</h2>
			<div class="content">
                <form id="searchform" method="post" action="index.jsp">
					<fieldset>
                        <p><jsp:expression>sql</jsp:expression></p>
                        <input id="searchsubmit" type="submit" value="  OK  " />
					</fieldset>
				</form>
			</div>
		</div>
</div>
<%   }
     catch (SQLException e) {
        out.println("ANIMA ANIMA " + e);
     }
      catch (Exception e) {
      out.println("Error occurred " + e);
     }
        %>
</body>
</html>