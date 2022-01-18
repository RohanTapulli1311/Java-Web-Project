package com.crce.product;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.crce.category.Category;
import com.crce.register.RegisterDao;

/**
 * Servlet implementation class ProductServlet
 */
@MultipartConfig
@WebServlet("/ProductServlet.do")
public class ProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String pname = request.getParameter("pname");
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		int MRP= Integer.parseInt(request.getParameter("MRP"));
		String description = request.getParameter("description");
		String category=request.getParameter("category");
		//String imgpath = request.getParameter("imgpath");
		//System.out.println(imgpath);
		Part part=request.getPart("imgpath");
		int discount = Integer.parseInt(request.getParameter("discount"));
		String path="C:\\Users\\rohan\\eclipse-workspace\\WebShopping\\WebContent\\images"+File.separator+"products"+File.separator+part.getSubmittedFileName();
		
		System.out.println(path);
		try {
			FileOutputStream fos=new FileOutputStream(path);
			InputStream is=part.getInputStream();
			byte[] data=new byte[is.available()];
			is.read(data);
			fos.write(data);
			fos.close();
			}
			catch(Exception e) {
				e.printStackTrace();
			}
		Product ob=new Product();
		ob.setPname(pname);
		ob.setQuantity(quantity);
		ob.setMRP(MRP);
		ob.setDescription(description);
		ob.setImgpath(part.getSubmittedFileName());
		Category cc=new Category(category);
		ob.setCategory(cc);
		ob.setDiscount(discount);
		//ob.setPassword(password);
		System.out.println(ob);
		ProductDao db = new ProductDao();
		
		db.addProduct(ob);
		
		request.setAttribute("product", ob);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("productadd.jsp");
		requestDispatcher.forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
