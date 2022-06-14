package com.yj.main;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

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

			// 가변배열에 넣기
			ArrayList<Board> boards = new ArrayList<Board>();

			Board b = null;

			while (rs.next()) {
				b = new Board(rs.getInt("b_no"), rs.getString("b_cate"), rs.getString("b_title"),
						rs.getString("b_name"), rs.getString("b_txt"), rs.getString("b_img"), rs.getDate("b_date"));
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

	// 게시판 글 등록하기
	public static void regBoard(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			String sql = "INSERT INTO BOARD_DB VALUES(BOARD_SEQ.nextval,?,?,?,?,?,sysdate)";

			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);

			String saveDirectory = request.getServletContext().getRealPath("fileFolder");

			System.out.println(saveDirectory);

			MultipartRequest mr = new MultipartRequest(request, saveDirectory, 31457280, "UTF-8",
					new DefaultFileRenamePolicy());

			String title = mr.getParameter("title");
			String cate = mr.getParameter("boardType");
			String name = mr.getParameter("name");
			String img = mr.getFilesystemName("fName");
			String txt = mr.getParameter("txt");

			// 값 받고, ?에 셋팅.
			pstmt.setString(1, cate);
			pstmt.setString(2, title);
			pstmt.setString(3, name);
			pstmt.setString(4, txt);
			pstmt.setString(5, img);

			if (pstmt.executeUpdate() == 1) {
				System.out.println("등록성공");
			}

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("등록실패");
		} finally {
			DBManager.close(con, pstmt, null);
		}
	}

	// 게시글 하나 불러오기
	public static void getOneBoard(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			con = DBManager.connect();

			String sql = "select*from BOARD_DB where b_no = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, Integer.parseInt(request.getParameter("number")));
			rs = pstmt.executeQuery();

			Board b = null;
			if (rs.next()) {
				b = new Board(rs.getInt("b_no"), rs.getString("b_cate"), rs.getString("b_title"),
						rs.getString("b_name"), rs.getString("b_txt"), rs.getString("b_img"), rs.getDate("b_date"));

				request.setAttribute("board", b);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}
	}
		
		
}
