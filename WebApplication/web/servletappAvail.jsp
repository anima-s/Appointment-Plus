<%--
    Document   : insertUserprofile
    Created on : Oct 21, 2009, 8:59:23 PM
    Author     : PPT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.Date" %>
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
        int has=0,esno,orgID,custID,appnum,mySp1,mySp2;
         String empID="",OrgID="",appdate="",appdate1="",slot="",datetoparse="",empmail="",CustID="",custmail="",sql="",msg,date,sender,receiver,name;
         String strMonth,strDate,strYear;
         char DateSeparator='-';
         %>

        <%
      
      try{
        esno=Integer.parseInt(session.getAttribute("esno").toString());
        orgID=Integer.parseInt(session.getAttribute("orgID").toString());
        custID=Integer.parseInt(session.getAttribute("ID").toString());
        appdate=session.getAttribute("appdate").toString();

        //TO REVERSE DATE
        datetoparse=appdate;
		mySp1=datetoparse.indexOf(DateSeparator,0);
		mySp2=datetoparse.indexOf(DateSeparator,(mySp1+1));
        strMonth=datetoparse.substring(mySp1+1,mySp2);
		strDate=datetoparse.substring(0,mySp1);
		strYear=datetoparse.substring(mySp2+1,mySp2+5);
        appdate1=strYear+"-"+strMonth+"-"+strDate;
        //REVERSE DATE ENDS HERE

      slot=request.getParameter("selectslot");
      Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      con = DriverManager.getConnection("jdbc:odbc:mydsn");
      st=con.createStatement();
      rs=st.executeQuery("select empID from staffentry where sno="+esno+" ");
      while(rs.next())
          empID=rs.getString(1);
      has=st.executeUpdate("INSERT INTO slot(orgID,empID,custID,appdate,slot) VALUES("+orgID+","+empID+","+custID+",'"+appdate1+"','"+slot+"')");


      if(has==0)
         sql="Unable to process the request for appointment.Please fill the details correctly and try again.";
      else
          {
          sql="Your appointment has been fixed. Thankyou for using our site.";
          rs=st.executeQuery("select eName,eEmail from staffentry where sno="+esno+" ");
          while(rs.next())
              {
              name=rs.getString(1);
              empmail=rs.getString(2);
              }
          msg="The appointment has been fixed for date "+appdate+" at time slot "+slot+" with "+name+" .";
          date=(new Date()).toString();
          rs=st.executeQuery("select oEmail from org where orgID="+orgID+"");
          while(rs.next())
              sender=rs.getString(1);
          rs=st.executeQuery("select cmail from custinfo where sno="+custID+" ");
          while(rs.next())
              receiver=rs.getString(1);
          res=st.executeQuery("select sno from slot");
          while(res.next())
          appnum=res.getInt(1);
          has=st.executeUpdate("insert into inbox(msg,sender,receiver,sent_time,appnum) values('"+msg+"','"+sender+"','"+receiver+"','"+date+"','"+appnum+"')");
          has=st.executeUpdate("insert into inbox(msg,sender,receiver,sent_time,appnum) values('"+msg+"','"+sender+"','"+empmail+"','"+date+"','"+appnum+"')");
          }

      }
     catch (SQLException e) {
        out.println("ANIMA ANIMA " + e);
     }
      catch (Exception e) {
      out.println("Error occurred " + e);
     }

      %>

<div  id="page">
      <div id="content" class="boxed">
			<h2 id="detail">Appointment Status</h2>
			<div class="content">
                <form id="searchform" method="get" action="appointment.jsp">
					<fieldset>
                        <p><jsp:expression>sql</jsp:expression></p><br>
                        <center>
                        <input type="submit" value="   OK   " />
                        </center>
					</fieldset>
				</form>
			</div>
		</div>
<div id="sidebar">

		<div id="news" class="boxed">
<div  height="500" width="500" border="0">
    <img src="C:\Documents and Settings\a\My Documents\NetBeansProjects\finalpro_1\web\images\doc1.jpg"  height="290" width="290" border="0" alt="">
</div>
		</div>

	</div>
</div>
<div id="footer">

</div>
</body>
</html>