package com.lx.servlet;
import java.io.IOException;
import java.util.Date;
 
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class HelloServlet extends HttpServlet{
 
    public void doGet(HttpServletRequest request, HttpServletResponse response){
         
        try {
        	// ������Ƿ��� mysql��
           response.setContentType("text/html; charset=UTF-8");
           response.setDateHeader("Expires", 0);
           response.setHeader("Cache-Control", "no-cache");
           response.setHeader("pragma", "no-cache");
            response.getWriter().println("<h1>Hello Servlet!</h1>");
            response.getWriter().println("<h1>��һ��ʹ�� Servlet  lixing123213213123 !</h1>");
            response.getWriter().println(new Date().toLocaleString());
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
     
}




