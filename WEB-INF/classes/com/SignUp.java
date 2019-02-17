package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SignUp
 */
@WebServlet("/SignUp")
public class SignUp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUp() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String uname = request.getParameter("suname");
		String pass = request.getParameter("spsw");
		String name = request.getParameter("sname");
		String address = request.getParameter("saddress");
		String contact = request.getParameter("scontact");
		Functionalities f = new Functionalities();
		
		if(contact.length()!=10 && (contact.charAt(0)!='8' || contact.charAt(0)!='9' || contact.charAt(0)!='7'))
		{
			request.setAttribute("error","Enter Valid Mobile No");
			request.getRequestDispatcher("/signup1.jsp").forward(request, response);
		}
		else{

		try {
			int check = f.addUser(uname,pass,name, contact,address);
			if(check==1){
			request.setAttribute("name",uname);
			RequestDispatcher r = request.getRequestDispatcher("/products.jsp");
			r.forward(request, response);}
			else
			{
				request.setAttribute("error","Username already taken");
				request.getRequestDispatcher("/signup1.jsp").forward(request, response);
			}
		} catch (Exception e) {
			   
		}
		}
	}
}
