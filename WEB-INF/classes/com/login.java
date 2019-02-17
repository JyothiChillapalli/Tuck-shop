package com;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
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
		String user = request.getParameter("uname");
		String pass = request.getParameter("psw");
		Functionalities F = new Functionalities();
		int type = 2;
		try {
			type = F.CheckLogin(user, pass);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		switch(type)
		{
			case 0: System.out.println("Admin");request.setAttribute("name","Admin");
			RequestDispatcher r = request.getRequestDispatcher("/Admin.jsp");
			r.forward(request, response);
			break;
			case 1: System.out.println("User");
			request.setAttribute("name",user);
			RequestDispatcher rda = request.getRequestDispatcher("/products.jsp");
			rda.forward(request, response);
			break;
			case 2: System.out.println("Wrong Combination");
			RequestDispatcher rd = request.getRequestDispatcher("/Incorrect.jsp");
			rd.forward(request, response);break;
		}
	}

}
