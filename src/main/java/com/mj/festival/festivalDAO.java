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
//			System.out.println("�˻��� : ");
//			String str = k.next();
//			str = URLEncoder.encode(str, "utf-8");

			URL url = new URL(
					"http://openapi.seoul.go.kr:8088/75784a6a50706d6a3633574c735743/json/culturalEventInfo/1/1000/");
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
				
				if (codeName.equals("����-��ȭ/����")) {

					festival fes = new festival(i, codeName, guName, title, fdate, place, program, orgLink, mainImg, useTarget, useFee);
					festivals.add(fes);

				} else if (codeName.equals("����-�ڿ�/���")) {
					
				
					festival fes = new festival(i, codeName, guName, title, fdate, place, program, orgLink, mainImg, useTarget, useFee);
					festivals.add(fes);
					
				} else if (codeName.equals("����-����/����")) {
					

					festival fes = new festival(i, codeName, guName, title, fdate, place, program, orgLink, mainImg, useTarget, useFee);
					festivals.add(fes);
					
				} else if (codeName.equals("����-�ù�ȭ��")) {
					
					festival fes = new festival(i, codeName, guName, title, fdate, place, program, orgLink, mainImg, useTarget, useFee);
					festivals.add(fes);
					
				} else if (codeName.equals("����-��Ÿ")) {
					
					festival fes = new festival(i, codeName, guName, title, fdate, place, program, orgLink, mainImg, useTarget, useFee);
					festivals.add(fes);
					
				}

//				if (codeName.equals("����-��ȭ/����")) {
//					System.out.println("--------------------");
//					System.out.println("�з��ڵ� : " + codeName);
//					System.out.println("������ġ�� : " + guName);
//					System.out.println("����Ÿ��Ʋ : " + title);
//					System.out.println("�Ͻ� : " + fdate);
//					System.out.println("��� : " + place);
//					System.out.println("Ȩ������ : " + orgLink);
//					System.out.println("�������� : " + useTarget);
//					System.out.println("���� : " + useFee);
//					System.out.println("\n");
//
//				} else if (codeName.equals("����-�ڿ�/���")) {
//
//					System.out.println("--------------------");
//					System.out.println("�з��ڵ� : " + codeName);
//					System.out.println("������ġ�� : " + guName);
//					System.out.println("����Ÿ��Ʋ : " + title);
//					System.out.println("�Ͻ� : " + fdate);
//					System.out.println("��� : " + place);
//					System.out.println("Ȩ������ : " + orgLink);
//					System.out.println("�������� : " + useTarget);
//					System.out.println("���� : " + useFee);
//					System.out.println("\n");
//
//				} else if (codeName.equals("����-����/����")) {
//
//					System.out.println("--------------------");
//					System.out.println("�з��ڵ� : " + codeName);
//					System.out.println("������ġ�� : " + guName);
//					System.out.println("����Ÿ��Ʋ : " + title);
//					System.out.println("�Ͻ� : " + fdate);
//					System.out.println("��� : " + place);
//					System.out.println("Ȩ������ : " + orgLink);
//					System.out.println("�������� : " + useTarget);
//					System.out.println("���� : " + useFee);
//					System.out.println("\n");
//
//				} else if (codeName.equals("����-�ù�ȭ��")) {
//
//					System.out.println("--------------------");
//					System.out.println("�з��ڵ� : " + codeName);
//					System.out.println("������ġ�� : " + guName);
//					System.out.println("����Ÿ��Ʋ : " + title);
//					System.out.println("�Ͻ� : " + fdate);
//					System.out.println("��� : " + place);
//					System.out.println("Ȩ������ : " + orgLink);
//					System.out.println("�������� : " + useTarget);
//					System.out.println("���� : " + useFee);
//					System.out.println("\n");
//
//				} else if (codeName.equals("����-��Ÿ")) {
//
//					System.out.println("--------------------");
//					System.out.println("�з��ڵ� : " + codeName);
//					System.out.println("������ġ�� : " + guName);
//					System.out.println("����Ÿ��Ʋ : " + title);
//					System.out.println("�Ͻ� : " + fdate);
//					System.out.println("��� : " + place);
//					System.out.println("Ȩ������ : " + orgLink);
//					System.out.println("�������� : " + useTarget);
//					System.out.println("���� : " + useFee);
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
			String sql = "select * from festival_list";
			
			con = FesDBManager.connect();
			pstmt = con.prepareStatement(sql);
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
			
				request.setAttribute("fes", festivals);
			
			
		} catch (Exception e) {
			System.out.println(e);
			
		} finally {
			FesDBManager.close(con, pstmt, rs);
		}
	}


	
		
	

}
