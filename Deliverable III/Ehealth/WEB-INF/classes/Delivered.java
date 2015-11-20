package com;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Delivered extends HttpServlet {
public void doGet(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
	response.setContentType("text/html");
	PrintWriter out = response.getWriter();
	String name=request.getParameter("t1").trim();
	try{
		String msg=DBCon.updateHomeDelivery(name);
		if(msg.equals("success")){
			RequestDispatcher rd=request.getRequestDispatcher("ViewHomeDelivery.jsp?t1=Medicine delivery completed");
			rd.forward(request, response);
		}else{
			response.sendRedirect("ViewHomeDelivery.jsp?t1="+msg);
		}
	

	}catch(Exception e){
		e.printStackTrace();
	}
	}

}
