<%--
    Document   : servletIndex
    Created on : Apr 28, 2008, 12:01:07 AM
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
</head>
<body>
<%!Connection con=null;
        Statement st=null;
        ResultSet rs=null,res=null;
        int ID,staff,telcode,telnum,numofslot;
        String oname,email,regnum,loc,workslot,workday,catagory;
%>


<div id="header">
	<div id="logo">
		<h1><a href="#">Appointment+.com</a></h1>
		<h2><a href="">Manage your appointments</a></h2>
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
<div style="width: 600px;margin: 0 auto;padding: 30px 0;">
<div id="search" class="boxed">
			<h2 id="profile">Registeration</h2>
			<div class="content">
<p><strong>Please fill the organisation details.</strong></p><br><br>
                <form id="searchform" method="post" action="./insertcompleteReg.jsp" name="mainForm">
                    <%
      if(session.getAttribute("updateOrgRecords").toString().equals("true"))
          {
      ID=Integer.parseInt(session.getAttribute("ID").toString());//out.println(ID);

      try{
      Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      con = DriverManager.getConnection("jdbc:odbc:mydsn");
      st=con.createStatement();

      rs=st.executeQuery("select * from org where orgID="+ID+" ");
      while(rs.next())
          {
          oname=rs.getString("orgName");
          email=rs.getString("oEmail");
        regnum=rs.getString("regNo");
         loc=rs.getString("loc");
         staff=Integer.parseInt(rs.getString("staffCap"));
         numofslot=rs.getInt("no_of_slot");
         workslot=rs.getString("work_slots");
         telcode=rs.getInt("telcode");
         telnum=rs.getInt("telno");
         workday=rs.getString("work_days");
         catagory=rs.getString("catagory");

          }
      %>
    
					<fieldset>
                     <table align="center">
                         <tr><td>Name Of Organisation:</td><td><input id="searchinput" type="text" name="oname"  value="<jsp:expression>oname</jsp:expression>"/>
                 <DIV id="settingText">capital letters only.</DIV></td></tr>
              <tr><td>Registeration No.:</td><td><input id="searchinput" type="text" name="regnum" size="22"  value="<jsp:expression>regnum</jsp:expression>" /></td></tr>
              <tr>
                     <td>Catagory:</td><td>
                     <SELECT name="catagory" id="searchselect">
                         <OPTION>Hospital</OPTION>
                         <OPTION>Law Consultants</OPTION>
                         <OPTION>Fitness Center</OPTION>
                     </SELECT>
                     </td>
                   </tr>
                   <tr><td>Location:</td><td><textarea name="loc" rows="4" cols="24" ><jsp:expression>loc</jsp:expression></textarea></td></tr>
              <tr><td>National Certified:</td>
              <td>
                <select name="certify" style="width: 215px;	margin-bottom: 5px;">
                    <option>yes</option>
                    <option>no</option>
                </select>
              </td></tr>
            <tr><td>Certifying Authority:</td><td><input id="searchinput" type="text" name="name_certify"/></td></tr>
            <tr><td>Staff Capacity:</td><td><input id="searchinput" type="text" name="staff_capacity"  value="<jsp:expression>staff</jsp:expression>"/></td></tr>
            <tr><td>No. Of Working Slots:</td><td><input id="searchinput" type="TEXT" name="numofslot"  value="<jsp:expression>numofslot</jsp:expression>"/></td></tr>
            <tr><td>Working Slots:</td><td><textarea  name="workslot" rows="2" cols="24"><jsp:expression>workslot</jsp:expression></textarea><DIV id="settingText">e.g.(10:30-12:30,13:25-15:45).</DIV></td></tr>
            <tr><td>Working Days:</td><td><input id="searchinput" type="TEXT" name="workdays"  value="<jsp:expression>workday</jsp:expression>"/><DIV id="settingText">e.g.(fri,sat,sun).</DIV></td></tr>
            <tr><td>Telephone:</td><td><input style="width: 60px;margin-bottom: 5px;" type="TEXT" name="telcode"  value="<jsp:expression>telcode</jsp:expression>"/>
            <input style="width: 140px;margin-bottom: 5px;" type="TEXT" name="telnum"  value="<jsp:expression>telnum</jsp:expression>"/><DIV id="settingText">code and number.</DIV></td></tr>

              </table><br><hr>
                </fieldset>
              <%
}


     catch (SQLException e) {
        out.println("ANIMA ANIMA " + e);
     }
      catch (Exception e) {
      out.println("Error occurred " + e);
     }
}
else
    {
      %>
<fieldset>
                     <table align="center">
                         <tr><td>Name Of Organisation:</td><td><input id="searchinput" type="text" name="oname"  value=""/>
                 <DIV id="settingText">capital letters only.</DIV></td></tr>
              <tr><td>Registeration No.:</td><td><input id="searchinput" type="text" name="regnum" size="22"  value="" /></td></tr>
              <tr>
                     <td>Catagory:</td><td>
                     <SELECT name="catagory" id="searchselect">
                         <OPTION>Hospital</OPTION>
                         <OPTION>Law Consultants</OPTION>
                         <OPTION>Fitness Center</OPTION>
                     </SELECT>
                     </td>
                   </tr>
                   <tr><td>Location:</td><td><textarea name="loc" rows="4" cols="24" ></textarea></td></tr>
              <tr><td>National Certified:</td>
              <td>
                <select name="certify" style="width: 215px;	margin-bottom: 5px;">
                    <option>yes</option>
                    <option>no</option>
                </select>
              </td></tr>
            <tr><td>Certifying Authority:</td><td><input id="searchinput" type="text" name="name_certify"/></td></tr>
            <tr><td>Staff Capacity:</td><td><input id="searchinput" type="text" name="staff_capacity"  value=""/></td></tr>
            <tr><td>No. Of Working Slots:</td><td><input id="searchinput" type="TEXT" name="numofslot"  value=""/></td></tr>
            <tr><td>Working Slots:</td><td><textarea  name="workslot" rows="2" cols="24"></textarea><DIV id="settingText">e.g.(10:30-12:30,13:25-15:45).</DIV></td></tr>
            <tr><td>Working Days:</td><td><input id="searchinput" type="TEXT" name="workdays"  value=""/><DIV id="settingText">e.g.(fri,sat,sun).</DIV></td></tr>
            <tr><td>Telephone:</td><td><input style="width: 60px;margin-bottom: 5px;" type="TEXT" name="telcode"  value=""/>
            <input style="width: 140px;margin-bottom: 5px;" type="TEXT" name="telnum" value=""/><DIV id="settingText">code and number.</DIV></td></tr>

              </table><br><hr>
                </fieldset>
  <%
      }
      %>
                <br>

              <center>
               <table>
               <tr>
                   <td>
                       <form action="./insertcompleteReg.jsp" method="post">
                           <input type="submit" value="  NEXT  " name="but1" />
                       </form>
                   </td>
                   <td>
                       <form action="index.jsp" method="post">
                           <input type="submit" value="  EXIT  " name="but2" />
                       </form>
                   </td>
               </tr>
               </table>
              </center> 
				</form>
			</div>
		</div>
</div>

</body>
</html>