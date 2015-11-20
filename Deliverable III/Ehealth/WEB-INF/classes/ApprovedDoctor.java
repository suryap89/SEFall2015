package com;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ApprovedDoctor extends HttpServlet {
public void doGet(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
	response.setContentType("text/html");
	PrintWriter out = response.getWriter();
	String name=request.getParameter("t1").trim();
	
	try{
		String msg=DBCon.approveDoctor(name);
		if(msg.equals("success")){
			RequestDispatcher rd=request.getRequestDispatcher("DoctorRequest.jsp?t1=Doctor details Approved");
			rd.forward(request, response);
		}else{
			response.sendRedirect("DoctorRequest.jsp?t1="+msg);
		}
	

	}catch(Exception e){
		e.printStackTrace();
	}
	}

}
