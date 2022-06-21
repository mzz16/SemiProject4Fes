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
	<div id="seoulGu">${param.Seoul}축제</div>
	${f.no}
		<c:forEach items="${fes}" var="f">
		<table border="1" width="170px" height="250px;" style="float: left">
			<tr>
				<td><a href="festivalInfoCon?m_no=${f.no}"><img src="${f.mainImg }" style="max-width: 160px;"></a></td>

			<tr style="height:90px;">
				<td><a href="festivalInfoCon?m_no=${f.no}">${f.title}</a></td>
			</tr>
		</table>
		</c:forEach>
	 
	 
	 
	 






</body>
</html>