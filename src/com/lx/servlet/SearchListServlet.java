package com.lx.servlet;
 
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lx.fileutils.ReadTXT;
 
public class SearchListServlet extends HttpServlet {
 
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        String result = (String) request.getSession().getAttribute("result");
        if (null == result || result.equals("")) {
        	System.out.println("result is null");
            //response.sendRedirect("search.html");
        	response.sendRedirect("search_page.jsp");
            return;
        }
        System.out.println("result = " + result);
        request.setAttribute("result", result);
        
/*
        PrintWriter out = response.getWriter();
        System.out.println("12312312312312312");
        try {
        	String realPath = request.getSession().getServletContext().getRealPath("");
        	System.out.println("realPath = " + realPath);
        	String filePath = realPath + File.separator + "search_page.html";
            String content = ReadTXT.read(new File(filePath));
            out.println(content);
		} catch (Exception e) {
			// TODO: handle exception
			out.print("<html><head></head><body> html内容12312312312 </body>");
		}
*/

        //request.getRequestDispatcher("listSearch.jsp").forward(request, response);
        request.getRequestDispatcher("search_page.jsp").forward(request, response);
 
    }
}