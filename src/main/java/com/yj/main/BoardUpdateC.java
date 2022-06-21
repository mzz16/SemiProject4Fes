package com.yj.main;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/BoardUpdateC")
public class BoardUpdateC extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//수정할 게시글의 정보를불러오는 일		
		YJBoardDAO.getOneBoard(request);
		//게시글수정페이지로이동		
		YJBoardDAO.getAllBoard(request);
		request.setAttribute("contentPage", "YJ_Board/updateBoard.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//게시글 수정하기
			YJBoardDAO.updateBoard(request);
		//수정한 게시글 불러오기.
			YJBoardDAO.getAllBoard(request);
			request.setAttribute("contentPage", "YJ_Board/viewBoard.jsp");
			request.getRequestDispatcher("index.jsp").forward(request, response);
	}

}
