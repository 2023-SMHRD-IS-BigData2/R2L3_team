package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Product;
import model.ProductDAO;

@WebServlet("/ProductService")
public class ProductService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String category = request.getParameter("category");
		String p_quality = request.getParameter("p_quality");
		String gender = request.getParameter("gender");
		String image_file = request.getParameter("image_file");
		String p_name = request.getParameter("p_name");
		String p_content = request.getParameter("p_content");
		
		String rent_price = request.getParameter("rent_price");
		System.out.println("[ProductService]");
		System.out.println("Product name: " + p_name);
		System.out.println("Product description: " + p_content);
		System.out.println("Rent price: " + rent_price);

		Product vo = new Product(p_name, rent_price, p_content, image_file);

		int cnt = new ProductDAO().registerProduct(vo);
		System.out.println("cnt : " + cnt);
		if (cnt > 0) {
			System.out.println("Register produt successfully");
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			out.println("<html><body>");
			out.println("<h2>상품등록성공</h2>");
			out.println("<p>상품명: " + p_name + "</p>");
			out.println("<p>대여료: " + rent_price + "</p>");
			out.println("<p>상품표현: " + p_content + "</p>");
			out.println("</body></html>");

		} else {
			System.out.println("Register product fail");

		}
		
	}

}
