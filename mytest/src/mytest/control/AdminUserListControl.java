package mytest.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mytest.model.User;
import mytest.services.IUserService;
import mytest.services.IUserServiceImpl;

@WebServlet("/adminuserlist")
public class AdminUserListControl extends HttpServlet{

	private IUserService iuserService = new IUserServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req,resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 /*
		  * 1、获取所有用户列表
		  * 2、跳转到用户管理页面
		  */
		String f = request.getParameter("f");
		List<User> list = iuserService.getUserList();
		request.setAttribute("list", list);
		request.setAttribute("f", f);
		System.out.println(f);
		request.getRequestDispatcher("WEB-INF/admin-users.jsp").forward(request, response);
	}
	
}
