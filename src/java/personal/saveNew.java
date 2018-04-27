package personal;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class saveNew extends HttpServlet 
{
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        String url="";
        String firstName=request.getParameter("firstName");
        String lastName=request.getParameter("lastName");
        String email=request.getParameter("email");
        String password=request.getParameter("password");
       
        System.out.println(firstName+" "+lastName+" "+email+" "+password);

        User user = new User(firstName,lastName,email,password);
        
        request.setAttribute("user", user);
        
        if(email.equals("") || password.equals("") || firstName.equals("") || lastName.equals(""))
        {
            url="/newRegister.jsp";
        }
        else
        {   
            DB data = new DB();
            data.registerUser(user);
            url="/reply.jsp";
        }
        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
        rd.forward(request, response);
    }
}

