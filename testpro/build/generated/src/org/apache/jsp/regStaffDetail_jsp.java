package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class regStaffDetail_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


        Connection con=null;
        Statement st=null;
        ResultSet rs=null;
        String slot="",str1="",day="",tempID="";
        int orgID,i=0,j,k,l,counting;
        char ch=',';
        String slots[],days[];
        
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
      out.write("<SCRIPT LANGUAGE=\"JavaScript\">\n");
      out.write("<!--\n");
      out.write("function validateCreateAccount()\n");
      out.write("{\n");
      out.write("\n");
      out.write("\t\t\tif (document.mainForm.fname.value == \"\")\n");
      out.write("\t\t\t\t{\n");
      out.write("\t\t\t\t\talert(\"Please enter employee's first name.\");\n");
      out.write("\t\t\t\t\tdocument.mainForm.fname.focus();\n");
      out.write("\t\t\t\t\treturn false;\n");
      out.write("\t\t\t\t}            \n");
      out.write("             if (document.mainForm.empID.value == \"\")\n");
      out.write("\t\t\t\t{\n");
      out.write("\t\t\t\t\talert(\"Please enter employee ID.\");\n");
      out.write("\t\t\t\t\tdocument.mainForm.empID.focus();\n");
      out.write("\t\t\t\t\treturn false;\n");
      out.write("\t\t\t\t}\t\n");
      out.write("\t\t\tif (document.mainForm.salary.value == \"\")\n");
      out.write("\t\t\t\t{\n");
      out.write("\t\t\t\t\talert(\"Please enter employee's salary.\");\n");
      out.write("\t\t\t\t\tdocument.mainForm.salary.focus();\n");
      out.write("\t\t\t\t\treturn false;\n");
      out.write("\t\t\t\t}\n");
      out.write("\t\t\tif (document.mainForm.fees.value ==\"\")\n");
      out.write("\t\t\t\t{\n");
      out.write("\t\t\t\t\talert(\"Please enter employee's fees per appointment.\");\n");
      out.write("\t\t\t\t\tdocument.mainForm.fees.focus();\n");
      out.write("\t\t\t\t\treturn false;\n");
      out.write("\t\t\t\t}            \n");
      out.write("             if (document.mainForm.year.value == \"\")\n");
      out.write("\t\t\t\t{\n");
      out.write("\t\t\t\t\talert(\"Please enter employee's date of birth.\");\n");
      out.write("\t\t\t\t\tdocument.mainForm.year.focus();\n");
      out.write("\t\t\t\t\treturn false;\n");
      out.write("\t\t\t\t}\n");
      out.write("                if (document.mainForm.slot.value ==\"\")\n");
      out.write("\t\t\t\t{\n");
      out.write("\t\t\t\t\talert(\"Please enter employee's working slots.\");\n");
      out.write("\t\t\t\t\tdocument.mainForm.slot.focus();\n");
      out.write("\t\t\t\t\treturn false;\n");
      out.write("\t\t\t\t}\n");
      out.write("              if (document.mainForm.joining.value ==\"\")\n");
      out.write("\t\t\t\t{\n");
      out.write("\t\t\t\t\talert(\"Please enter employee's date of joining.\");\n");
      out.write("\t\t\t\t\tdocument.mainForm.joining.focus();\n");
      out.write("\t\t\t\t\treturn false;\n");
      out.write("\t\t\t\t}\n");
      out.write("              if (document.mainForm.telCode.value ==\"\")\n");
      out.write("\t\t\t\t{\n");
      out.write("\t\t\t\t\talert(\"Please enter employee's telephone code.\");\n");
      out.write("\t\t\t\t\tdocument.mainForm.telCode.focus();\n");
      out.write("\t\t\t\t\treturn false;\n");
      out.write("\t\t\t\t}\n");
      out.write("              if (document.mainForm.telNo.value ==\"\")\n");
      out.write("\t\t\t\t{\n");
      out.write("\t\t\t\t\talert(\"Please enter employee's telephone number.\");\n");
      out.write("\t\t\t\t\tdocument.mainForm.telNo.focus();\n");
      out.write("\t\t\t\t\treturn false;\n");
      out.write("\t\t\t\t}\n");
      out.write("             if (document.mainForm.eid.value ==\"\")\n");
      out.write("\t\t\t\t{\n");
      out.write("\t\t\t\t\talert(\"Please enter employee's email address.\");\n");
      out.write("\t\t\t\t\tdocument.mainForm.eid.focus();\n");
      out.write("\t\t\t\t\treturn false;\n");
      out.write("\t\t\t\t}\n");
      out.write("\t\t     if (document.mainForm.eid.value !=\"\")\n");
      out.write("            \t{\n");
      out.write("\t\t\t\t\tcheckEmail();\n");
      out.write("\t\t\t\t}\n");
      out.write("\t\t\treturn true;\n");
      out.write("\t}\n");
      out.write("\tfunction checkEmail()\n");
      out.write("\t{\n");
      out.write("\t\tvar email=document.getElementById(\"emailaddress\");\n");
      out.write("\t\tvar filter = /^([a-zA-Z0-9_\\.\\-])+\\@(([a-zA-Z0-9\\-])+\\.)+([a-zA-Z0-9]{2,4})+$/;\n");
      out.write("\t\tif (!filter.test(email.value))\n");
      out.write("\t\t\t{\n");
      out.write("\t\t\t\t alert(\"Please provide a valid email address\");\n");
      out.write("\t\t\t\temail.focus;\n");
      out.write("\t\t\t\treturn false;\n");
      out.write("\t\t\t}\n");
      out.write("\t}\n");
      out.write("\t-->\n");
      out.write("</SCRIPT>\n");
      out.write(" ");
      out.write("\n");
      out.write("       <div id=\"header\">\n");
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
      out.write("<div style=\"width: 1000px;margin: 0 auto;padding: 30px 0;\">\n");
      out.write("<div id=\"search\" class=\"boxed\">\n");
      out.write("\t\t\t<h2 id=\"staffdetail\">Employee Registeration</h2>\n");
      out.write("\t\t\t<div class=\"content\">\n");
      out.write("\n");
      out.write("                <form id=\"searchform\" method=\"post\" name=\"mainform\" action=\"insertRegStaffDetail.jsp\">\n");
      out.write("\t\t\t\t\t<fieldset>\n");
      out.write("                         <table align=\"center\">              \n");
      out.write("            <tr><td>Full Name:</td><td><input type=\"text\" id=\"searchinput\" name=\"name\" value=\"\" />\n");
      out.write("            <DIV id=\"settingText\">in block letters.</DIV></td>\n");
      out.write("            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Employee ID:</td><td><input type=\"text\" id=\"searchinput\" name=\"empID\" value=\"\" /></td></tr>\n");
      out.write("             <tr>\n");
      out.write("                 <td>Specialisation:</td>\n");
      out.write("                      <td><select name=\"special\" id=\"searchselect\">\n");
      out.write("                          <option>eye specialist</option>\n");
      out.write("                          <option>ear specialist</option>\n");
      out.write("                          <option>heart surgeon</option>\n");
      out.write("                      </select>\n");
      out.write("                      </td>\n");
      out.write("                     <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;No. Of Working Slots:</td><td><input id=\"searchinput\" type=\"text\" name=\"slot\"></td>\n");
      out.write("                  </tr>\n");
      out.write("                  <tr>\n");
      out.write("                  <td>Salary:</td><td><input type=\"text\" id=\"searchinput\" name=\"salary\"/>\n");
      out.write("                  </td>\n");
      out.write("                  <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("                  Fees Per Appointment:</td><td><input type=\"text\" id=\"searchinput\" name=\"fees\"/><DIV id=\"settingText\">optional</DIV></td>\n");
      out.write("                  </tr>\n");
      out.write("             <tr>\n");
      out.write("            <td>Date Of Birth:</td>\n");
      out.write("            <td>           \n");
      out.write("              <input type=\"text\" id=\"searchinput\" name=\"dob\"/>\n");
      out.write("              <DIV id=\"settingText\">e.x. 15/03/1988.</DIV>\n");
      out.write("            </td>\n");
      out.write("            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sex:</td>\n");
      out.write("            <td><select name=\"sex\" id=\"searchselect\">\n");
      out.write("                <option>m</option>\n");
      out.write("                <option>f</option>\n");
      out.write("            </select></td>\n");
      out.write("            </tr>              \n");
      out.write("              <tr>\n");
      out.write("            <td>Graduation:</td><td><input type=\"text\" id=\"searchinput\" name=\"ug\" value=\"\" /></td>\n");
      out.write("            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;University:</td><td><input type=\"text\" id=\"searchinput\" name=\"board\" value=\"\" /></td>\n");
      out.write("            </tr>\n");
      out.write("            <tr><td>Other Qualifications:</td>\n");
      out.write("            <td><input type=\"text\" id=\"searchinput\" name=\"pg\" value=\"\" /><DIV id=\"settingText\">(post graduation/certification).</DIV></td></tr>\n");
      out.write("            <tr><td>Date Of Joining:</td>\n");
      out.write("            <td><input type=\"text\" id=\"searchinput\" name=\"joining\" value=\"\" />\n");
      out.write("            <DIV id=\"settingText\">e.g. 12/04/2000.</DIV></td></tr>\n");
      out.write("            <tr><td>Temporary Address:</td><td><textarea name=\"t_add\" rows=\"4\" cols=\"24\"></textarea></td>\n");
      out.write("            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Permanent Address:</td><td><textarea name=\"p_add\" rows=\"4\" cols=\"24\"></textarea></td></tr>\n");
      out.write("            <tr><td>Email ID:</td><td><input id=\"emailaddress\" type=\"text\" name=\"eid\" style=\"width: 210px;margin-bottom: 5px;\" value=\"\" /></td></tr>\n");
      out.write("            <tr>\n");
      out.write("            <td>Contact:</td><td><input type=\"text\" name=\"telCode\" size=\"8\"/>&nbsp;&nbsp;<input type=\"text\"  name=\"telNo\" size=\"15\"/>\n");
      out.write("            <DIV id=\"settingText\">code and number.</DIV>\n");
      out.write("            </td>\n");
      out.write("            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mobile:</td><td><input type=\"text\" id=\"searchinput\" name=\"mobile\"/>\n");
      out.write("           </td></tr>\n");
      out.write("              </table>\n");
      out.write("             <br>\n");
      out.write("                 <hr>\n");
      out.write("                     <div align=\"center\">\n");
      out.write("                <h5>Select the working days </h5>\n");
      out.write("        ");

        tempID=session.getAttribute("ID").toString();
        orgID=Integer.parseInt(tempID);
         try{
      Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      con = DriverManager.getConnection("jdbc:odbc:mydsn");
     st=con.createStatement();
     rs=st.executeQuery("select work_slots,work_days from org where orgID="+orgID+" ");
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
            
      out.write("\n");
      out.write("            ");
      out.print(days[i]);
      out.write("<input type=\"checkbox\" name=\"day");
      out.print(i);
      out.write("\" value=");
      out.print(days[i]);
      out.write(" />&nbsp&nbsp\n");
      out.write("            ");

            }
 
      out.write("\n");
      out.write(" <br>\n");
      out.write("\n");
      out.write("<h5>Select the working slots</h5>\n");

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
            
      out.write("\n");
      out.write("            ");
      out.print(slots[i]);
      out.write("<input type=\"checkbox\" name=\"slot");
      out.print(i);
      out.write("\" value=");
      out.print(slots[i]);
      out.write(" />&nbsp&nbsp\n");
      out.write("            ");

            }
 
      out.write("\n");
      out.write("\n");
      out.write("          <br>\n");
      out.write("  </div>\n");
      out.write("  <br><br>\n");
      out.write("      <input type=\"hidden\" name=\"slotcount\" value=\"");
      out.print(slots.length);
      out.write("\"/>\n");
      out.write("      <input type=\"hidden\" name=\"daycount\" value=\"");
      out.print(days.length);
      out.write("\"/>\n");
      out.write("              <center>\n");
      out.write("              <input type=\"submit\" value=\"    NEXT    \" name=\"submit\"  size=\"5\" />\n");
      out.write("              <input type=\"reset\" value=\"CANCEL\" name=\"cancel\" size=\"5\"/>\n");
      out.write("              </center>\n");
      out.write("                    </fieldset><br>\n");
      out.write("                      </form> \n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("</div>\n");
      out.write(" ");

     }
     catch (SQLException e) {
        out.println("Exception: " + e);
     }
      catch (Exception e) {
      out.println("Error occurred " + e);
     }
          
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
