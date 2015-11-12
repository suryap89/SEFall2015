package com;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class HomeDelivery extends HttpServlet {
public void doPost(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
	response.setContentType("text/html");
	PrintWriter out = response.getWriter();
	String name=request.getParameter("t1").trim();
	String medicine=request.getParameter("t2").trim();
	try{
		String msg=DBCon.addHomeDelivery(name,medicine);
		if(msg.equals("success")){
			RequestDispatcher rd=request.getRequestDispatcher("HomeDelivery.jsp?t1=Medicine details added ");
			rd.forward(request, response);
		}else{
			response.sendRedirect("HomeDelivery.jsp?t1="+msg);
		}
	

	}catch(Exception e){
		e.printStackTrace();
	}
	}

}
