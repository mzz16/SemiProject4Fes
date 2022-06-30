package com.yj.main;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/BoardInputHC_jp")
public class BoardInputHC_jp extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		request.setAttribute("contentPage", "YJ_Board/inputBoard_jp.jsp");
		request.getRequestDispatcher("index_jp.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 게시글 작성하기(입력)
		YJBoardDAO.getYjdao().regBoard(request);
		//전체목록 보여주기
		YJBoardDAO.getYjdao().getAllBoard(request);
				
		YJBoardDAO.getYjdao().lastPage(request);
		YJBoardDAO.getYjdao().showPage(request);
		
		request.setAttribute("contentPage", "YJ_Board/viewBoard_jp.jsp");
		request.getRequestDispatcher("index_jp.jsp").forward(request, response);
	}

}
