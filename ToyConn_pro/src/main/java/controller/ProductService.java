package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Product;
import model.ProductDAO;

@WebServlet("/ProductService")
public class ProductService extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String category = request.getParameter("category");
		String p_quality = request.getParameter("p_quality");
		String gender = request.getParameter("gender");
		String image_file = request.getParameter("image_file");
		String p_name = request.getParameter("p_name");
		String p_content = request.getParameter("p_content");
		int rent_price = Integer.parseInt( request.getParameter("rent_price"));
		System.out.println("[ProductService]");
		System.out.println("Product name: " + p_name);
		System.out.println("Product description: " + p_content);
		System.out.println("Rent price: " + rent_price);

		Product vo = new Product(0, category, p_name, rent_price,p_quality,p_content,"대여가능","대여가능",gender, image_file);

		int cnt = new ProductDAO().registerProduct(vo);
		System.out.println("cnt : " + cnt);
		if (cnt > 0) {
			System.out.println("Register produt successfully");

			request.setAttribute("p_name", p_name);

		} else {
			System.out.println("Register product fail");

		}
		 response.sendRedirect("main.jsp");
		
	}

	

		
		
		
	}


