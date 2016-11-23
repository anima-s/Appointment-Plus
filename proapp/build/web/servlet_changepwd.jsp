<%--
    Document   : insertUserprofile
    Created on : Oct 21, 2009, 8:59:23 PM
    Author     : PPT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%--
    Document   : servletIndex
    Created on : Apr 28, 2008, 12:01:07 AM
    Author     : sandeep
--%>


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
			<li class="active"><a href="#">Home</a></li>
			<li><a href="#">About</a></li>
			<li><a href="logout.jsp">Logout</a></li>
			<li><a href="#">Forums</a></li>
			<li><a href="#">Contact</a></li>
		</ul>
	</div>
</div>
        <%!Connection con=null;
        Statement st=null;
        ResultSet rs=null,res=null;
        int ID,has;
         String oldpwd,newpwd,newpwd2,usertype,sql;
        %>

        <%
        oldpwd=request.getParameter("oldpwd");
        newpwd=request.getParameter("newpwd");
        newpwd2=request.getParameter("newpwd2");
        usertype=request.getParameter("usertype");      
      try{
      Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      con = DriverManager.getConnection("jdbc:odbc:mydsn");
      st=con.createStatement();
      if(usertype.equalsIgnoreCase("user"))
          sql="update custinfo set cpwd='"+newpwd+"' where cpwd='"+oldpwd+"'";
      else if(usertype.equalsIgnoreCase("organisation"))
          sql="update org set orgPwd='"+newpwd+"' where orgPwd='"+oldpwd+"'";
      int has=st.executeUpdate(sql);
      if(has!=0)
          {
          %>
          <div style="width: 400px;margin: 0 auto;padding: 30px 0;">
<div id="search" class="boxed">
			<h2 id="detail">Successfull!</h2>
			<div class="content">
                <form id="searchform" method="post" action="index.jsp">
					<fieldset>
                        <p>Password is changed successfully.Your new password is <jsp:expression>newpwd</jsp:expression></p><br><br>
                    </fieldset><br>
                       <center>
                        <input type="submit" value="  OK   " />
                        </center>
				</form>
			</div>
		</div>
</div>

          <%
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
