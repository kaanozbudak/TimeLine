package personal;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import data.UserIO;
import javax.servlet.RequestDispatcher;

public class Login extends HttpServlet 
{   
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {       
              ServletConfig scg = getServletConfig();
            
              String path= scg.getInitParameter("emailFileName");
              
              UserIO userRead = new UserIO();
              
              String userName=request.getParameter("userName");
              String password=request.getParameter("password");
            
              String url="";
              
              
              if(userRead.reader(path,userName,password)==true)
              {
                  url="/welcome.jsp";
              }
              else
              {
                  url="/wrong.jsp";
              }
              
              RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
              rd.forward(request, response);       
    }
}
