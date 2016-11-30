<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WWF</title>
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Karma">
<script type="text/javascript" src="./maps.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAc6nmQ1eR8JJ2Jv45fkMXAKmjzyK1jNSs&signed_in=true&callback=initMap"
	async defer></script>
</head>
<body>
<div class="w3-top">
	<div class="w3-white w3-xlarge w3-padding-xlarge" style="max-width:1200px;margin:auto">
		<div class="w3-opennav w3-left w3-hover-text-grey" onclick="w3_open()">☰</div>
		<div class="w3-right"><img src="./ic_search_black_24dp_2x.png" /></div>
		<div class="w3-center">WWF</div>
	</div>
</div>
<table>
<%	for(int i=0;i<46;i++){%>
<tr>
<button onclick="initMap('Fira Montjuïc Fira Gran Via LHospitalet, Barcelona, Spain')" value="hello" />
<div class="w3-main w3-content" style="max-width:1200px;margin-top:100px">
	<div class="w3-quarter">
		<img src="./img/fest_img/fest_img_<%=i+1%>.jpg" alt="fest_name" style="width:100%">
	</div>
	<div>
		<%= i+1 %>번째 이미지 입니다.
	</div>
</div>
</form>
</tr>
<%	} %>
</table>
	<div id="map" style="width: 100%; height: 100px"></div>
</body>
</html>