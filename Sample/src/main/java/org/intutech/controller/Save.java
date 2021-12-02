package org.intutech.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.intutech.bean.Source;
import org.intutech.model.SearchModel;


/**
 * Servlet implementation class Save
 */
@WebServlet("/save")
public class Save extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id =0;
		String name = request.getParameter("name");
		String disc = request.getParameter("disc");
		String link = request.getParameter("link");
		String audio = name+".mp3";
		String img = name+".png";

		Source co = new Source();
		co.setId(id);
		co.setName(name);
		co.setImg(img);
		co.setSound(audio);
		co.setDisc(disc);
		co.setTag(link);
		
		SearchModel model = new SearchModel();
		boolean result = model.Save(co);
		if(result) {
			request.setAttribute("code", "110");
		}else {
			request.setAttribute("code", "120");
		}
		request.setAttribute("contact", co);
		RequestDispatcher dis = request.getRequestDispatcher("Save.jsp");
		dis.forward(request, response);

}

}
