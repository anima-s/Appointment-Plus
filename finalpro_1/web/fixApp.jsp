<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www.w3.org/TR/REC-html40/loose.dtd">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
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

<script language="javascript" type="text/javascript" src="C:\Documents and Settings\a\Desktop\cal.js">

//Date Time Picker script- by TengYong Ng of http://www.rainforestnet.com
//Script featured on JavaScript Kit (http://www.javascriptkit.com)
//For this script, visit http://www.javascriptkit.com

</script>
</head>

<%!     Connection con=null;
        Statement st=null;
        ResultSet rs=null,res=null;
        String resultset[][]=new String[30][2];
        String workSlot,workDay,eEmail;
        int no_of_slot,esno,orgID,i,j,k,counter=0,empID;
        %>

        <%
        orgID=Integer.parseInt(request.getParameter("orgID"));
        eEmail=request.getParameter("eEmail");
        empID=Integer.parseInt(request.getParameter("empID"));
        session.setAttribute("orgID",orgID);
        session.setAttribute("empID",empID);
        session.setAttribute("eEmail", eEmail);
      
      try{
      Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      con = DriverManager.getConnection("jdbc:odbc:mydsn");
      st=con.createStatement();
      rs=st.executeQuery("select sno from staffentry where orgID="+orgID+" and empID="+empID+" ");
      while(rs.next())
          {
            esno=rs.getInt(1);
          }
      session.setAttribute("esno",esno);

     
      %>
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
<div id="page">
<div style="float: right;width: 420px;padding-top: 8px;" class="boxed">
			<h2 style="width: 410px;height: 35px;padding: 10px 0 0 10px;background:#A4C0C8;border-top: 5px solid #5F919E;font-size: 136%;color: #144B6B;">Date selector</h2>
			<div class="content">

                <form id="searchform" method="post" action="appAvail.jsp">
					<fieldset>
                         <p>Please select a date to take appointment and check the availability.</p><br><br>
                    <br>
                       <center>                      
                        <table width="300" cellspacing=0 border="0" cellpadding="0" align="center" summary="">  
                         <tr>
                        <td>
                        <input type="Text" name="demo1" id="demo1" maxlength="25" size="25"><a href="javascript:NewCal('demo1','ddmmyyyy',true,24)"><img src="images/cal.gif" width="16" height="16" border="0" alt="Pick a date"></a>
                        <span class="descriptions">pick a date..</span>
                        </td>
                        </tr>
                        </table>
                        <br>
                    <input type="submit" value="Check Available" />
                    </center></fieldset>
				</form>

			</div>
		</div>
<div style="float: left;width: 260px;">
		<div id="news" class="boxed">
<div  height="500" width="500" border="0">
    <img src="C:\Documents and Settings\a\My Documents\NetBeansProjects\finalpro_1\web\images\images[89].jpg"  height="290" width="290" border="0" alt="">
</div>
		</div>

	</div>
</div>
<div id="footer">

</div>


 <%
       }
     catch (SQLException e) {
        out.println("Exception i:" + e);
     }
      catch (Exception e) {
      out.println("Error occurred :" + e);
     }

      %>
</body>
</html>
