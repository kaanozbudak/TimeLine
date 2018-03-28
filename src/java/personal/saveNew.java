package personal;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import data.UserIO;

public class saveNew extends HttpServlet 
{
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        String message="Some fields are empty please fill.";
        String url="";
        String userName=request.getParameter("userName");
        String password=request.getParameter("password");
        User user = new User(userName,password);
        
        request.setAttribute("user", user);
        
        if(userName.equals("") || password.equals(""))
        {
            request.setAttribute("msg", message);
            url="/form.jsp";
            System.out.println("bombos");
        }
        else
        {
            UserIO usrWrite=new UserIO();
            ServletConfig scg = getServletConfig();
            
            String path= scg.getInitParameter("emailFileName");
               
            //ServletContext sc = getServletContext();
            //String path = sc.getRealPath("C:\\Users\\Dragon\\Documents\\NetBeansProjects\\TimeLine\\build\\web\\data.txt");     
      
            usrWrite.write(user,path);
            url="/reply.jsp";
            System.out.println("dolu");
        }
        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
        rd.forward(request, response);
    }
    
}

