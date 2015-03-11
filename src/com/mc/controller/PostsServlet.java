package com.mc.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PostsServlet
 */
@WebServlet("/PostsServlet")
public class PostsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PostsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String bg = request.getParameter("bg");
		String pc = request.getParameter("pc");
		String fc = request.getParameter("fc");
		
		Cookie c = new Cookie("bg",bg);
		request.getSession().setAttribute("bg", bg);
		c.setMaxAge(60*60*24);
		response.addCookie(c);
		
		c = new Cookie("pc",pc);
		request.getSession().setAttribute("pc", pc);
		c.setMaxAge(60*60*24);
		response.addCookie(c);
		
		c = new Cookie("fc",fc);
		request.getSession().setAttribute("fc", fc);
		c.setMaxAge(60*60*24);
		response.addCookie(c);
		
		request.getRequestDispatcher("index.jsp").forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
