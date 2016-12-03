<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" %>
<jsp:useBean id="festlist" class="java.util.ArrayList" scope="request" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WWF</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Karma">
<script type="text/javascript" src="./maps.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAc6nmQ1eR8JJ2Jv45fkMXAKmjzyK1jNSs&signed_in=true&callback=initMap"
	async defer></script>
<script>
function myFunction() {
    var x = document.getElementById("Demo");
    if (x.className.indexOf("w3-show") == -1) 
        x.className += " w3-show";
    else 
        x.className = x.className.replace(" w3-show", "");
}
</script>
</head>
<%
	
	try {
        // 1. 드라이버 로딩
        Class.forName("oracle.jdbc.driver.OracleDriver");

        // 오라클DB에 연결
        Connection conn = DriverManager.getConnection(
                "jdbc:oracle:thin:@203.249.22.52:2013:xe", "system" , "admin");
        
        Statement stmt = conn.createStatement();
		String sql = "select * from musicFest NATURAL join place";
		ResultSet rs = stmt.executeQuery(sql);

%>
<body>
<center>
<div class="w3-top" >
	<div class="w3-dark-grey w3-xlarge w3-padding-xlarge" style="max-width:100%;margin:auto">
		<div class="w3-opennav w3-left w3-hover-text-grey" onclick="w3_open()">☰</div>
		<div class="w3-right w3-hover-text-grey"><img src="./img/ic_search_white_24dp_2x.png" /></div>
		<div class="w3-center"><a href="./index.jsp" style="text-decoration:none">WWF</a></div>
	</div>
</div>

<div class="w3-main w3-dark-grey w3-content w3-padding-xlarge" style="max-width:100%;margin-top:60px">
	<ul class="w3-ul w3-hoverable">
	<%	while(rs.next()){	%>
		<button onclick='myFunction();javascript:initMap("<%= rs.getString("con_name")+ rs.getString("detail_adr") %>");' class="w3-btn w3-red" style="text-decoration:none">
			<li class="w3-padding-16">
			
				<img src="./img/fest_img/fest_img_<%= rs.getInt("fest_id") %>.jpg" class="w3-left w3-margin-right" style="width:50px">
				<span class="w3-large"><%= rs.getString("fest_name") %></span><br>
				<span>일정 : <%= rs.getDate("fest_date") %>, <%= rs.getInt("fest_term") %>일 동안</span>
			</li>
		</button>
<%
			if( rs.getInt("place_id") == 1){
%>
			<div id="Demo" class="w3-dropdown-content">
				<div id="map" style="width: 300px; height: 300px"></div>
			</div>
<%
			}
		}
		rs.close();
		stmt.close();
		conn.close();
    } catch (SQLException e) {
        System.out.println("커넥션 실패");
    } 
%>
</ul>
</div>	
</center>
</body>
</html>