package personal;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;

public class Login1 extends HttpServlet 
{   
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {       
              String email=request.getParameter("email");
              String password=request.getParameter("password");
              User user = new User(email,password);
              String url = "";
              DB data = new DB();
              if(data.checkUser(user))
              {
                HttpSession session = request.getSession(true);
                session.setAttribute("email", email);
                
                url="/welcome.jsp";
              }
              else
              {
                System.out.println("Wrong password or email !");
                url="/newRegister.jsp";
              }
             
              RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
              rd.forward(request, response);       
    }
}
