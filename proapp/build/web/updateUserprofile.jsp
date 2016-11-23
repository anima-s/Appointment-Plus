<%--
    Document   : try2
    Created on : Apr 27, 2008, 12:03:28 PM
    Author     : sandeep
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
<link rev="made" href="mailto:contact@rainforestnet.com">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="generator" content="NoteTab Light 4.9">
  <meta name="author" content="TengYong Ng">
  <meta name="description" content="">
  <meta name="keywords" content="">

<script language="javascript" type="text/javascript" src="C:\Documents and Settings\XP\Desktop\cal.js">

//Date Time Picker script- by TengYong Ng of http://www.rainforestnet.com
//Script featured on JavaScript Kit (http://www.javascriptkit.com)
//For this script, visit http://www.javascriptkit.com

</script>
</head>
    <body>
        <div id="header">
	<div id="logo">
		<h1><a href="#">Appointment+.com</a></h1>
		<h2><a href="">Your Everyday Alarm Clock</a></h2>
	</div>
	<div id="menu">
		<ul>
			<li class="active"><a href="logout.jsp">Home</a></li>
			<li class="active"><a href="index.jsp">Logout</a></li>
			<li><a href="#">About</a></li>
			<li><a href="#">Forums</a></li>
			<li><a href="#">Contact</a></li>
		</ul>
	</div>
</div>
<%!Connection con=null;
        Statement st=null;
        ResultSet rs=null,res=null;
        int ID;
         String name="",sex="",date="",post="",org="",tadd="",padd="",month="",year="",dob="",email="",tel="",mail="";
        %>

        <%
        ID=Integer.parseInt(session.getAttribute("ID").toString());
       
      try{
      Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      con = DriverManager.getConnection("jdbc:odbc:mydsn");
      st=con.createStatement();
      rs=st.executeQuery("select * from custinfo where sno="+ID+" ");
      while(rs.next())
          {
          name=rs.getString("cname");
          dob=rs.getString("cDOB");
          mail=rs.getString("cmail");
          post=rs.getString("cdesg");
          tadd=rs.getString("ctadd");
          padd=rs.getString("cpadd");
          tel=rs.getString("cCon");
          }
         %>
<div style="width: 600px;margin: 0 auto;padding: 30px 0;">
<div id="search" class="boxed">
			<h2 id="profile">
            User Profile</h2>
			<div class="content">
            <form name="Userprofile" id="searchform" action="insertUserprofile.jsp"  method="post">
            <fieldset>
             <table align="center">
              <tr>
                  <td>Name:</td><td><input id="searchinput" type="text" name="Username" value="<jsp:expression>name</jsp:expression>" /></td>
            </tr>           
            <tr>
            <td>Sex:</td><td><select id="searchinput" name="Usersex" style="width: 215px;margin-bottom: 5px;">
                <option>M</option>
                <option>F</option>
            </select></td>
            </tr>
             <tr>
            <td>Date Of Birth:</td>
            <td><input type="text" name="UserDOB" id="demo1" size="30" value="<jsp:expression>dob</jsp:expression>"/>
            <a href="javascript:NewCal('demo1','ddmmyyyy',true,24)">
                <img src="images/cal.gif" width="16" height="16" border="0" alt="Pick a date"></a>
                <span class="descriptions">select date of birth..</span>
            </td>
            </tr>
              <tr><td>Designation:</td><td><input id="searchinput" type="text" name="Userpost" value="<jsp:expression>post</jsp:expression>"/></td></tr>
              <tr><td>Organisation:</td><td><input id="searchinput" type="text" name="Userorg" value="<jsp:expression>org</jsp:expression>"/></td></tr>
              <tr><td>Temporary Address:</td><td><input id="searchinput" type="text" name="Usertadd" value="<jsp:expression>tadd</jsp:expression>"/></td></tr>
              <tr><td>Permanent Address:</td><td><input id="searchinput" type="text" name="Userpadd" value="<jsp:expression>padd</jsp:expression>" /></td></tr>
              <tr><td>Contact:</td><td><input id="searchinput" type="text" name="Usertel" value="<jsp:expression>tel</jsp:expression>"/></td></tr>
              <tr><td>Email:</td><td><input id="searchinput" type="text" name="Usermail" value="<jsp:expression>mail</jsp:expression>"/></td></tr>
           </table>
           </fieldset>
             <br>
               <center>
               <table>
              <tr><td><form action="insertUserprofile.jsp" method="post"><input type="submit" value="SUBMIT" size="5" /></form></td>
              <td><form action="appointment.jsp"><input type="submit" value="CANCEL" size="5"/></form></td></tr>
               </table>
              </center>
             </form>
        </div>
		</div>
</div>
        <%
         // }
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
