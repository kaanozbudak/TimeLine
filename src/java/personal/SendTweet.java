    package personal;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SendTweet extends HttpServlet
{
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {       
            request.setCharacterEncoding("UTF-8");
            response.setContentType("text/html; charset=utf-8");
            String tweet = request.getParameter("tweet");
            System.out.println("check:"+tweet);
            HttpSession session = request.getSession(true);
            String email =(String)session.getAttribute("email");
            String url="/welcome.jsp";
            System.out.println(tweet);
            DB data = new DB();
            data.insertTweet(email, tweet);
            
            RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
            rd.forward(request, response);       
    }
}
