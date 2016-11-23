package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class adminEnableStatus_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

Connection con=null;
        Statement st=null;
        ResultSet rs=null;
         String email,workSlot,organisation,workDays,msg="",sql="",tel="",loc="",catagory="",pwd="",reg="",status="";
         int numslots=0,capacity=0,orgID=0,telcode=0,telno=0;
        
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
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\n");
      out.write("<!--\n");
      out.write("\n");
      out.write("Design by Free CSS Templates\n");
      out.write("http://www.freecsstemplates.org\n");
      out.write("Released for free under a Creative Commons Attribution 2.5 License\n");
      out.write("\n");
      out.write("Title      : Center Stage\n");
      out.write("Version    : 1.0\n");
      out.write("Released   : 20070710\n");
      out.write("Description: A two-column, fixed-width template suitable for small business websites.\n");
      out.write("\n");
      out.write("-->\n");
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
      out.write("\t\t<h2><a href=\"\">Manage your appointments</a></h2>\n");
      out.write("\t</div>\n");
      out.write("\t<div id=\"menu\">\n");
      out.write("\t\t<ul>\n");
      out.write("\t\t\t<li class=\"active\"><a href=\"index.jsp\">Home</a></li>\n");
      out.write("\t\t\t<li><a href=\"#\">About</a></li>\n");
      out.write("\t\t\t<li><a href=\"#\">Events</a></li>\t\t\t\n");
      out.write("\t\t\t<li><a href=\"#\">Forums</a></li>\n");
      out.write("\t\t\t<li><a href=\"#\">Contact</a></li>\n");
      out.write("\t\t</ul>\n");
      out.write("\t</div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("        ");

        
        try{
      Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      con = DriverManager.getConnection("jdbc:odbc:mydsn");
      st=con.createStatement();

      rs=st.executeQuery("select * from org ");
      
      out.write("\n");
      out.write("\n");
      out.write("      <div style=\"width: 1250px;margin: 0 auto;padding: 30px 0;\">\n");
      out.write("      <div id=\"search\" class=\"boxed\">\n");
      out.write("\t\t\t<h2 style=\"width: 1240px;height: 35px;padding: 5px 0 0 5px;background:#A4C0C8;border-top: 5px solid #5F919E;font-size: 136%;color: #144B6B;\">Organisation List</h2>\n");
      out.write("            <div class=\"content\">\n");
      out.write("\t\t\t\t\t<fieldset>                       \n");
      out.write("                        <br>\n");
      out.write("            <table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" align=\"center\">\n");
      out.write("              <tr bgcolor=\"\">\n");
      out.write("              <th>ORGANISATION ID</th>\n");
      out.write("              <th>ORGANISATION NAME</th>\n");
      out.write("              <th>PASSWORD</th>\n");
      out.write("              <th>NO OF WORK SLOTS</th>\n");
      out.write("              <th>WORKING DAYS</th>\n");
      out.write("              <th>WORKING SLOTS</th>\n");
      out.write("              <th>STATUS</th>\n");
      out.write("              <th>REGISTERATION NO</th>\n");
      out.write("              <th>CATAGORY</th>\n");
      out.write("              <th>EMAIL</th>\n");
      out.write("              <th>STAFF CAPACITY</th>\n");
      out.write("              <th>LOCATION</th>\n");
      out.write("              <th>CONTACT</th>              \n");
      out.write("              </tr>\n");
      out.write("\n");
      out.write("      ");

      while(rs.next())
          {
      
      email=rs.getString("oEmail");
      numslots=rs.getInt("no_of_slot");
      workSlot=rs.getString("work_slots");
      workDays=rs.getString("work_days");
      organisation=rs.getString("orgName");
      capacity=rs.getInt("staffCap");
      orgID=rs.getInt("orgID");
      loc=rs.getString("loc");
      catagory=rs.getString("catagory");
      reg=rs.getString("regNo");
      pwd=rs.getString("orgPwd");
      status=rs.getString("status");
      telcode=rs.getInt("telcode");
      telno=rs.getInt("telno");
//#A4C0C8
      
      out.write("\n");
      out.write("\n");
      out.write("<tr bgcolor=\"#a4coe4\">\n");
      out.write("    <form  action=\"adminenabled.jsp\" method=\"post\" style=\"\">\n");
      out.write("    <td>");
      out.print(orgID);
      out.write("</td>\n");
      out.write("\n");
      out.write("    <td>");
      out.print(organisation);
      out.write("</td>\n");
      out.write("\n");
      out.write("    <td>");
      out.print(pwd);
      out.write("</td>\n");
      out.write("\n");
      out.write("    <td>");
      out.print(numslots);
      out.write("</td>\n");
      out.write("\n");
      out.write("    <td>");
      out.print(workDays);
      out.write("</td>\n");
      out.write("\n");
      out.write("    <td>");
      out.print(workSlot);
      out.write("</td>\n");
      out.write("    <td>");
      out.print(status);
      out.write("</td>\n");
      out.write("    <td>");
      out.print(reg);
      out.write("</td>\n");
      out.write("    <td>");
      out.print(catagory);
      out.write("</td>\n");
      out.write("    <td>");
      out.print(capacity);
      out.write("</td>\n");
      out.write("    <td>");
      out.print(loc);
      out.write("</td>\n");
      out.write("    <td>");
      out.print(telcode);
      out.write('-');
      out.print(telno);
      out.write("</td>\n");
      out.write("\n");
      out.write("    <td><input type=\"hidden\" name=\"orgID\" value=\"");
      out.print(orgID);
      out.write("\">\n");
      out.write("        <input type=\"submit\" value=\"Enable Status\" name=\"submit\" />\n");
      out.write("    \n");
      out.write("     </td>\n");
      out.write("    </form>\n");
      out.write("</tr>\n");
      out.write("\n");
      out.write("  ");

       }

       }
     catch (SQLException e) {
        out.println("ANIMA ANIMA " + e);
     }
      catch (Exception e) {
      out.println("Error occurred " + e);
     }

      
      out.write("\n");
      out.write("\n");
      out.write("  </table>\n");
      out.write("   <form method=\"post\" action=\"index.jsp\">\n");
      out.write("  <center>\n");
      out.write("      <br><br>\n");
      out.write("      <input type=\"submit\" value=\" EXIT \"/>\n");
      out.write("  </center>\n");
      out.write("  </form>\n");
      out.write("\t\t\t\t\t</fieldset>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("</div>\n");
      out.write("</body>\n");
      out.write("</html>\n");
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
