package com.yj.main;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/BoardInputHC")
public class BoardInputHC extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		request.setAttribute("contentPage", "YJ_Board/inputBoard.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 게시글 작성하기(입력)
		YJBoardDAO.regBoard(request);
		//전체목록 보여주기
		YJBoardDAO.getAllBoard(request);
				
		YJBoardDAO.lastPage(request);
		YJBoardDAO.showPage(request);
		
		request.setAttribute("contentPage", "YJ_Board/viewBoard.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

}
