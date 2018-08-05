package com.lx.servlet;
//import java.io.IOException;

//import java.io.PrintWriter;
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//public class LoginServlet extends HttpServlet {
//    protected void service(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//    	 request.setCharacterEncoding("UTF-8");
//        String name = request.getParameter("name");
//        String password = request.getParameter("password");
//  
//        String html = null;
//  
//        if ("admin".equals(name) && "123".equals(password))
//      
//            html = "<div style='color:green'>µÇÂ¼³É¹¦</div>";
//        else
//      
//         html = "<div style='color:red'>µÇÂ¼Ê§°Ü</div>";
//       response.setContentType("text/html; charset=UTF-8");
//        PrintWriter pw = response.getWriter();
//       pw.println(html);
//  
//    }
//  
//}

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lx.fileutils.junit.FileSearchDemo;

public class SearchServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		//String name = request.getParameter("name");
		String name = request.getParameter("name_for_search");
		Map<String, String[]> parameterMap = request.getParameterMap();
		System.out.println("size = " + parameterMap.size());

		if (name != null && !name.trim().equals("")) {
			name = new String(name.getBytes("iso8859-1"), "UTF-8");// ½â¾öÂÒÂë

			System.out.println("success " + name);

			FileSearchDemo demo = new FileSearchDemo();
			demo.creatIndex();
			String result = demo.search(name);

			// request.getRequestDispatcher("success.html").forward(request, response);
			request.getSession().setAttribute("result", result);
			response.sendRedirect("listSearch");
			// response.sendRedirect("search.html");
		} else {
			System.out.println("fail??????mmm name = " + name);
			response.sendRedirect("fail.html");
			//response.sendRedirect("search_page.jsp");
		}
	}
}