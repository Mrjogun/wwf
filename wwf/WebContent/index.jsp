<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WWF</title>
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js" />
<script async defer
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAc6nmQ1eR8JJ2Jv45fkMXAKmjzyK1jNSs&callback=initMap">
</script>
</head>
<body>
<table border=1>
	<tr>
		<td calspan="2">여긴 위에</td>
	</tr>
	<tr>
		<td>
			여긴 왼쪽
		</td>
		<td>
			<div id="map" style="width: 400px; height: 400px"></div>	
		</td>
		<td>
			여긴 오른쪽
		</td>
	</tr>
	<tr>
		<td calspan="2">여긴 아래</td>
	</tr>
</table>
<%
        double lat = 51.153185;
        double lng = -2.589855;
%>

	<script type="text/javascript">

		var map;
		var marker;
		function initMap() {
			var myLatlng = new google.maps.LatLng(51.153185,-2.589855);
			map = new google.maps.Map(document.getElementById('map'), {
				center: myLatlng,
				zoom: 7
			});
			marker = new google.maps.Marker({
				position: myLatlng,
				map: map,
				draggable: true
			});
		}
	</script>
</body>
</html>