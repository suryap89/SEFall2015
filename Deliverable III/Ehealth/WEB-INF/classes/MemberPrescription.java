package com;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class MemberPrescription extends HttpServlet {
public void doPost(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
	response.setContentType("text/html");
	PrintWriter out = response.getWriter();
	String name=request.getParameter("t1").trim();
	String symptoms=request.getParameter("t2").trim();
	String doctor=request.getParameter("t3").trim();
	try{
		String input[]={name,symptoms,doctor};
		String msg=DBCon.RegisterPrescription(input);
		if(msg.equals("success")){
			RequestDispatcher rd=request.getRequestDispatcher("MemberPrescription.jsp?t1=Symptoms details sent to "+doctor);
			rd.forward(request, response);
		}else{
			response.sendRedirect("MemberPrescription.jsp?t1="+msg);
		}
	

	}catch(Exception e){
		e.printStackTrace();
	}
	}

}
