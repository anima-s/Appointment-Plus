<%--
    Document   : staff_detail_valid
    Created on : Apr 23, 2008, 9:03:34 PM
    Author     : sandeep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
   <%@page import="java.sql.*" %>
  <%!
        Connection con=null;
        Statement st=null;
        ResultSet rs=null;
        String sql="";
        int i,count=1,j,k,l,orgID;
        char ch=',';
        String slot="",tempID="";
        String slots[];
        %>

        <%
        tempID=session.getAttribute("ID").toString();
        orgID=Integer.parseInt(tempID);
        String slotCount=request.getParameter("slotcount");
        int slotcount=Integer.parseInt(slotCount);
        String dayCount=request.getParameter("daycount");
        int daycount=Integer.parseInt(dayCount);
        String name=request.getParameter("name");
        String empid=request.getParameter("empID");
        String special=request.getParameter("special");
        String salary=request.getParameter("salary");
        String fees=request.getParameter("fees");
        String dob=request.getParameter("dob");
        String sex=request.getParameter("sex");
        String no_slot=request.getParameter("slot");
        String ug=request.getParameter("ug");
       // String university=request.getParameter("board");
        String pg=request.getParameter("pg");
        String joining=request.getParameter("joining");
        String t_add=request.getParameter("t_add");
        String p_add=request.getParameter("p_add");
        String email=request.getParameter("eid");
        String tCode=request.getParameter("telCode");
        String tNo=request.getParameter("telNo");
        //String mobile=request.getParameter("mobile");
        String work_days="";
        String  work_slot="";
        String qual=ug+"  "+pg;
        //get workdays
        for(i=0;i<daycount;i++)
            {
             if(i<(daycount-1))
                work_days=work_days+request.getParameter("day"+i)+",";
            else
                work_days=work_days+request.getParameter("day"+i);
            }
        if(work_days.startsWith("null"))
               work_days=work_days.replaceAll("null,","");

        work_days=work_days.replaceAll(",null","");

            //get workslots
         for(i=0;i<slotcount;i++)
            {
              if(i<(slotcount-1))
                work_slot=work_slot+request.getParameter("slot"+i)+",";
              else
                work_slot=work_slot+request.getParameter("slot"+i);
            }

         if(work_slot.startsWith("null"))
               work_slot=work_slot.replaceAll("null,","");

         work_slot=work_slot.replaceAll(",null","");
            
            
    try{
      Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      con = DriverManager.getConnection("jdbc:odbc:mydsn");
     st=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,
                                ResultSet.CONCUR_UPDATABLE);
     sql="insert into staffentry(eName,specialist,eDOB,sex,work_slot_num,qual,tadd,padd,joining,eEmail,telcode,telno,orgID,work_slots,salary,fees,work_days,empID) " +
             "values('"+name+"','"+special+"','"+dob+"','"+sex+"',"+no_slot+",'"+qual+"','"+t_add+"','"+p_add+"','"+joining+"','"+email+"','"+tCode+"','"+tNo+"',"+orgID+",'"+work_slot+"',"+salary+","+fees+",'"+work_days+"','"+empid+"')";
     int has=st.executeUpdate(sql);
      if(has==0)
          {
%>
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
<div style="width: 400px;margin: 0 auto;padding: 30px 0;">
<div id="search" class="boxed">
			<h2 id="detail">Database Error</h2>
			<div class="content">

                <form id="searchform" method="post" action="regStaffDetail.jsp">
					<fieldset>
                         <p>There is some problem in accessing the database<br>
                             make sure you have filled all the entries correctly.</p><br><br>
                    </fieldset><br>
                       <center>
                        <input type="submit" value="  OK   " />
                        </center>

				</form>
			</div>
		</div>
</div>

</body>
</html>
<%
         }
      else
          response.sendRedirect("repeatStaffEntry.jsp");
          }
     catch (SQLException e) {
        out.println("ANIMA ANIMA " + e);
     }
      catch (Exception e) {
      out.println("Error occurred " + e);
     }

 %>
