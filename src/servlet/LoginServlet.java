package servlet;

import domain.User;
import service.UserException;
import service.UserService;
import util.CommonUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LoginServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");

		/*
		 * 获取表单数据，将用户名在数据库中查找 
		 * 1.成功，比较得到的密码和表单中的密码是否一样，一样则成功，不一样则返回密码错误信息
		 * 2.失败，返回用户名错误的信息
		 */
		try {
			User form = CommonUtils.toBean(request.getParameterMap(), User.class);
			System.out.println("user = " + form.getUsername() + " psw = " + form.getPassword());
			UserService userService = new UserService();
			User user = userService.login(form);
			request.getSession().setAttribute("sessionUser", user);
			response.sendRedirect(request.getContextPath() + "/welcome.jsp");
		} catch (UserException e) {
			//request.setAttribute("user", form);
			//request.setAttribute("msg", e.getMessage());
			request.getRequestDispatcher("/login.jsp").forward(request, response);
		}
	}

}
