<%--
    Document   : servletIndex
    Created on : Apr 28, 2008, 12:01:07 AM
    Author     : sandeep
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

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
		<h2><a href="">Manage your appointments</a></h2>
	</div>
	<div id="menu">
		<ul>
			<li class="active"><a href="index.jsp">Home</a></li>
			<li><a href="#">About</a></li>
			<li><a href="#">Events</a></li>
			<li><a href="#">Forums</a></li>
			<li><a href="#">Contact</a></li>
		</ul>
	</div>
</div>
<div style="width: 1000px;margin: 0 auto;padding: 30px 0;">
<div id="search" class="boxed">
			<h2 id="staffdetail">Employee Registeration</h2>
			<div class="content">
                <form id="searchform" method="post" name="mainform" action="insertRegStaffDetail.jsp">

 <%!
        Connection con=null;
        Statement st=null;
        ResultSet rs=null;
        String slot="",str1="",day="",tempID="",workdays="",workslots="";
        int ID,i=0,j,k,l,counting,slotcount,daycount,salary,fees,tCode,tNo,empID;
        char ch=',';
        String slots[],days[];
        String name,special,empid,dob,sex,no_slot,ug,pg,joining,t_add,p_add,email;
        %>
        <%
        ID=Integer.parseInt(session.getAttribute("ID").toString());
      if(session.getAttribute("updateOrgRecords").toString().equals("true"))
          {
      try{
      Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      con = DriverManager.getConnection("jdbc:odbc:mydsn");
      st=con.createStatement();

         empID=Integer.parseInt(request.getParameter("empID"));
      rs=st.executeQuery("select * from staffentry where orgID="+ID+" and empID="+empID+" ");
      while(rs.next())
          {        
         slotcount=rs.getInt("work_slot_num");
         name=rs.getString("eName");
         empid=rs.getString("empID");
         salary=rs.getInt("salary");
          fees=rs.getInt("fees");
          dob=rs.getString("eDOB");
          sex=rs.getString("sex");
          joining=rs.getString("joining");
          t_add=rs.getString("tadd");
          p_add=rs.getString("padd");
          email=rs.getString("eEmail");
          tCode=rs.getInt("telcode");
          tNo=rs.getInt("telno");        
      }
        %>
					<fieldset>
                         <table align="center">              
                         <tr><td>Full Name:</td><td><input type="text" id="searchinput" name="name" value=<jsp:expression>name</jsp:expression> />
            <DIV id="settingText">in block letters.</DIV></td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Employee ID:</td><td><input type="text" id="searchinput" name="empID" value="<jsp:expression>empid</jsp:expression>"/></td></tr>
             <tr>
                 <td>Specialisation:</td>
                      <td><select name="special" id="searchselect">
                          <option>eye specialist</option>
                          <option>ear specialist</option>
                          <option>heart surgeon</option>
                      </select>
                      </td>
                     <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;No. Of Working Slots:</td><td><input id="searchinput" type="text" name="slot" value=<jsp:expression>slotcount</jsp:expression>></td>
                  </tr>
                  <tr>
                  <td>Salary:</td><td><input type="text" id="searchinput" name="salary" value="<jsp:expression>salary</jsp:expression>"/>
                  </td>
                  <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  Fees Per Appointment:</td><td><input type="text" id="searchinput" name="fees" value="<jsp:expression>fees</jsp:expression>"/><DIV id="settingText">optional</DIV></td>
                  </tr>
             <tr>
            <td>Date Of Birth:</td>
            <td>           
              <input type="text" id="searchinput" name="dob" value="<jsp:expression>dob</jsp:expression>"/>
              <DIV id="settingText">e.x. 15/03/1988.</DIV>
            </td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sex:</td>
            <td><select name="sex" id="searchselect">
                <option>m</option>
                <option>f</option>
            </select></td>
            </tr>              
              <tr>
            <td>Graduation:</td><td><input type="text" id="searchinput" name="ug" value="" /></td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;University:</td><td><input type="text" id="searchinput" name="board" value=""/></td>
            </tr>
            <tr><td>Other Qualifications:</td>
            <td><input type="text" id="searchinput" name="pg" value=""/><DIV id="settingText">(post graduation/certification).</DIV></td></tr>
            <tr><td>Date Of Joining:</td>
            <td><input type="text" id="searchinput" name="joining" value="<jsp:expression>joining</jsp:expression>" />
            <DIV id="settingText">e.g. 12/04/2000.</DIV></td></tr>
            <tr><td>Temporary Address:</td><td><textarea name="t_add" rows="4" cols="24"><jsp:expression>t_add</jsp:expression></textarea></td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Permanent Address:</td><td><textarea name="p_add" rows="4" cols="24"><jsp:expression>p_add</jsp:expression></textarea></td></tr>
            <tr><td>Email ID:</td><td><input id="emailaddress" type="text" name="eid" style="width: 210px;margin-bottom: 5px;" value="<jsp:expression>email</jsp:expression>" /></td></tr>
            <tr>
            <td>Contact:</td><td><input type="text" name="telCode" size="8" value="<jsp:expression>tCode</jsp:expression>"/>&nbsp;&nbsp;<input type="text"  name="telNo" size="15" value="<jsp:expression>tNo</jsp:expression>"/>
            <DIV id="settingText">code and number.</DIV>
            </td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mobile:</td><td><input type="text" id="searchinput" name="mobile" value=""/>
           </td></tr>
              </table>
             <br>
                 <hr>
                     <div align="center">
                <h5>Select the working days </h5>
        <%
        
     rs=st.executeQuery("select work_slots,work_days from org where orgID="+ID+" ");
     while(rs.next())
         {         
         slot=rs.getString(1);
         day=rs.getString(2);
         }

      //for days
        str1=day.concat(",");
        day="";
        counting=0;
        i=0;
while(i<str1.length())
    {
    if(str1.charAt(i)==ch)
        {
        counting++;
        }
    i++;
    }
        days=new String[counting];
        for(i=0;i<counting;i++)
            days[i]="";
        
        k=0;j=0;
    while(k<str1.length())
    {
     if(str1.charAt(k)==ch)
        {
               days[j]=day;
               day="";
               j++;
        }
      else
       {
        day+=str1.charAt(k);
        }
     k++;
    }    
        for(i=0;i<days.length;i++)
            {           
            %>
            <jsp:expression>days[i]</jsp:expression><input type="checkbox" name="day<jsp:expression>i</jsp:expression>" value=<jsp:expression>days[i]</jsp:expression> />&nbsp&nbsp
            <%
            }
 %>
 <br>

<h5>Select the working slots</h5>
<%
// for slots
str1=slot+",";
slot="";
counting=0;
        i=0;
while(i<str1.length())
    {
    if(str1.charAt(i)==ch)
        {
        counting++;
        }
    i++;
    }
     slots=new String[counting];
      

        counting=0;
        i=0;
while(i<str1.length())
    {
    if(str1.charAt(i)==ch)
        {
        counting++;
        }
    i++;
    }
        slots=new String[counting];
        for(i=0;i<counting;i++)
            slots[i]="";

        k=0;j=0;
    while(k<str1.length())
    {
     if(str1.charAt(k)==ch)
        {
               slots[j]=slot;
               slot="";
               j++;
        }
      else
       {
        slot+=str1.charAt(k);
        }
     k++;
    }
         for(i=0;i<slots.length;i++)
            {
            %>
            <jsp:expression>slots[i]</jsp:expression><input type="checkbox" name="slot<jsp:expression>i</jsp:expression>" value=<jsp:expression>slots[i]</jsp:expression> />&nbsp&nbsp
            <%
            }
 %>

          <br>
  </div>
   <input type="hidden" name="empID" value="<jsp:expression>empid</jsp:expression>">
                    </fieldset>
 <%
}
      
     catch (SQLException e) {
        out.println("Exception: " + e);
      }
      catch (Exception e) {
      out.println("Error occurred " + e);
 }
}
else if(session.getAttribute("updateOrgRecords").toString().equals("false"))
{
ID=Integer.parseInt(session.getAttribute("ID").toString());
 try{
      Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      con = DriverManager.getConnection("jdbc:odbc:mydsn");
      st=con.createStatement();

%>
<fieldset>
                         <table align="center">
                         <tr><td>Full Name:</td><td><input type="text" id="searchinput" name="name" value="" />
            <DIV id="settingText">in block letters.</DIV></td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Employee ID:</td><td><input type="text" id="searchinput" name="empID" value=""/></td></tr>
             <tr>
                 <td>Specialisation:</td>
                      <td><select name="special" id="searchselect">
                          <option>eye specialist</option>
                          <option>ear specialist</option>
                          <option>heart surgeon</option>
                      </select>
                      </td>
                     <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;No. Of Working Slots:</td><td><input id="searchinput" type="text" name="slot" value=""></td>
                  </tr>
                  <tr>
                  <td>Salary:</td><td><input type="text" id="searchinput" name="salary" value=""/>
                  </td>
                  <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  Fees Per Appointment:</td><td><input type="text" id="searchinput" name="fees" value=""/><DIV id="settingText">optional</DIV></td>
                  </tr>
             <tr>
            <td>Date Of Birth:</td>
            <td>
              <input type="text" id="searchinput" name="dob"/>
              <DIV id="settingText">e.x. 15/03/1988.</DIV>
            </td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sex:</td>
            <td><select name="sex" id="searchselect">
                <option>m</option>
                <option>f</option>
            </select></td>
            </tr>
              <tr>
            <td>Graduation:</td><td><input type="text" id="searchinput" name="ug" value="" /></td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;University:</td><td><input type="text" id="searchinput" name="board" value=""/></td>
            </tr>
            <tr><td>Other Qualifications:</td>
            <td><input type="text" id="searchinput" name="pg" value=""/><DIV id="settingText">(post graduation/certification).</DIV></td></tr>
            <tr><td>Date Of Joining:</td>
            <td><input type="text" id="searchinput" name="joining" value="" />
            <DIV id="settingText">e.g. 12/04/2000.</DIV></td></tr>
            <tr><td>Temporary Address:</td><td><textarea name="t_add" rows="4" cols="24"></textarea></td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Permanent Address:</td><td><textarea name="p_add" rows="4" cols="24"></textarea></td></tr>
            <tr><td>Email ID:</td><td><input id="emailaddress" type="text" name="eid" style="width: 210px;margin-bottom: 5px;" value="" /></td></tr>
            <tr>
            <td>Contact:</td><td><input type="text" name="telCode" size="8" value=""/>&nbsp;&nbsp;<input type="text"  name="telNo" size="15" value=""/>
            <DIV id="settingText">code and number.</DIV>
            </td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mobile:</td><td><input type="text" id="searchinput" name="mobile" value=""/>
           </td></tr>
              </table>
             <br>
                 <hr>
                     <div align="center">
                <h5>Select the working days </h5>
        <%

     rs=st.executeQuery("select work_slots,work_days from org where orgID="+ID+" ");
     while(rs.next())
         {
         slot=rs.getString(1);
         day=rs.getString(2);
         }

      //for days
        str1=day.concat(",");
        day="";
        counting=0;
        i=0;
while(i<str1.length())
    {
    if(str1.charAt(i)==ch)
        {
        counting++;
        }
    i++;
    }
        days=new String[counting];
        for(i=0;i<counting;i++)
            days[i]="";

        k=0;j=0;
    while(k<str1.length())
    {
     if(str1.charAt(k)==ch)
        {
               days[j]=day;
               day="";
               j++;
        }
      else
       {
        day+=str1.charAt(k);
        }
     k++;
    }
        for(i=0;i<days.length;i++)
            {
            %>
            <jsp:expression>days[i]</jsp:expression><input type="checkbox" name="day<jsp:expression>i</jsp:expression>" value=<jsp:expression>days[i]</jsp:expression> />&nbsp&nbsp
            <%
            }
 %>
 <br>

<h5>Select the working slots</h5>
<%
// for slots
str1=slot+",";
slot="";
counting=0;
        i=0;
while(i<str1.length())
    {
    if(str1.charAt(i)==ch)
        {
        counting++;
        }
    i++;
    }
     slots=new String[counting];


        counting=0;
        i=0;
while(i<str1.length())
    {
    if(str1.charAt(i)==ch)
        {
        counting++;
        }
    i++;
    }
        slots=new String[counting];
        for(i=0;i<counting;i++)
            slots[i]="";

        k=0;j=0;
    while(k<str1.length())
    {
     if(str1.charAt(k)==ch)
        {
               slots[j]=slot;
               slot="";
               j++;
        }
      else
       {
        slot+=str1.charAt(k);
        }
     k++;
    }
         for(i=0;i<slots.length;i++)
            {
            %>
            <jsp:expression>slots[i]</jsp:expression><input type="checkbox" name="slot<jsp:expression>i</jsp:expression>" value=<jsp:expression>slots[i]</jsp:expression> />&nbsp&nbsp
            <%
            }
 %>

          <br>
  </div>  
                    </fieldset>
<%
}

     catch (SQLException e) {
        out.println("Exception: " + e);
      }
      catch (Exception e) {
      out.println("Error occurred " + e);
 }
}
%>

      <input type="hidden" name="slotcount" value="<jsp:expression>slots.length</jsp:expression>"/>
      <input type="hidden" name="daycount" value="<jsp:expression>days.length</jsp:expression>"/>
     
          <br>
              <center>
              <table>
                  <tr>
                    <td>
                       <form action="insertRegStaffDetail.jsp">
                           <input type="submit" value="  NEXT  " name="submit"  size="5" />
                       </form>
                    </td>
                    <td>
                           <input type="reset" value="CLEAR" name="cancel" size="5"/>
                    </td>
                    <td>
                        <form action="repeatStaffEntry.jsp">
                            <input type="submit" value=" EXIT  " name="submit"  size="5" />
                        </form>
                    </td>
                  </tr>

              </table>
               </center>
               </form>
<br>
 
			</div>
		</div>
</div>
</body>
</html>