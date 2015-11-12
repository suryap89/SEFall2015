package com;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AddHospital extends HttpServlet {
public void doPost(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
	response.setContentType("text/html");
	PrintWriter out = response.getWriter();
	String name=request.getParameter("t1").trim();
	String speciality=request.getParameter("t2").trim();
	String contact=request.getParameter("t3").trim();
	String email=request.getParameter("t4").trim();
	String address=request.getParameter("t5").trim();
	String user=request.getParameter("t6").trim();
	String pass=request.getParameter("t7").trim();
	try{
		String input[]={name,speciality,contact,email,address,user,pass};
		String msg=DBCon.addHospital(input);
		if(msg.equals("success")){
			RequestDispatcher rd=request.getRequestDispatcher("Hospital.jsp?t1=Hospital details added "+user);
			rd.forward(request, response);
		}else{
			response.sendRedirect("Hospital.jsp?t1="+msg);
		}
	

	}catch(Exception e){
		e.printStackTrace();
	}
	}

}
