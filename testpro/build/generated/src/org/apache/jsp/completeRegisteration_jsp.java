package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class completeRegisteration_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <SCRIPT LANGUAGE=\"JavaScript\">\n");
      out.write("<!--\n");
      out.write("function validateCreateAccount()\n");
      out.write("{\n");
      out.write("\n");
      out.write("\t\t\tif (document.mainForm.oname.value == \"\")\n");
      out.write("\t\t\t\t{\n");
      out.write("\t\t\t\t\talert(\"Please enter name of organisation in capital letters.\");\n");
      out.write("\t\t\t\t\tdocument.mainForm.oname.focus();\n");
      out.write("\t\t\t\t\treturn false;\n");
      out.write("\t\t\t\t}\t\t\t\n");
      out.write("\t\t\tif (document.mainForm.regnum.value == \"\")\n");
      out.write("\t\t\t\t{\n");
      out.write("\t\t\t\t\talert(\"Please enter registeration number.\");\n");
      out.write("\t\t\t\t\tdocument.mainForm.regnum.focus();\n");
      out.write("\t\t\t\t\treturn false;\n");
      out.write("\t\t\t\t}\n");
      out.write("\t\t\tif (document.mainForm.loc.value == \"\")\n");
      out.write("\t\t\t\t{\n");
      out.write("\t\t\t\t\talert(\"Please enter location of your organisation.\");\n");
      out.write("\t\t\t\t\tdocument.mainForm.loc.focus();\n");
      out.write("\t\t\t\t\treturn false;\n");
      out.write("\t\t\t\t}\n");
      out.write("\t\t\tif (document.mainForm.name_certify.value == \"\")\n");
      out.write("\t\t\t\t{\n");
      out.write("\t\t\t\t\talert(\"Please enter certifying authority.\");\n");
      out.write("\t\t\t\t\tdocument.mainForm.name_certify.focus();\n");
      out.write("\t\t\t\t\treturn false;\n");
      out.write("\t\t\t\t}\n");
      out.write("\n");
      out.write("\t\t\tif (document.mainForm.staff_capacity.value == \"\")\n");
      out.write("\t\t\t\t{\n");
      out.write("\t\t\t\t\talert(\"Please enter staff capacity.\");\n");
      out.write("\t\t\t\t\tdocument.mainForm.staff_capacity.focus();\n");
      out.write("\t\t\t\t\treturn false;\n");
      out.write("\t\t\t\t}\n");
      out.write("\t\t\tif (document.mainForm.numofslot.value == \"\")\n");
      out.write("\t\t\t\t{\n");
      out.write("\t\t\t\t\talert(\"Please enter number of slots.\");\n");
      out.write("\t\t\t\t\tdocument.mainForm.numofslot.focus();\n");
      out.write("\t\t\t\t\treturn false;\n");
      out.write("\t\t\t\t}\n");
      out.write("\n");
      out.write("\t\t\tif (document.mainForm.workslot.value ==\"\")\n");
      out.write("\t\t\t\t{\n");
      out.write("\t\t\t\t\talert(\"Please enter workslots.\");\n");
      out.write("\t\t\t\t\tdocument.mainForm.workslot.focus();\n");
      out.write("\t\t\t\t\treturn false;\n");
      out.write("\t\t\t\t}\n");
      out.write("\t\t     if (document.mainForm.workdays.value ==\"\")\n");
      out.write("            \t{\n");
      out.write("\t\t\t\t\talert(\"Please enter workdays.\");\n");
      out.write("\t\t\t\t\tdocument.mainForm.workdays.focus();\n");
      out.write("\t\t\t\t\treturn false;\n");
      out.write("\t\t\t\t}\n");
      out.write("                if (document.mainForm.telcode.value ==\"\")\n");
      out.write("\t\t\t\t{\n");
      out.write("\t\t\t\t\talert(\"Please enter telephone code.\");\n");
      out.write("\t\t\t\t\tdocument.mainForm.telcode.focus();\n");
      out.write("\t\t\t\t\treturn false;\n");
      out.write("\t\t\t\t}\n");
      out.write("\t\t     if (document.mainForm.telnum.value ==\"\")\n");
      out.write("            \t{\n");
      out.write("\t\t\t\t\talert(\"Please enter telephone number.\");\n");
      out.write("\t\t\t\t\tdocument.mainForm.telnum.focus();\n");
      out.write("\t\t\t\t\treturn false;\n");
      out.write("\t\t\t\t}\n");
      out.write("\t\t\treturn true;\n");
      out.write("\t}\n");
      out.write("\t\n");
      out.write("\t-->\n");
      out.write("</SCRIPT>\n");
      out.write("\n");
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
      out.write("<div style=\"width: 600px;margin: 0 auto;padding: 30px 0;\">\n");
      out.write("<div id=\"search\" class=\"boxed\">\n");
      out.write("\t\t\t<h2 id=\"profile\">Registeration</h2>\n");
      out.write("\t\t\t<div class=\"content\">\n");
      out.write("<p><strong>Please fill the organisation details.</strong></p><br><br>\n");
      out.write("                <form id=\"searchform\" method=\"post\" action=\"./insertcompleteReg.jsp\" name=\"mainForm\">\n");
      out.write("\t\t\t\t\t<fieldset>\n");
      out.write("                     <table align=\"center\">\n");
      out.write("                 <tr><td>Name Of Organisation:</td><td><input id=\"searchinput\" type=\"text\" name=\"oname\"  />\n");
      out.write("                 <DIV id=\"settingText\">capital letters only.</DIV></td></tr>\n");
      out.write("              <tr><td>Registeration No.:</td><td><input id=\"searchinput\" type=\"text\" name=\"regnum\" size=\"22\" /></td></tr>\n");
      out.write("              <tr>\n");
      out.write("                     <td>Catagory:</td><td>\n");
      out.write("                     <SELECT name=\"catagory\" id=\"searchselect\">\n");
      out.write("                         <OPTION>Hospital</OPTION>\n");
      out.write("                         <OPTION>Law Consultants</OPTION>\n");
      out.write("                         <OPTION>Fitness Center</OPTION>\n");
      out.write("                     </SELECT>\n");
      out.write("                     </td>\n");
      out.write("                   </tr>\n");
      out.write("                   <tr><td>Location:</td><td><textarea name=\"loc\" rows=\"4\" cols=\"24\"></textarea></td></tr>\n");
      out.write("              <tr><td>National Certified:</td>\n");
      out.write("              <td>\n");
      out.write("                <select name=\"certify\" style=\"width: 215px;\tmargin-bottom: 5px;\">\n");
      out.write("                    <option>yes</option>\n");
      out.write("                    <option>no</option>\n");
      out.write("                </select>\n");
      out.write("              </td></tr>\n");
      out.write("            <tr><td>Certifying Authority:</td><td><input id=\"searchinput\" type=\"text\" name=\"name_certify\"/></td></tr>\n");
      out.write("            <tr><td>Staff Capacity:</td><td><input id=\"searchinput\" type=\"text\" name=\"staff_capacity\"/></td></tr>\n");
      out.write("            <tr><td>No. Of Working Slots:</td><td><input id=\"searchinput\" type=\"TEXT\" name=\"numofslot\"/></td></tr>\n");
      out.write("            <tr><td>Working Slots:</td><td><textarea name=\"workslot\" rows=\"2\" cols=\"24\"></textarea><DIV id=\"settingText\">e.g.(10:30-12:30,13:25-15:45).</DIV></td></tr>\n");
      out.write("            <tr><td>Working Days:</td><td><input id=\"searchinput\" type=\"TEXT\" name=\"workdays\"/><DIV id=\"settingText\">e.g.(fri,sat,sun).</DIV></td></tr>\n");
      out.write("            <tr><td>Telephone:</td><td><input style=\"width: 60px;margin-bottom: 5px;\" type=\"TEXT\" name=\"telcode\"/>\n");
      out.write("            <input style=\"width: 140px;margin-bottom: 5px;\" type=\"TEXT\" name=\"telnum\"/><DIV id=\"settingText\">code and number.</DIV></td></tr>\n");
      out.write("\n");
      out.write("              </table><br><hr>\n");
      out.write("                </fieldset><br>\n");
      out.write("                       <center>\n");
      out.write("               <table>\n");
      out.write("               <tr>\n");
      out.write("                   <td>\n");
      out.write("                       <form action=\"./insertcompleteReg.jsp\" method=\"post\">\n");
      out.write("                           <input type=\"submit\" value=\"  NEXT  \" name=\"but1\" />\n");
      out.write("                       </form>\n");
      out.write("                   </td>\n");
      out.write("                   <td>\n");
      out.write("                       <form action=\"index.jsp\" method=\"post\">\n");
      out.write("                           <input type=\"submit\" value=\"  EXIT  \" name=\"but2\" />\n");
      out.write("                       </form>\n");
      out.write("                   </td>\n");
      out.write("               </tr>\n");
      out.write("               </table>\n");
      out.write("              </center> \n");
      out.write("\t\t\t\t</form>\n");
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
