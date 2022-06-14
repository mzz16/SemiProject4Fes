package com.mj.festival;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.ArrayList;
import java.util.Scanner;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

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
					"http://openapi.seoul.go.kr:8088/75784a6a50706d6a3633574c735743/json/culturalEventInfo/1/5/");
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
			String date = null;
			String place = null;
			String orgLink = null;
			String mainImg = null;
			String useTarget = null;
			String useFee = null;

			ArrayList<festival> festivals = new ArrayList<festival>();
			
			for (int i = 0; i < row.size(); i++) {
				JSONObject item = (JSONObject) row.get(i);
				codeName = (String) item.get("CODENAME");
				guName = (String) item.get("GUNAME");
				title = (String) item.get("TITLE");
				date = (String) item.get("DATE");
				place = (String) item.get("PLACE");
				orgLink = (String) item.get("ORG_LINK");
				mainImg = (String) item.get("MAIN_IMG");
				useTarget = (String) item.get("USE_TRGT");
				useFee = (String) item.get("USE_FEE");
				
				
				
				festival fes = new festival(codeName, guName, title, date, place, orgLink, mainImg, useTarget, useFee);
				festivals.add(fes);
					
//				if (codeName.equals("축제-문화·예술")) {
//					System.out.println("--------------------");
//					System.out.println("분류코드 : " + codeName);
//					System.out.println("지역자치구 : " + guName);
//					System.out.println("축제타이틀 : " + title);
//					System.out.println("일시 : " + date);
//					System.out.println("장소 : " + place);
//					System.out.println("홈페이지 : " + orgLink);
//					System.out.println(orgLink);
//					System.out.println("연령제한 : " + useTarget);
//					System.out.println("가격 : " + useFee);
//					System.out.println("\n");
//					
//					
//				} else if(codeName.equals("축제-자연·경관")) {
//					
//					System.out.println("--------------------");
//					System.out.println("분류코드 : " + codeName);
//					System.out.println("지역자치구 : " + guName);
//					System.out.println("축제타이틀 : " + title);
//					System.out.println("일시 : " + date);
//					System.out.println("장소 : " + place);
//					System.out.println("연령제한 : " + useTarget);
//					System.out.println("가격 : " + useFee);
//					System.out.println("\n");
//					
//				} else if(codeName.equals("축제-전통·역사")) {
//					
//					System.out.println("--------------------");
//					System.out.println("분류코드 : " + codeName);
//					System.out.println("지역자치구 : " + guName);
//					System.out.println("축제타이틀 : " + title);
//					System.out.println("일시 : " + date);
//					System.out.println("장소 : " + place);
//					System.out.println("연령제한 : " + useTarget);
//					System.out.println("가격 : " + useFee);
//					System.out.println("\n");
//					
//				} else if(codeName.equals("축제-시민화합")) {
//					
//					System.out.println("--------------------");
//					System.out.println("분류코드 : " + codeName);
//					System.out.println("지역자치구 : " + guName);
//					System.out.println("축제타이틀 : " + title);
//					System.out.println("일시 : " + date);
//					System.out.println("장소 : " + place);
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
//					System.out.println("일시 : " + date);
//					System.out.println("장소 : " + place);
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

}
