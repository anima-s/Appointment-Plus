package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class contacts_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\t\t<center>\n");
      out.write("            <p><strong><em>WELCOME TO APPOINTMENT+.COM</em></strong></p>\n");
      out.write("        </center>\n");
      out.write("\t</div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("      <div  id=\"page\">\n");
      out.write("      <div id=\"content\" class=\"boxed\">\n");
      out.write("\t\t\t<h2 style=\"width:415px;height: 35px;padding: 5px 0 0 5px;background:#A4C0C8;border-top: 5px solid #5F919E;font-size: 136%;color: #144B6B;\">Contact List</h2>\n");
      out.write("            <div class=\"content\">\n");
      out.write("\t\t\t\t\t<fieldset>\n");
      out.write("                        <br>\n");
      out.write("            <table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" align=\"center\">\n");
      out.write("              <tr bgcolor=\"#A4C0C8\">\n");
      out.write("                  <th>DESIGNATION</th>\n");
      out.write("                  <th>NAME</th>\n");
      out.write("                  <th>CONTACT</th>\n");
      out.write("              </tr>\n");
      out.write("              <tr>\n");
      out.write("                  <td>EYE SPECILIST(CM HOSPITAL)</td>\n");
      out.write("                  <td>MR. A.K NATH</td>\n");
      out.write("                  <td>0788-2222222</td>\n");
      out.write("              </tr>\n");
      out.write("              <tr>\n");
      out.write("                  <td>EAR SPECILIST(CM HOSPITAL)</td>\n");
      out.write("                  <td>MR. N. R. NAIDU</td>\n");
      out.write("                  <td>0778-2452331</td>\n");
      out.write("              </tr>\n");
      out.write("              <tr>\n");
      out.write("                  <td>DENTIST(OM SAI DENTAL CLINIC)</td>\n");
      out.write("                  <td>MR. K. D. SHARMA</td>\n");
      out.write("                  <td>0771-2607026</td>\n");
      out.write("              </tr>\n");
      out.write("              <tr>\n");
      out.write("                  <td>DERMATOLOGIST(CM HOSPITAL)</td>\n");
      out.write("                  <td>MRS. PRIYA PRASAD</td>\n");
      out.write("                  <td>9987092132</td>\n");
      out.write("              </tr>\n");
      out.write("              <tr>\n");
      out.write("                  <td>PHYSICIAN(CM HOSPITAL)</td>\n");
      out.write("                  <td>MRS. MEGHA BOKADEY</td>\n");
      out.write("                  <td>0788-2324561</td>\n");
      out.write("              </tr>\n");
      out.write("              <tr>\n");
      out.write("                  <td>CRIMINAL LAWYER</td>\n");
      out.write("                  <td>MR. K. D. SONI</td>\n");
      out.write("                  <td>0771-2990987</td>\n");
      out.write("              </tr>\n");
      out.write("              <tr>\n");
      out.write("                  <td>DIVORCE LAWYER</td>\n");
      out.write("                  <td>MR. AKASH TIWARI</td>\n");
      out.write("                  <td>9807111234</td>\n");
      out.write("              </tr>\n");
      out.write("              <tr>\n");
      out.write("                  <td>ADVOCATE(Financial claims)</td>\n");
      out.write("                  <td>MR. S.K DAS</td>\n");
      out.write("                  <td>0771-2324561</td>\n");
      out.write("              </tr>\n");
      out.write("    </table>\n");
      out.write("\t\t\t\t\t</fieldset>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("       <div id=\"sidebar\">\n");
      out.write("\n");
      out.write("\t\t<div id=\"news\" class=\"boxed\">\n");
      out.write("<div  height=\"500\" width=\"500\" border=\"0\">\n");
      out.write("    <img src=\"C:\\Documents and Settings\\a\\My Documents\\NetBeansProjects\\finalpro_1\\web\\images\\images[90].jpg\"  height=\"290\" width=\"290\" border=\"0\" alt=\"\">\n");
      out.write("</div>\n");
      out.write("\t\t</div>\n");
      out.write("\n");
      out.write("\t</div>\n");
      out.write("</div>\n");
      out.write("<div id=\"footer\">\n");
      out.write("\n");
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
