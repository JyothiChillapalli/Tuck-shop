package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ClearItem
 */
@WebServlet("/ClearItem")
public class ClearItem extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ClearItem() {
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
		try{
			Connection C = new Connection();
		java.sql.Connection con = C.dbConnect();
		java.sql.PreparedStatement st = null;
		String sql = "Delete from cart where Objects='"+request.getParameter("remove")+"'";
		st = con.prepareStatement(sql);
		st.executeUpdate();
	}catch(Exception e) {System.out.println(e);}
	request.getRequestDispatcher("/Cart.jsp").forward(request, response);
}
}

