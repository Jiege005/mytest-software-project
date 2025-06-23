package mytest.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/admin/*")
public class AdminControl extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String path = request.getPathInfo();
        String contentPage = "admin-dashboard.jsp"; // default
        
        if (path != null) {
            switch (path) {
                case "/salary":
                    contentPage = "admin-salary.jsp";
                    break;
                case "/position":
                    contentPage = "admin-position.jsp";
                    break;
                // Add other cases for different modules
            }
        }
        
        request.setAttribute("contentPage", contentPage);
        request.getRequestDispatcher("admin-base.jsp").forward(request, response);
    }
}