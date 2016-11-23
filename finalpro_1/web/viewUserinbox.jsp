<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
 

        <%!Connection con=null;
        Statement st=null;
        ResultSet rs=null,res=null;
        int orgID,i,j,k,esno,custID;
        String name,slot,empID,appdate,msg="",sql="",mail;
        String detail[][];
        %>

        <%
        //empID=session.getAttribute("esno").toString();
        custID=Integer.parseInt(session.getAttribute("ID").toString());
        try{
      Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      con = DriverManager.getConnection("jdbc:odbc:mydsn");
      st=con.createStatement();
      rs=st.executeQuery("select cmail from custinfo where sno="+custID+" ");
      while(rs.next())
          mail=rs.getString(1);
      rs=st.executeQuery("select * from inbox where receiver='"+mail+"' ");
      if(rs.next())
          {
      %>

<div style="width: 1000px;margin: 0 auto;padding: 30px 0;">
      <div id="search" class="boxed">
			<h2 id="staffdetail">Appointment List</h2>
            <div class="content">
					<fieldset>
                        <br>
   
      <table border="1" cellpadding="1" cellspacing="1" align="center">
              <tr bgcolor="">
              <th>MESSAGE</th>
              <th>SENT ON</th>
              <th>SENDER</th>
              </tr>

   <%
      
      rs=st.executeQuery("select * from inbox where receiver='"+mail+"' ");
      while(rs.next())
          {

      %>
      <tr bgcolor="#A4C0C8">
    <td><jsp:expression>rs.getString("msg")</jsp:expression></td>

    <td><jsp:expression>rs.getString("sent_time")</jsp:expression></td>

    <td><jsp:expression>rs.getString("sender")</jsp:expression></td>

</tr>
<%
}
%>
 </table><br>
     <center>
  <form action="appointment.jsp">
      <input type="submit" value="   OK  " />
      </form>
  </center>
					</fieldset>
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
			<h2 id="detail">Appointment List</h2>
            <div class="content">
					<fieldset>
                        <br>

                <form id="searchform" action="appointment.jsp">
					<fieldset>
                         <h3>You have no appointments.</h3><br><br>
                    
                     <center>  
      <input type="submit" value="   OK  " />      
  </center>
  </fieldset><br>
				</form>

					</fieldset>
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
