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

@WebServlet("/FirstLoginCheck")
public class FirstLoginCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("FirstLoginCheck");
		
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String nickname = request.getParameter("nickname");
		
		System.out.println("아이디 : " + id + "\n닉네임 : " + nickname);
		
		AccountList list = new AccountList(id, nickname);
		
		AccountList row = new AccountListDAO().firstJoinCheck(list);
		
		if (row != null) {
			System.out.println("In");
			
			HttpSession session = request.getSession();
			session.setAttribute("userInfo", row);
			
			response.sendRedirect("Main.jsp");
			
		} else {
			System.out.println("Not in");
			
			HttpSession session = request.getSession();
			session.setAttribute("id", id);
			session.setAttribute("nickname", nickname);
			
			response.sendRedirect("JoinAccount.jsp");
		}
		
	}

}
