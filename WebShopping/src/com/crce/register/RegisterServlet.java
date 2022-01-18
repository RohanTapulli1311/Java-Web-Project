package com.crce.register;

import java.io.IOException;

//import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.crce.jdbc.DBUtil;
import com.mysql.jdbc.*;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet.do")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RegisterServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());

		String fName = request.getParameter("fName");
		String lName = request.getParameter("lName");
		String Email = request.getParameter("Email");
		long contact = Long.parseLong(request.getParameter("contact"));
		String gender = request.getParameter("gender");
		String userName = request.getParameter("userName");
		String cpwrd = request.getParameter("cPassword");
		String password = request.getParameter("sPassword");
		String role=request.getParameter("role");
		Register ob = new Register();
		ob.setFname(fName);
		ob.setLname(lName);
		ob.setEmail(Email);
		ob.setContact(contact);
		ob.setGender(gender);
		ob.setUsername(userName);
		ob.setPassword(password);
		if (cpwrd.equals(password)) {
			ob.setPassword(password);
			ob.setRole(role);
			
			System.out.println(ob);
			RegisterDao db = new RegisterDao();
			db.addClient(ob);
			
				request.setAttribute("register", ob);
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("login.jsp");
				requestDispatcher.forward(request, response);
				
			
		} else {
			response.sendRedirect("register.jsp");
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);

	}

}
