package com.t4.main;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBManager_Main {
	// AOP개념으로; DB할 때마다 반복되는 내용 정리

	// DB 작업 시에 어찌되었든 연결 해야됨.
	public static Connection connect() throws SQLException {
		// yj
		// String url = "jdbc:oracle:thin:@db202204301707_medium?TNS_ADMIN=/Users/allmight/eclipse-workspace/OracleWallet/Wallet_DB202204301707";
		
		// mj
		//String url = "jdbc:oracle:thin:@db202204301707_medium?TNS_ADMIN=C:/mj/Wallet_DB202204301707";

		// sw
	//	String url = "jdbc:oracle:thin:@db202204301707_medium?TNS_ADMIN=C:/siwonjava/Wallet_DB202204301707";
		
		// dh
		//String url = "jdbc:oracle:thin:@db202204301707_medium?TNS_ADMIN=/Users/mitakeran/LDH/Wallet_DB202204301707";
		return DriverManager.getConnection(url, "YJJ", "YJ802soldesk");
	}
	
//	public static Connection connect() throws SQLException{
//		String url = "jdbc:oracle:thin:@localhost:1521:xe";
//		return DriverManager.getConnection(url, "c##mj", "mj");
//		
//	}

	// 매 작업 후 닫는 것.
	public static void close(Connection con, PreparedStatement pstmt, ResultSet rs) {
		try {
			if (rs != null) {
				rs.close();
			}
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
