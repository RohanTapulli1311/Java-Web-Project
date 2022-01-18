package com.crce.product;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CartServlet
 */
@WebServlet("/CartServlet.do")
public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CartServlet() {
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
		String pName = request.getParameter("pName");
		if (pName == null) {
			Cart ob = new Cart(userName, password);
			request.setAttribute("Cart", ob);
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("DisplayCart.jsp");
			requestDispatcher.forward(request, response);
		} else {
			cartDao obj = new cartDao();
			obj.addToCart(userName, password, pName);
			Cart ob = new Cart(userName, password);
			request.setAttribute("Cart", ob);
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("DisplayCart.jsp");
			requestDispatcher.forward(request, response);

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
