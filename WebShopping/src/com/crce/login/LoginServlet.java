package com.crce.login;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet.do")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
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
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		login ob = new login();
		ob.setUsername(userName);
		ob.setPassword(password);
		System.out.println(ob);
		LoginDao dao = new LoginDao();
		boolean val = dao.checkLoginByUsername(userName, password);
		if (val == true) {
			String role=dao.checkRole(userName);
			System.out.println(role);
			if(role.equalsIgnoreCase("Customer")){
				System.out.println(role);
				request.setAttribute("login", ob);
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("homePage.jsp");
				requestDispatcher.forward(request, response);
			}
			else if(role.equalsIgnoreCase("Client")) {
				System.out.println(role);
			request.setAttribute("login", ob);
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("clienthp.jsp");
			requestDispatcher.forward(request, response);
			}
			else if(role.equalsIgnoreCase("Admin")) {
				System.out.println(role);
				request.setAttribute("login", ob);
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("adminhp.jsp");
				requestDispatcher.forward(request, response);
				}
			else {
				response.sendRedirect("login.jsp");
			}
			
		} else {

			response.sendRedirect("login.jsp");
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
//		String username=request.getParameter("userName");
//		String password=request.getParameter("password");
//		
//		RequestDispatcher dispatcher=request.getRequestDispatcher("/success.jsp");
//		dispatcher.forward(request, response);	

	}

}
