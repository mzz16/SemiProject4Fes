package com.yj.main;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/BoardDeleteC_jp")
public class BoardDeleteC_jp extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//게시글 삭제하는 일
		YJBoardDAO.getYjdao().deleteBoard(request);
		//게시글 목록으로 돌아가기
		YJBoardDAO.getYjdao().getAllBoard(request);
		
		YJBoardDAO.getYjdao().lastPage(request);
		YJBoardDAO.getYjdao().showPage(request);
		
		request.setAttribute("contentPage", "YJ_Board/viewBoard_jp.jsp");
		request.getRequestDispatcher("index_jp.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}
