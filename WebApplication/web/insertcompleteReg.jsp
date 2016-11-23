<%--
    Document   : staff_detail_valid
    Created on : Apr 23, 2008, 9:03:34 PM
    Author     : sandeep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
   <%@page import="java.sql.*" %>
   <html>
       <body>
  <%!
        Connection con=null;
        Statement st=null;
        ResultSet rs=null;
        String sql="",tempID="";
        int orgID=0;
        %>

        <%
        String oname=request.getParameter("oname");
        String regnum=request.getParameter("regnum");
        String loc=request.getParameter("loc");
        int staff=Integer.parseInt(request.getParameter("staff_capacity"));
        int numofslot=Integer.parseInt(request.getParameter("numofslot"));
        String workslot=request.getParameter("workslot");
        int telcode=Integer.parseInt(request.getParameter("telcode"));
        int telnum=Integer.parseInt(request.getParameter("telnum"));
        String workday=request.getParameter("workdays");
        String catagory=request.getParameter("catagory");
        orgID=Integer.parseInt(session.getAttribute("ID").toString());
    try{
      Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      con = DriverManager.getConnection("jdbc:odbc:mydsn");
     st=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,
                                ResultSet.CONCUR_UPDATABLE);
    
      sql ="update org set orgName='"+oname+"',regNo='"+regnum+"',loc='"+loc+"',staffCap="+staff+",no_of_slot="+numofslot+",work_slots='"+workslot+"',work_days='"+workday+"',telcode="+telcode+",telno="+telnum+",catagory='"+catagory+"',firstaccess='false' where orgID="+orgID+" ";
      int has = st.executeUpdate(sql);
      
     
           
if(session.getAttribute("updateOrgRecords").toString().equals("true"))

response.sendRedirect("updateStaffList.jsp");

else
     response.sendRedirect("regStaffDetail.jsp");
         }
     catch (SQLException e) {
       out.println("Exception: " + e);
     }
      catch (Exception e) {
      out.println("Error occurred " + e);
     }

 %>
       </body>
   </html>
