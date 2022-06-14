package com.yj.main;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;

public class YJBoardDAO {
	
	// 전체 게시판 글 불러오기
	public static void getAllBoard(HttpServletRequest request) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			
			String sql = "select*from BOARD_DB order by B_DATE desc";
			
			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			//가변배열에 넣기
			ArrayList<Board> boards = new ArrayList<Board>();
			
			Board b = null;
			
			while (rs.next()) {
				b = new Board(rs.getInt("b_no"),
							rs.getString("b_cate"),
							rs.getString("b_title"), 
							rs.getString("b_name"), 
							rs.getString("b_txt"),
							rs.getString("b_img"), 
							rs.getDate("b_date"));
				boards.add(b);
			}
			request.setAttribute("boards", boards);
			
			
				} catch (Exception e) {
						// TODO: handle exception
						e.printStackTrace();
				} finally {
							DBManager.close(con, pstmt, rs);
				}
		
		
		
	}

}
