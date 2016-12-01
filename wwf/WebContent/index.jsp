<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" %>
<jsp:useBean id="festlist" class="java.util.ArrayList" scope="request" />
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
<%
	request.setCharacterEncoding("utf-8");
	String jdbc_driver = "com.mysql.jdbc.Driver";
	String jdbc_url = "jdbc:mysql://localhost:3306/wwf?characterEncoding=utf8";
	
	Class.forName(jdbc_driver);
	Connection conn = DriverManager.getConnection(jdbc_url,"root","1q2w3e4r!");
	
	Statement stmt = conn.createStatement();
	String sql = "select * from musicFest";
	ResultSet rs = stmt.executeQuery(sql);
%>
<body>
<center>
<div class="w3-top" >
	<div class="w3-dark-grey w3-xlarge w3-padding-xlarge" style="max-width:400px;margin:auto">
		<div class="w3-opennav w3-left w3-hover-text-grey" onclick="w3_open()">☰</div>
		<div class="w3-right w3-hover-text-grey"><img src="./img/ic_search_white_24dp_2x.png" /></div>
		<div class="w3-center"><a href="./index.jsp" style="text-decoration:none">WWF</a></div>
	</div>
</div>

<div class="w3-main w3-dark-grey w3-content w3-padding-xlarge" style="max-width:400px;margin-top:60px">
	<ul class="w3-ul w3-hoverable">
	<%	while(rs.next()){
	%>
				
		<li class="w3-padding-16">
			<a href='javascript:initMap("Fira Montjuïc Fira Gran Via LHospitalet, Barcelona, Spain");' style="text-decoration:none">
				<img src="./img/fest_img/fest_img_<%= rs.getInt(1) %>.jpg" class="w3-left w3-margin-right" style="width:50px">
				<span class="w3-large"><%= rs.getString(2) %></span><br>
				<span>일정 : <%= rs.getString(3) %>, <%= rs.getInt(4) %>일 동안</span>
			</a>
		</li>
<%
			if( rs.getInt(1) == 1){
%>
				<div id="map" style="width: 300px; height: 300px"></div>
<%
			}
		}
%>
</ul>
</div>	
</center>
</body>
</html>