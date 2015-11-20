
package com;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AddEvent extends HttpServlet {
public void doPost(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
	response.setContentType("text/html");
	PrintWriter out = response.getWriter();
	String event=request.getParameter("t1").trim();
	String date = request.getParameter("t2").trim();
	try{
		String msg=DBCon.addEvent(event,date);
		if(msg.equals("success")){
			RequestDispatcher rd=request.getRequestDispatcher("AddEvent.jsp?t1=Event details added");
			rd.forward(request, response);
		}else
			response.sendRedirect("AddEvent.jsp?t1=Error in adding events");
	}catch(Exception e){
		e.printStackTrace();
	}
	}

}
