package com.mj.festival;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Scanner;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.mj.festival.FesDBManager;

public class festivalDAO {
	public static void work(HttpServletRequest request) {

		String result = "";
		Scanner k = null;

		try {
//			k = new Scanner(System.in);
//			System.out.println("검색어 : ");
//			String str = k.next();
//			str = URLEncoder.encode(str, "utf-8");

			URL url = new URL(
					"http://openapi.seoul.go.kr:8088/75784a6a50706d6a3633574c735743/json/culturalEventInfo/1/100/");
//			System.out.println(url);

			BufferedReader bf;
			bf = new BufferedReader(new InputStreamReader(url.openStream(), "utf-8"));
			result = bf.readLine();

			JSONParser jp = new JSONParser();
			JSONObject jo = (JSONObject) jp.parse(result);
//			System.out.println(jo);
			JSONObject culturalEventInfo = (JSONObject) jo.get("culturalEventInfo");
			JSONArray row = (JSONArray) culturalEventInfo.get("row");
//			System.out.println(culturalEventInfo);

			String codeName = null;
			String guName = null;
			String title = null;
			String fdate = null;
			String place = null;
			String program = "-";
			String orgLink = "-";
			String mainImg = null;
			String useTarget = null;
			String useFee = "-";

			ArrayList<festival> festivals = new ArrayList<festival>();

			for (int i = 0; i < row.size(); i++) {
				
				JSONObject item = (JSONObject) row.get(i);
				codeName = (String) item.get("CODENAME");
				guName = (String) item.get("GUNAME");
				title = (String) item.get("TITLE");
				fdate = (String) item.get("DATE");
				place = (String) item.get("PLACE");
				program = (String) item.get("PROGRAM");
				orgLink = (String) item.get("ORG_LINK");
				mainImg = (String) item.get("MAIN_IMG");
				useTarget = (String) item.get("USE_TRGT");
				useFee = (String) item.get("USE_FEE");
				
				if (codeName.equals("축제-문화/예술")) {

					festival fes = new festival(i, codeName, guName, title, fdate, place, program, orgLink, mainImg, useTarget, useFee);
					festivals.add(fes);

				} else if (codeName.equals("축제-자연/경관")) {
					
				
					festival fes = new festival(i, codeName, guName, title, fdate, place, program, orgLink, mainImg, useTarget, useFee);
					festivals.add(fes);
					
				} else if (codeName.equals("축제-전통/역사")) {
					

					festival fes = new festival(i, codeName, guName, title, fdate, place, program, orgLink, mainImg, useTarget, useFee);
					festivals.add(fes);
					
				} else if (codeName.equals("축제-시민화합")) {
					
					festival fes = new festival(i, codeName, guName, title, fdate, place, program, orgLink, mainImg, useTarget, useFee);
					festivals.add(fes);
					
				} else if (codeName.equals("축제-기타")) {
					
					festival fes = new festival(i, codeName, guName, title, fdate, place, program, orgLink, mainImg, useTarget, useFee);
					festivals.add(fes);
					
				}

//				if (codeName.equals("축제-문화/예술")) {
//					System.out.println("--------------------");
//					System.out.println("분류코드 : " + codeName);
//					System.out.println("지역자치구 : " + guName);
//					System.out.println("축제타이틀 : " + title);
//					System.out.println("일시 : " + fdate);
//					System.out.println("장소 : " + place);
//					System.out.println("홈페이지 : " + orgLink);
//					System.out.println("연령제한 : " + useTarget);
//					System.out.println("가격 : " + useFee);
//					System.out.println("\n");
//
//				} else if (codeName.equals("축제-자연/경관")) {
//
//					System.out.println("--------------------");
//					System.out.println("분류코드 : " + codeName);
//					System.out.println("지역자치구 : " + guName);
//					System.out.println("축제타이틀 : " + title);
//					System.out.println("일시 : " + fdate);
//					System.out.println("장소 : " + place);
//					System.out.println("홈페이지 : " + orgLink);
//					System.out.println("연령제한 : " + useTarget);
//					System.out.println("가격 : " + useFee);
//					System.out.println("\n");
//
//				} else if (codeName.equals("축제-전통/역사")) {
//
//					System.out.println("--------------------");
//					System.out.println("분류코드 : " + codeName);
//					System.out.println("지역자치구 : " + guName);
//					System.out.println("축제타이틀 : " + title);
//					System.out.println("일시 : " + fdate);
//					System.out.println("장소 : " + place);
//					System.out.println("홈페이지 : " + orgLink);
//					System.out.println("연령제한 : " + useTarget);
//					System.out.println("가격 : " + useFee);
//					System.out.println("\n");
//
//				} else if (codeName.equals("축제-시민화합")) {
//
//					System.out.println("--------------------");
//					System.out.println("분류코드 : " + codeName);
//					System.out.println("지역자치구 : " + guName);
//					System.out.println("축제타이틀 : " + title);
//					System.out.println("일시 : " + fdate);
//					System.out.println("장소 : " + place);
//					System.out.println("홈페이지 : " + orgLink);
//					System.out.println("연령제한 : " + useTarget);
//					System.out.println("가격 : " + useFee);
//					System.out.println("\n");
//
//				} else if (codeName.equals("축제-기타")) {
//
//					System.out.println("--------------------");
//					System.out.println("분류코드 : " + codeName);
//					System.out.println("지역자치구 : " + guName);
//					System.out.println("축제타이틀 : " + title);
//					System.out.println("일시 : " + fdate);
//					System.out.println("장소 : " + place);
//					System.out.println("홈페이지 : " + orgLink);
//					System.out.println("연령제한 : " + useTarget);
//					System.out.println("가격 : " + useFee);
//					System.out.println("\n");
//				}

			}
			request.setAttribute("festivals", festivals);

			// JSONObject row = (JSONObject) culturalEventInfo.get("row"); //

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	
	public static void getFestival(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
			
		try {
			String sql = "select * from festival_list where guname=?";
			
			con = FesDBManager.connect();
			pstmt = con.prepareStatement(sql);
			String guName = (String) request.getAttribute("guname");
			pstmt.setString(1, guName);
			rs = pstmt.executeQuery();
			
			ArrayList<festival> festivals = new ArrayList<festival>();
			festival f = null;
			
			while (rs.next()) {
				f = new festival(rs.getInt("m_no"), 
						rs.getString("codename"), 
						rs.getString("guname"), 
						rs.getString("title"), 
						rs.getString("fdate"), 
						rs.getString("place"), 
						rs.getString("program"), 
						rs.getString("orglink"), 
						rs.getString("mainimg"), 
						rs.getString("usetarget"), 
						rs.getString("usefee"));
				
				festivals.add(f);
			}
			
				
			
			
		} catch (Exception e) {
			System.out.println(e);
			
		} finally {
			FesDBManager.close(con, pstmt, rs);
		}
	}


	public static void getFestivalInfo(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
			
		try {
			String sql = "select * from festival_list where title=?";
			
			con = FesDBManager.connect();
			pstmt = con.prepareStatement(sql);
			String title = (String)request.getAttribute("title");
			pstmt.setString(1, title);
			rs = pstmt.executeQuery();
			
			festival f = null;
			
			while (rs.next()) {
				f = new festival();
				
				f.setTitle(rs.getString("title"));
				f.setPlace(rs.getString("place"));
				f.setFdate(rs.getString("fdate"));
				f.setProgram(rs.getString("program"));
				f.setOrgLink(rs.getString("orglink"));
				
				request.setAttribute("festival", f);
			}
			
				
			
			
		} catch (Exception e) {
			System.out.println(e);
			
		} finally {
			FesDBManager.close(con, pstmt, rs);
		}
	}


	
		
	

}
