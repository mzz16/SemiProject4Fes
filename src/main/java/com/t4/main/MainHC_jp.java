package com.t4.main;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yj.main.YJBoardDAO;

@WebServlet("/MainHC_jp")
public class MainHC_jp extends HttpServlet {
	
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		YJBoardDAO.getYjdao().showMainPage(request);
		
		YJBoardDAO.getYjdao().showMainFreeBoardPage(request);
		YJBoardDAO.getYjdao().showMainReviewBoardPage(request);
		
		request.setAttribute("contentPage", "home_jp.jsp");
		request.getRequestDispatcher("index_jp.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}