package com.brief.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.JspFactory;
import javax.servlet.jsp.PageContext;
import com.brief.po.Brief;
import com.brief.dao.BriefDao;

public class BriefServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	static String DEFAUT_PAGE = "/brief/brief.jsp";

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String op = request.getParameter("op");

		Brief brief = new Brief();
		BriefDao bdao = new BriefDao();

		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();

		if (op != null && op.equals("Allbrief")) {

			List<Brief> list = bdao.findall();
			DEFAUT_PAGE = "/brief/Allbrief.jsp";
			request.setAttribute("list", list);
			out.print(list.toString());

		} else if (op != null && op.equals("Allbrief2")) {
			List<Brief> list = bdao.findall();
			DEFAUT_PAGE = "/brief/Allbrief2.jsp";
			request.setAttribute("list", list);
			out.print(list.toString());

		} else if (op != null && op.equals("viewbrief")) {

			int id = Integer.parseInt(request.getParameter("Bid"));
			brief = bdao.findById(id);
			DEFAUT_PAGE = "/brief/brief.jsp";
			request.setAttribute("brief", brief);

		} else if (op != null && op.equals("update")) {

			Integer id = null;
			id = Integer.parseInt(request.getParameter("id"));
			String name = request.getParameter("name");
			String target = request.getParameter("target");
			String call = request.getParameter("call");
			String age = request.getParameter("age");
			String email = request.getParameter("email");
			String zzmm = request.getParameter("zzmm");
			String QQ = request.getParameter("QQ");
			String height = request.getParameter("height");
			String education = request.getParameter("education");
			String experience = request.getParameter("experience");
			String skills = request.getParameter("skills");
			String self = request.getParameter("self");

			request.setAttribute("brief", brief);
			brief = new Brief(id, name, target, call, age, email, zzmm, QQ, height, education, experience, skills,
					self);

			if (id != null) {
				if (bdao.update(brief) == 1) {
					DEFAUT_PAGE = "/brief/Allbrief.jsp";
					request.setAttribute("msg", "保存成功！");
				} else {
					DEFAUT_PAGE = "/brief/brief2.jsp";
					request.setAttribute("msg", "保存失败！请重试！！");
				}
			}
		}

		System.out.print(DEFAUT_PAGE.toString());
		getServletContext().getRequestDispatcher(DEFAUT_PAGE).forward(request, response);
	}
}
