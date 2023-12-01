package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LogoutAccount")
public class LogoutAccount extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8"); // 로그아웃 컨트롤러
		
		String url = request.getParameter("url");
		System.out.println(url);
		
		HttpSession session = request.getSession();
		session.invalidate();
		response.sendRedirect("./main.jsp"); // 세션을 전부삭제후, main.jsp로 이동함
	}

}
