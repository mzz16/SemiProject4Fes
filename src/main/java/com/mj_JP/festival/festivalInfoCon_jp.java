package com.mj_JP.festival;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/festivalInfoCon_jp")
public class festivalInfoCon_jp extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		festivalDAO_JP.getFesdao().getFestivalInfo(request);
		request.setAttribute("contentPage", "mj_fesInfo_board/fesInfoBoard_jp.jsp");
		request.getRequestDispatcher("index_jp.jsp").forward(request, response);
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	
	}

}
