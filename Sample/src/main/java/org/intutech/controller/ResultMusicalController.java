package org.intutech.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.intutech.model.SearchModel;

import org.intutech.bean.Source;

@WebServlet("/result-musical")
public class ResultMusicalController extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String search = request.getParameter("search");
		SearchModel model = new SearchModel();
		
		List<Source> details = model.getAll(search);
		if(details.isEmpty()) {
			response.sendRedirect("searchmusical.jsp");
		}else {
		
		request.setAttribute("search", search);
		request.setAttribute("instrumentdetails", details);
		RequestDispatcher dis = request.getRequestDispatcher("showmusical.jsp");
		dis.forward(request, response);
		}
	}

}
