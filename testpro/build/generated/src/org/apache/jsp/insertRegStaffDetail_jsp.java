package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class insertRegStaffDetail_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


        Connection con=null;
        Statement st=null;
        ResultSet rs=null;
        String sql="";
        int i,count=1,j,k,l,orgID;
        char ch=',';
        String slot="",tempID="";
        String slots[];
        
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  private org.apache.jasper.runtime.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.apache.jasper.runtime.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\n");
      out.write("   \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("   \n");
      out.write("  ");
      out.write("\n");
      out.write("\n");
      out.write("        ");

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

      out.write("\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("<title>Appointment+.com</title>\n");
      out.write("<meta name=\"keywords\" content=\"\" />\n");
      out.write("<meta name=\"description\" content=\"\" />\n");
      out.write("<link href=\"default.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<div id=\"header\">\n");
      out.write("\t<div id=\"logo\">\n");
      out.write("\t\t<h1><a href=\"#\">Appointment+.com</a></h1>\n");
      out.write("\t\t<h2><a href=\"\">Your Everyday Alarm Clock</a></h2>\n");
      out.write("\t</div>\n");
      out.write("\t<div id=\"menu\">\n");
      out.write("\t\t<ul>\n");
      out.write("\t\t\t<li class=\"active\"><a href=\"#\">Home</a></li>\n");
      out.write("\t\t\t<li><a href=\"#\">About</a></li>\n");
      out.write("\t\t\t<li><a href=\"#\">Events</a></li>\n");
      out.write("\t\t\t<li><a href=\"#\">Galleries</a></li>\n");
      out.write("\t\t\t<li><a href=\"#\">Forums</a></li>\n");
      out.write("\t\t\t<li><a href=\"#\">Contact</a></li>\n");
      out.write("\t\t</ul>\n");
      out.write("\t</div>\n");
      out.write("</div>\n");
      out.write("<div style=\"width: 400px;margin: 0 auto;padding: 30px 0;\">\n");
      out.write("<div id=\"search\" class=\"boxed\">\n");
      out.write("\t\t\t<h2 id=\"detail\">Database Error</h2>\n");
      out.write("\t\t\t<div class=\"content\">\n");
      out.write("\n");
      out.write("                <form id=\"searchform\" method=\"post\" action=\"regStaffDetail.jsp\">\n");
      out.write("\t\t\t\t\t<fieldset>\n");
      out.write("                         <p>There is some problem in accessing the database<br>\n");
      out.write("                             make sure you have filled all the entries correctly.</p><br><br>\n");
      out.write("                    </fieldset><br>\n");
      out.write("                       <center>\n");
      out.write("                        <input type=\"submit\" value=\"  OK   \" />\n");
      out.write("                        </center>\n");
      out.write("\n");
      out.write("\t\t\t\t</form>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");

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

 
      out.write('\n');
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
