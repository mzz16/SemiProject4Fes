<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-1.11.0.js"></script>
<script src="geolocaitonMap.js"></script>
<script>
    $(function() {
        $("#map").append(getmap())
    });
</script>
</head>
<body>
    <div id="map"></div>
</body>

</html>
