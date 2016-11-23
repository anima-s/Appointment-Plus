package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class reqdCustID_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

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
      out.write("\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("<title>Appointment+.com</title>\n");
      out.write("<meta name=\"keywords\" content=\"\" />\n");
      out.write("<meta name=\"description\" content=\"\" />\n");
      out.write("<link href=\"default.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write(" <link rev=\"made\" href=\"mailto:contact@rainforestnet.com\">\n");
      out.write("  <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("  <meta name=\"generator\" content=\"NoteTab Light 4.9\">\n");
      out.write("  <meta name=\"author\" content=\"TengYong Ng\">\n");
      out.write("  <meta name=\"description\" content=\"\">\n");
      out.write("  <meta name=\"keywords\" content=\"\">\n");
      out.write("\n");
      out.write("<script language=\"javascript\" type=\"text/javascript\" src=\"C:\\Documents and Settings\\XP\\Desktop\\cal.js\">\n");
      out.write("\n");
      out.write("//Date Time Picker script- by TengYong Ng of http://www.rainforestnet.com\n");
      out.write("//Script featured on JavaScript Kit (http://www.javascriptkit.com)\n");
      out.write("//For this script, visit http://www.javascriptkit.com\n");
      out.write("\n");
      out.write("</script>\n");
      out.write("</head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        ");
 String  slot=request.getParameter("selectslot");
        session.setAttribute("slot", slot); 
      out.write("\n");
      out.write("        <div id=\"header\">\n");
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
      out.write("<div style=\"width: 600px;margin: 0 auto;padding: 30px 0;\">\n");
      out.write("<div id=\"search\" class=\"boxed\">\n");
      out.write("\t\t\t<h2 id=\"profile\">\n");
      out.write("            User Profile</h2>\n");
      out.write("\t\t\t<div class=\"content\">\n");
      out.write("            <form name=\"Userprofile\" id=\"searchform\" action=\"servlet_orgappAvail.jsp\"  method=\"post\">\n");
      out.write("            <fieldset>\n");
      out.write("             <table align=\"center\">\n");
      out.write("              <tr>\n");
      out.write("            <td>Name:</td><td><input id=\"searchinput\" type=\"text\" name=\"username\" value=\"\" /></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("            <td>Sex:</td><td><select  name=\"usersex\" id=\"searchselect\">\n");
      out.write("                <option>M</option>\n");
      out.write("                <option>F</option>\n");
      out.write("            </select></td>\n");
      out.write("            </tr>\n");
      out.write("             <tr>\n");
      out.write("            <td>Date Of Birth:</td>\n");
      out.write("            <td>\n");
      out.write("                <input type=\"Text\" name=\"userDOB\" id=\"demo1\" maxlength=\"25\" size=\"25\"><a href=\"javascript:NewCal('demo1','ddmmyyyy',true,24)\"><img src=\"images/cal.gif\" width=\"16\" height=\"16\" border=\"0\" alt=\"Pick a date\"></a>\n");
      out.write("            <span class=\"descriptions\">select date..</span>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("              \n");
      out.write("              \n");
      out.write("              <tr><td>Permanent Address:</td><td><input id=\"searchinput\" type=\"text\" name=\"userpadd\" value=\"\" /></td></tr>\n");
      out.write("              <tr><td>Contact:</td><td><input id=\"searchinput\" type=\"text\" name=\"usertel\"/></td></tr>\n");
      out.write("              \n");
      out.write("           </table>\n");
      out.write("           </fieldset>\n");
      out.write("             <br>\n");
      out.write("               <center>\n");
      out.write("              <input type=\"submit\" value=\"SUBMIT\" />\n");
      out.write("              <input type=\"reset\" value=\"CANCEL\" />\n");
      out.write("              </center>\n");
      out.write("             </form>\n");
      out.write("        </div>\n");
      out.write("\t\t</div>\n");
      out.write("</div>\n");
      out.write("    </body>\n");
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
