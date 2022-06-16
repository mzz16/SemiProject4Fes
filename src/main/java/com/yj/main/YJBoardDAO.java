package com.yj.main;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
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
						rs.getString("b_name"), rs.getString("b_txt"), rs.getString("b_img"), rs.getDate("b_date"),
						rs.getString("b_pw"));
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
			String sql = "INSERT INTO BOARD_DB VALUES(BOARD_SEQ.nextval,?,?,?,?,?,sysdate,?)";

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
			String pw = mr.getParameter("password");

			// 값 받고, ?에 셋팅.
			pstmt.setString(1, cate);
			pstmt.setString(2, title);
			pstmt.setString(3, name);
			pstmt.setString(4, txt);
			pstmt.setString(5, img);
			pstmt.setString(6, pw);

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
						rs.getString("b_name"), rs.getString("b_txt"), rs.getString("b_img"), rs.getDate("b_date"),
						rs.getString("b_pw"));
				request.setAttribute("board", b);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}
	}

	// 게시글 삭제
	public static void deleteBoard(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;

		try {
			String sql = "DELETE BOARD_DB WHERE B_NO = ?";

			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);

			String no = request.getParameter("number");

			// 값 받고, ?에 셋팅.
			pstmt.setString(1, no);

			if (pstmt.executeUpdate() == 1) {
				System.out.println("삭제성공");
			}

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("삭제실패");
		} finally {
			DBManager.close(con, pstmt, null);
		}

	}

	// 글 업데이트하기.
	public static void updateBoard(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;

		try {

			String saveDirectory = request.getServletContext().getRealPath("fileFolder");

			System.out.println(saveDirectory);

			MultipartRequest mr = new MultipartRequest(request, saveDirectory, 31457280, "UTF-8",
					new DefaultFileRenamePolicy());

			try {

				if (!mr.getFilesystemName("fName").isEmpty()) {
					String sql = "UPDATE BOARD_DB SET b_title= ?, b_cate=?,b_name=?,b_txt=?,b_img=?,b_pw=? WHERE b_NO=?";

					con = DBManager.connect();
					pstmt = con.prepareStatement(sql);

					String title = mr.getParameter("title");
					String cate = mr.getParameter("boardType");
					String name = mr.getParameter("name");
					String txt = mr.getParameter("txt");
					String img = mr.getFilesystemName("fName");
					String pw = mr.getParameter("password");
					String number = mr.getParameter("number");

					// 값 받고, ?에 셋팅.
					pstmt.setString(2, cate);
					pstmt.setString(1, title);
					pstmt.setString(3, name);
					pstmt.setString(4, txt);
					pstmt.setString(5, img);
					pstmt.setString(6, pw);
					pstmt.setString(7, number);

				} else if (mr.getFilesystemName("fName").isEmpty()) {

					String sql = "UPDATE BOARD_DB SET b_title= ?, b_cate=?,b_name=?,b_txt=?,b_pw=? WHERE b_NO=?";
					con = DBManager.connect();
					pstmt = con.prepareStatement(sql);

					String title = mr.getParameter("title");
					String cate = mr.getParameter("boardType");
					String name = mr.getParameter("name");
					String txt = mr.getParameter("txt");
					String pw = mr.getParameter("password");
					String number = mr.getParameter("number");

					// 값 받고, ?에 셋팅.
					pstmt.setString(1, title);
					pstmt.setString(2, cate);
					pstmt.setString(3, name);
					pstmt.setString(4, txt);
					pstmt.setString(5, pw);
					pstmt.setString(6, number);
				}

				String number = mr.getParameter("number");
				request.setAttribute("number", number);

			} catch (Exception e) {
				e.printStackTrace();
				System.out.println("등록실패");
			}

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

	// 카테고리 선택으로 글 불러오기
	public static void getBoardCate(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {

			String userCate = request.getParameter("cate");
			String sql = "";
			String cateSelect = "";

			if (userCate.equals("all")) {
				sql = "select*from BOARD_DB order by B_DATE desc";
			} else if (userCate.equals("free") || userCate.equals("review")) {
				sql = "select*from BOARD_DB WHERE b_cate like ? order by B_DATE desc";
				if (userCate.equals("free")) {
					cateSelect = "%자유게시판%";
				} else if (userCate.equals("review")) {
					cateSelect = "%후기게시판%";
				}
			}

			con = DBManager.connect();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, cateSelect);

			rs = pstmt.executeQuery();

			// 가변배열에 넣기
			ArrayList<Board> boards = new ArrayList<Board>();

			Board b = null;

			while (rs.next()) {
				b = new Board(rs.getInt("b_no"), rs.getString("b_cate"), rs.getString("b_title"),
						rs.getString("b_name"), rs.getString("b_txt"), rs.getString("b_img"), rs.getDate("b_date"),
						rs.getString("b_pw"));
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

	// 페이징관련
	// 마지막페이지 계산
	public static void lastPage(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String category = "";
		String sql = "";
		String cateSelect = "";

		try {
			con = DBManager.connect();

			if (request.getParameter("cate").equals("all")) {
				category = (String) request.getAttribute("cate");
				sql = "select count(*) from BOARD_DB";
				pstmt = con.prepareStatement(sql);

			} else if (request.getParameter("cate").equals("free") || request.getParameter("cate").equals("review")) {

				category = (String) request.getParameter("cate");
				sql = "select count(*) from BOARD_DB WHERE B_CATE LIKE ?";
				pstmt = con.prepareStatement(sql);

				if (request.getParameter("cate").equals("free")) {
					cateSelect = "%자유게시판%";
					pstmt.setString(1, cateSelect);
				} else if (request.getParameter("cate").equals("review")) {
					cateSelect = "%후기게시판%";
					pstmt.setString(1, cateSelect);
				}
			}

			rs = pstmt.executeQuery();

			if (rs.next()) {
				int total = rs.getInt("COUNT(*)");
				int lastpage = (int) Math.ceil((double) total / 10);
				request.setAttribute("lastpage", lastpage);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}

	}

	// 페이지 로딩
	public static void showPage(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = "";
		String cateSelect = "";

		String category = request.getParameter("cate");
		String vpage = request.getParameter("vpage");

		if (vpage == null) {
			vpage = "1";
		}

		int page = Integer.parseInt(vpage);
		// 1p 1 1~10
		// 2p 2 11~20
		// 3p 3 21~30
		int rnStart = 1;
		int rnEnd = 10;

		if (page != 1) {
			rnStart = page * 10 - 9;
			rnEnd = rnStart + 9;
		}
		try {

			if (request.getParameter("cate").equals("all")) {
				category = (String) request.getParameter("cate");
				sql = "select * from BOARD_DB where b_no between ? and ? order by b_date desc";

				con = DBManager.connect();
				pstmt = con.prepareStatement(sql);

				pstmt.setInt(1, rnStart);
				pstmt.setInt(2, rnEnd);

			} else if (request.getParameter("cate").equals("free") || request.getParameter("cate").equals("review")) {
				category = (String) request.getAttribute("cate");
				sql = "select * from BOARD_DB where B_CATE = ? AND b_no between ? and ? order by b_date desc";
				;
				if (request.getParameter("cate").equals("free")) {
					cateSelect = "%자유게시판%";
				} else if (request.getParameter("cate").equals("review")) {
					cateSelect = "%후기게시판%";
				}
				con = DBManager.connect();
				pstmt = con.prepareStatement(sql);

				pstmt.setString(1, cateSelect);
				pstmt.setInt(2, rnStart);
				pstmt.setInt(3, rnEnd);
			}

			rs = pstmt.executeQuery();

			ArrayList<Board> boards = new ArrayList<Board>();
			Board b = null;

			while (rs.next()) {
				b = new Board(rs.getInt("b_no"), rs.getString("b_cate"), rs.getString("b_title"),
						rs.getString("b_name"), rs.getString("b_txt"), rs.getString("b_img"), rs.getDate("b_date"),
						rs.getString("b_pw"));

				boards.add(b);
			}

			request.setAttribute("board", boards);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(con, pstmt, rs);
		}

	}

}
