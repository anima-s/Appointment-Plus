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
        int orgID,tCode,tNo;
        String empID;
         String name="",sex="",post="",org="",tadd="",padd="",dob="",email="";
        %>

        <%
        
        empID=session.getAttribute("esno").toString();
        orgID=Integer.parseInt(session.getAttribute("ID").toString());
      try{
      Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      con = DriverManager.getConnection("jdbc:odbc:mydsn");
      st=con.createStatement();
      rs=st.executeQuery("select * from staffentry where sno="+empID+" ");
      while(rs.next())
          {
         name=rs.getString("eName");
         dob=rs.getString("eDOB");
          sex=rs.getString("sex");
          tadd=rs.getString("tadd");
         padd=rs.getString("padd");
          email=rs.getString("eEmail");
          tCode=rs.getInt("telcode");
          tNo=rs.getInt("telno");
          }
         %>
<div style="width: 600px;margin: 0 auto;padding: 30px 0;">
<div id="search" class="boxed">
			<h2 id="profile">
            Employee Personal Profile</h2>
			<div class="content">
            <form name="Userprofile" id="searchform" action="servletUpdateEmpProfile.jsp"  method="post">
            <fieldset>
             <table align="center">
              <tr>
                  <td>Name:</td><td><input id="searchinput" type="text" name="Username" value=<jsp:expression>name</jsp:expression> /></td>
            </tr>
            <tr>
            <td>Sex:</td><td><select id="searchinput" name="Usersex" style="width: 215px;margin-bottom: 5px;">
                <option>M</option>
                <option>F</option>
            </select></td>
            </tr>
             <tr>
            <td>Date Of Birth:</td>
            <td><input type="text" name="UserDOB" id="demo1" size="30" value=<jsp:expression>dob</jsp:expression>/>
            <a href="javascript:NewCal('demo1','ddmmyyyy',true,24)">
                <img src="images/cal.gif" width="16" height="16" border="0" alt="Pick a date"></a>
                <span class="descriptions">select date of birth..</span>
            </td>
            </tr>
              <tr><td>Temporary Address:</td><td><input id="searchinput" type="text" name="Usertadd" value=<jsp:expression>tadd</jsp:expression> /></td></tr>
              <tr><td>Permanent Address:</td><td><input id="searchinput" type="text" name="Userpadd" value=<jsp:expression>padd</jsp:expression> /></td></tr>
              <tr><td>Contact:</td><td><input id="searchinput" type="text" name="tcode" value=<jsp:expression>tCode</jsp:expression>/><input id="searchinput" type="text" name="tNo" value=<jsp:expression>tNo</jsp:expression>/></td></tr>
              <tr><td>Email:</td><td><input id="searchinput" type="text" name="Usermail" value=<jsp:expression>email</jsp:expression>/></td></tr>
           </table>
           </fieldset>
             <br>
               <center>
               <table>
              <tr><td><form action="servletUpdateEmpProfile.jsp" method="post"><input type="submit" value="SUBMIT" size="5" /></form></td>
              <td><form action="staffTasks.jsp"><input type="submit" value="CANCEL" size="5"/></form></td></tr>
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