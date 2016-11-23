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
        <%!Connection con=null;
        Statement st=null;
        ResultSet rs=null,res=null;
        int ID,mySp1,mySp2;
        char DateSeparator='-';
        String strMonth,strDate,strYear,datetoparse="";
         String name="",sex="",date="",post="",org="",tadd="",padd="",month="",year="",dob="",email="",tel="",mail="";
        %>

        <%
        mail=request.getParameter("Usermail");
        name=request.getParameter("Username");
        sex=request.getParameter("Usersex");
        dob=request.getParameter("UserDOB");
       post=request.getParameter("Userpost");
       org=request.getParameter("Userorg");
       tadd=request.getParameter("Usertadd");
       padd=request.getParameter("Userpadd");
       tel=request.getParameter("Usertel");
       ID=Integer.parseInt(session.getAttribute("ID").toString());

        //TO REVERSE DATE
        datetoparse=dob;
		mySp1=datetoparse.indexOf(DateSeparator,0);
		mySp2=datetoparse.indexOf(DateSeparator,(mySp1+1));
        strMonth=datetoparse.substring(mySp1+1,mySp2);
		strDate=datetoparse.substring(0,mySp1);
		strYear=datetoparse.substring(mySp2+1,mySp2+5);
        dob=strYear+"-"+strMonth+"-"+strDate;
        //REVERSE DATE ENDS HERE

      try{
      Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      con = DriverManager.getConnection("jdbc:odbc:mydsn");
      st=con.createStatement();
      int has=st.executeUpdate("update custinfo set cname='"+name+"',cDOB='"+dob+"',cmail='"+mail+"',cpadd='"+padd+"',ctadd='"+tadd+"',cCon='"+tel+"',cdesg='"+post+"',corg='"+org+"',csex='"+sex+"' where sno="+ID+" ");
      if(has!=0)
          {
          %>
          <div style="width: 400px;margin: 0 auto;padding: 30px 0;">
<div id="search" class="boxed">
			<h2 id="detail">User Profile Updated</h2>
			<div class="content">
                <form id="searchform" method="post" action="appointment.jsp">
					<fieldset>
                         <p>User profile is updated successfully.</p><br><br>
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
