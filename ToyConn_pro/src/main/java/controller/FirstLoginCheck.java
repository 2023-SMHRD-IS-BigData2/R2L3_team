package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MemberInfo;
import model.MemberInfoDAO;

@WebServlet("/FirstLoginCheck")
public class FirstLoginCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("FirstLoginCheck");

		request.setCharacterEncoding("UTF-8");

		String user_id = request.getParameter("user_id");
		String nick = request.getParameter("nick");

		System.out.println(user_id);
		System.out.println(nick);

		MemberInfo memberInfo = new MemberInfo(user_id, nick);

		MemberInfo row = new MemberInfoDAO().firstJoinCheck(memberInfo);

		if (row != null) {
			System.out.println("In");

			HttpSession session = request.getSession();
			session.setAttribute("memberInfo", memberInfo);

			response.sendRedirect("Main.jsp");

		} else {
			System.out.println("Not in");

			HttpSession session = request.getSession();
			session.setAttribute("user_id", user_id);
			session.setAttribute("nick", nick);

			response.sendRedirect("JoinAccount.jsp");
		}

	}

}
