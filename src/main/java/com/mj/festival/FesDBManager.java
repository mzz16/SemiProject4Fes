package com.mj.festival;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class FesDBManager {

	public static Connection connect() throws SQLException{
		String url = "jdbc:oracle:thin:@db202204301707_medium?TNS_ADMIN=C:/mj/Wallet_DB202204301707";
		return DriverManager.getConnection(url, "YJJ", "YJ802soldesk");
	}
	
	
	public static void close(Connection con, PreparedStatement pstmt, ResultSet rs) {
		try {
			if(rs != null) {
				rs.close();
			}
			pstmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	

}
