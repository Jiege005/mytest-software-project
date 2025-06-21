package mytest.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mytest.services.IUserService;
import mytest.services.IUserServiceImpl;
import mytest.util.MD5;

@WebServlet("/loginout")
public class LoginOutControl extends HttpServlet{

	private IUserService iuserService = new IUserServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req,resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 /*
		  * 1、直接把session中的username删除即可
		  * 2、跳转到首页
		  */
		request.getSession().removeAttribute("username");
		response.sendRedirect("Main.jsp");
	}
	
}
