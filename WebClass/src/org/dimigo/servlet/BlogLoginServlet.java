package org.dimigo.servlet;

import java.io.IOException;
import java.io.PrintWriter;
//import java.util.HashMap;
//import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.dimigo.vo.UserVO;


@WebServlet(description = "login", urlPatterns = { "/bloglogin" })
public class BlogLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public BlogLoginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.setContentType("text/html;charset=utf-8");
		RequestDispatcher rd = request.getRequestDispatcher("myblog/login.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			request.setCharacterEncoding("UTF-8");
			response.setContentType("text/html;charset=UTF-8");
			String id_re = "test@naver.com";
			String id = request.getParameter("id");
			String pwd = request.getParameter("pwd");
			System.out.printf("id : %s, pwd : %s\n", id, pwd);

			//if(id != null || "".equals(id)) throw new Exception("E0001");
			//if(pwd == null || "".equals(pwd)) throw new Exception("E0002");

			//boolean isValid = true;
			if(id_re.equals(id)) {
				HttpSession session = request.getSession();
				UserVO user = new UserVO();
				user.setId(id);
				user.setName("오준호");
				user.setNickName("NeonDiana");
				session.setAttribute("user", user);

				RequestDispatcher rd = request.getRequestDispatcher("myblog/home.jsp");
				rd.forward(request, response);
			} else {
				throw new Exception("E0003");
			}
		} catch(Exception e) {
			request.setAttribute("msg", "error");
			RequestDispatcher rd = request.getRequestDispatcher("myblog/login.jsp");
			rd.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings("unchecked")
	protected void doPost2(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);

		request.setCharacterEncoding("utf-8");
		response.setContentType("application/json;charset=utf-8");

		PrintWriter out = response.getWriter();

		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		System.out.printf("id : %s, pwd : %s\n", id, pwd);

		out.println("{");
		out.println("\"id\":" + "\"" + id + "\"");
		out.println("}");
		out.close();

	}

}