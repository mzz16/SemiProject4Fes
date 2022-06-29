<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="mj_fesInfo_board/css/festivalListDeco.css">
</head>
<body>
	<div id="seoulGu">${param.Seoul}の祭り</div>
	<div id="festivalListDiv" style="display:inline-table;">
		<c:forEach items="${fes}" var="f">
		<table id="festivalListTbl" border="1" width="170px" height="280px;" style="float: left; border: 1px solid gray">
			<tr>
				<td><a href="festivalInfoCon_jp?m_no=${f.no}"><img src="${f.mainImg }" style="max-width: 160px;"></a></td>
			</tr>
			<tr style="height:90px;">
				<td class="festivalListTitle"><a href="festivalInfoCon_jp?m_no=${f.no}">${f.title}</a></td>
			</tr>
		</table>
		</c:forEach>
	 
	 
	</div>
	 
	 






</body>
</html>