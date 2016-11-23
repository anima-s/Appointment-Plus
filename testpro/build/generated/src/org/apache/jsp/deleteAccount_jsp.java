package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class deleteAccount_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\n");
      out.write("   \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("\n");
      out.write("  <!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\n");
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
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("<title>Appointment+.com</title>\n");
      out.write("<meta name=\"keywords\" content=\"\" />\n");
      out.write("<meta name=\"description\" content=\"\" />\n");
      out.write("<link href=\"default.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<SCRIPT LANGUAGE=\"JavaScript\">\n");
      out.write("<!--\n");
      out.write("function validateCreateAccount()\n");
      out.write("{\n");
      out.write("                if (document.delAcc.deluserID.value == \"\")\n");
      out.write("\t\t\t\t{\n");
      out.write("\t\t\t\t\talert(\"Please enter a username.\");\n");
      out.write("\t\t\t\t\tdocument.delAcc.deluserID.focus();\n");
      out.write("\t\t\t\t\treturn false;\n");
      out.write("\t\t\t\t}\n");
      out.write("                 if (document.delAcc.delpwd1.value == \"\")\n");
      out.write("\t\t\t\t{\n");
      out.write("\t\t\t\t\talert(\"Please enter a password.\");\n");
      out.write("\t\t\t\t\tdocument.delAcc.delpwd1.focus();\n");
      out.write("\t\t\t\t\treturn false;\n");
      out.write("\t\t\t\t}\n");
      out.write("                 if (document.delAcc.delpwd2.value == \"\")\n");
      out.write("\t\t\t\t{\n");
      out.write("\t\t\t\t\talert(\"Please retype the password.\");\n");
      out.write("\t\t\t\t\tdocument.delAcc.delpwd2.focus();\n");
      out.write("\t\t\t\t\treturn false;\n");
      out.write("\t\t\t\t}\n");
      out.write("                if (document.delAcc.delpwd1.value != document.delAcc.delpwd2.value)\n");
      out.write("\t\t\t\t{\n");
      out.write("\t\t\t\t\talert(\"The passwords you have entered do not match.  Please re-enter the passwords.\");\n");
      out.write("\t\t\t\t\treturn false;\n");
      out.write("\t\t\t\t}\n");
      out.write("               \n");
      out.write("\n");
      out.write("\t\t\treturn true;\n");
      out.write("\t}\n");
      out.write("\t\n");
      out.write("\n");
      out.write("\t-->\n");
      out.write("</SCRIPT>\n");
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
      out.write("<div style=\"width: 400px;margin: 0 auto;padding: 30px 0;\">\n");
      out.write("<div id=\"search\" class=\"boxed\">\n");
      out.write("\t\t\t<h2 id=\"detail\">Delete Account</h2>\n");
      out.write("\t\t\t<div class=\"content\">\n");
      out.write("                 <p>This will permanently delete your account.</p>\n");
      out.write("\t\t\t\t\t<fieldset>\n");
      out.write("                         <form id=\"searchform\" name=\"delAcc\" method=\"post\" action=\"./servletdeleteAcc.jsp\" >\n");
      out.write("                        <table>\n");
      out.write("                        <tr><td>UserID</td><td><input id=\"emailaddress\" type=\"text\" name=\"deluserID\" style=\"width: 210px;margin-bottom: 5px;\" /></td></tr>\n");
      out.write("                    <tr><td>Password</td><td><input id=\"searchinput\" type=\"text\" name=\"delpwd1\" value=\"\" /></td></tr>\n");
      out.write("                    <tr><td>Retype Password</td><td><input id=\"searchinput\" type=\"text\" name=\"delpwd2\" value=\"\" /></td></tr>\n");
      out.write("                       </table>\n");
      out.write("<table align=\"center\">\n");
      out.write("    <tr><td><form action=\"servletdeleteAcc.jsp\"><input  type=\"submit\" value=\"Delete\" /></form></td>\n");
      out.write("    <td><form action=\"index.jsp\"><input  type=\"submit\" value=\"Cancel\" /></form></td></tr>\n");
      out.write("</table>            \n");
      out.write("                           \t\t</form>\n");
      out.write("               \n");
      out.write("    \n");
      out.write(" </fieldset>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>");
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
