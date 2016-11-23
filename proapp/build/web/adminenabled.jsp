<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>


        <%!Connection con=null;
        Statement st=null;
        String tempID;
        int ID=0;
        %>

        <%
        tempID=request.getParameter("orgID");
        ID=Integer.parseInt(tempID);
        try{
      Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      con = DriverManager.getConnection("jdbc:odbc:mydsn");
      st=con.createStatement();
      st.execute("update org set status='enabled'where orgID="+ID+" ");

      response.sendRedirect("adminEnableStatus.jsp");
      }catch(Exception e){out.println(e);}
%>