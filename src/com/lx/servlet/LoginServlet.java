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
//            html = "<div style='color:green'>��¼�ɹ�</div>";
//        else
//      
//         html = "<div style='color:red'>��¼ʧ��</div>";
//       response.setContentType("text/html; charset=UTF-8");
//        PrintWriter pw = response.getWriter();
//       pw.println(html);
//  
//    }
//  
//}

import java.io.IOException;
 
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
public class LoginServlet extends HttpServlet {
 
    private static final long serialVersionUID = 1L;
 
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 
        String name = request.getParameter("name");
        String password = request.getParameter("password");
 
        if ("123".equals(name) && "123".equals(password)) {
        	//System.out.println("success");
        	//request.getRequestDispatcher("success.html").forward(request, response);
        	//request.getSession().setAttribute("userName", name);
        	response.sendRedirect("search.html");
        }
        else{
        	//System.out.println("fail 111123");
          //response.sendRedirect("fail.html");
        	response.sendRedirect("login.html");
        	
        }
    }
 
}



