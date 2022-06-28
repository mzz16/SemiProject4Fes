package com.yj.main;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/BoardUpdateC_jp")
public class BoardUpdateC_jp extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//수정할 게시글의 정보를불러오는 일		
		YJBoardDAO.getYjdao().getOneBoardForUpdate(request);
		//게시글수정페이지로이동		
		YJBoardDAO.getYjdao().getAllBoard(request);
		request.setAttribute("contentPage", "YJ_Board/updateBoard_jp.jsp");
		request.getRequestDispatcher("index_jp.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//게시글 수정하기
			YJBoardDAO.getYjdao().updateBoard(request);
		//수정한 게시글 불러오기.
			
			
			YJBoardDAO.getYjdao().getAllBoard(request);
			YJBoardDAO.getYjdao().lastPage(request);
			YJBoardDAO.getYjdao().showPage(request);
			request.setAttribute("contentPage", "YJ_Board/viewBoard_jp.jsp");
			request.getRequestDispatcher("index_jp.jsp").forward(request, response);
	}

}
