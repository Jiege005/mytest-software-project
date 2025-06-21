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

@WebServlet("/login")
public class LoginControl extends HttpServlet{

	private IUserService iuserService = new IUserServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req,resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 /*
		  * 1、获取登录信息
		  * 2、问service看当前用户名和密码是否能登录
		  *    2.1 true:success  --> 跳转到首页
		  *        false:failure  --> 跳转到登录页面
		  */
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		boolean result = iuserService.login(username, MD5.computeDigest(password.getBytes()));
		if(result) {
			// 把用户名存入session对象中
			request.getSession().setAttribute("username", username);
			response.sendRedirect("Main.jsp");
		}else {
			request.setAttribute("info", "用户名或密码错误!");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	}
	
}
