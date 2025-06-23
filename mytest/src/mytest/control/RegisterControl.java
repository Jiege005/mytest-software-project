package mytest.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mytest.model.User;
import mytest.services.IUserService;
import mytest.services.IUserServiceImpl;
import mytest.util.MD5;

// 标识当前servlet控制器的请求名称
@WebServlet("/register")
public class RegisterControl extends HttpServlet{
	
	private IUserService iuserService = new IUserServiceImpl();
	
	/*
	 * 接收前端对应的请求：
	 *  get请求：doGet() http://localhost:8080/mytest/register?username=zhangsan&password=111111&sex=1&sid=1 参数明文传递
	 *  post请求：doPost() http://localhost:8080/mytest/register  参数打包传递
	 */
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req,resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 * 步骤：
		 * ① 接收客户端的请求参数
		 * ② 把参数交给service，让service完成注册功能，返回注册结果
		 *       2.1 把请求参数让dao去注册到数据库中
		 *       2.2 接收dao的注册结果，然后做业务判断
		 *             2.2.1  >0   true
		 *                    <=0  false
		 * ③ 拿到service的返回结果，然后再响应前端
		 *     3.1 true 跳转到首页
		 *     3.2 false 跳转到注册页面，重新注册
		 */
		// ?username=zhangsan&password=111111
		request.setCharacterEncoding("UTF-8");
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		System.out.println(username+","+email+","+password);
		
		// 对密码进行加密
		password = MD5.computeDigest(password.getBytes());
		
		User user = new User(0,username,email,password);
		
		boolean result = iuserService.register(user);
		
		/*
		 * 请求转发：保留原有url，可以传递数据
		 *    重定向：会重新发起一个新的url，不可以传递数据
		 */
		if(result) {
			request.setAttribute("info", "注册成功");
			response.sendRedirect("login.jsp");
		}else {
			request.setAttribute("info", "注册失败，用户名或邮箱已存在");
			request.getRequestDispatcher("register.jsp").forward(request, response);
		}
	}

}
