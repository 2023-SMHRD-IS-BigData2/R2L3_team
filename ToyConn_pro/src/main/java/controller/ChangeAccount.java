package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.AccountList;
import model.AccountListDAO;

@WebServlet("/ChangeAccount")
public class ChangeAccount extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("ChangeAccount");
		
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String nickname = request.getParameter("nickname");
		String address = request.getParameter("address");
		String tel = request.getParameter("tel");
		
		AccountList list = new AccountList(id, nickname, address, tel);
		
		int row = new AccountListDAO().changeAccount(list);
		
		if (row == 1) {
			System.out.println("update success");
			HttpSession session = request.getSession();
			session.setAttribute("userInfo", list);
		} else {
			System.out.println("update error");
		}
		
		response.sendRedirect("Main.jsp");
	}

}
