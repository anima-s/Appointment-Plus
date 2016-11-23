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
        <%!
         Connection con=null;
        Statement st=null;
        ResultSet rs=null;
        String sql="";
        int delapp_sno;
        %>
        <%
        delapp_sno=Integer.parseInt(request.getParameter("delapp_sno"));
        try{
      Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      con = DriverManager.getConnection("jdbc:odbc:mydsn");
    st=con.createStatement();
    sql="delete from slot where sno="+delapp_sno+" ";
    int has=st.executeUpdate(sql);

    sql="delete from inbox where appnum="+delapp_sno+" ";
     has=st.executeUpdate(sql);
    if(has!=0)
    {
  %>
<div style="width: 400px;margin: 0 auto;padding: 30px 0;">
<div id="search" class="boxed">
			<h2 id="detail">Appointment Deleted</h2>
			<div class="content">
                <form id="searchform" method="post" action="deleteApp_list.jsp">
					<fieldset>
                        <center> <h5>Your appointment has been deleted successfully.</h5>                        
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
     catch (SQLException e) {
        out.println("Exception is :  " + e);
     }
      catch (Exception e) {
      out.println("Error occurred : " + e);
     }
        %>
</body>
</html>
