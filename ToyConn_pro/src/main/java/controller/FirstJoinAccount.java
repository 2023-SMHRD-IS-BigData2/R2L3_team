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

@WebServlet("/FirstJoinAccount")
public class FirstJoinAccount extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("FirstJoinAccount");
		
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String nickname = request.getParameter("nickname");
		String address = request.getParameter("address");
		String tel = request.getParameter("tel");
		
		AccountList list = new AccountList(id, nickname, address, tel);
		
		int row = new AccountListDAO().firstJoinAccount(list);
		
		if (row == 1) {
			System.out.println("가입 완료");
			HttpSession session = request.getSession();
			session.setAttribute("userInfo", list);
		} else {
			System.out.println("가입 실패");
		}
		
		response.sendRedirect("Main.jsp");
	}

}
