<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" %>
<jsp:useBean id="festlist" class="java.util.ArrayList" scope="request" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>WWF</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<script type="text/javascript" src="./maps.js"></script>
	<script async defer	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAc6nmQ1eR8JJ2Jv45fkMXAKmjzyK1jNSs&callback=initMap"></script>
	<script>
		function accordion(id) {
    		var x = document.getElementById(id);
    		if (x.className.indexOf("w3-show") == -1) {
        		x.className += " w3-show";
    		} else { 
        		x.className = x.className.replace(" w3-show", "");
    		}
		}
	</script>
</head>
<body>
<%
	
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection(
			"jdbc:oracle:thin:@203.249.22.52:2013:xe", "system" , "admin");
        
		Statement stmt = conn.createStatement();
		String sql = "select * from musicFest NATURAL join place where fest_id="+request.getParameter("fest_id");
		ResultSet rs = stmt.executeQuery(sql);
		
		Statement stmt2 = conn.createStatement();
		String sql2 = "select * from entry NATURAL join artist where fest_id="+request.getParameter("fest_id");
		ResultSet rs2 = stmt2.executeQuery(sql2);
		
		rs.next();

%>
<!-- top start -->
	<center>
		<div class="w3-top" >
			<div class="w3-dark-grey w3-xlarge w3-padding-xlarge" style="width:100%;hegiht:auto;max-width:1200px;margin:auto">
				<div class="w3-opennav w3-left" onclick="w3_open()">
					<a href="./menu.html"><i class="fa fa-bars"></i></a>
				</div>
				<div class="w3-right w3-hover-text-grey">
					<a href="./index.jsp"><i class="fa fa-home" ></i></a>
				</div>
				<div class="w3-center">DETAIL</div>
			</div>
		</div>
	</center>
<!-- top end -->

		<div class="w3-main w3-dark-grey w3-content w3-padding-xlarge" style="width:100%;max-width:1200px;margin-top:60px">
			<div class="w3-row w3-padding-16">
				<img src="img/fest_img/fest_img_<%=rs.getInt("fest_id") %>.jpg" style="width:100%">
				<h1><%= rs.getString("fest_name") %></h1>
				<p>일정 : <%= rs.getDate("fest_date") %>, <%= rs.getInt("fest_term") %>일 동안</p>
				<p>티켓가격 : <%= rs.getString("fest_exc") %> <%= rs.getInt("fest_price") %></p>
				<p>출연진 : 
				<% while(rs2.next()){%>
					<%=rs2.getString("artist_name") %> 
				<%}%>
				</p>
				<p></p>
				<p>국가 : <%=rs.getString("nation_name") %><br>
				도시 : <%=rs.getString("con_name") %><br>
				상세주소 : <%= rs.getString("detail_adr") %></p>
				<p>
				<button class="w3-btn w3-light-grey w3-round-large"><a href=<%=rs.getString("ent_url")%> style="text-decoration:none">출 연 진</a></button>
				<button class="w3-btn w3-light-grey w3-round-large"><a href=<%=rs.getString("des_url")%> style="text-decoration:none">티켓판매</a></button>
				<button onclick='accordion("map");javascript:initMap("<%= rs.getString("detail_adr") %>",<%=rs.getInt("fest_id")%>);' class="w3-btn w3-light-grey w3-round-large">
					지&nbsp&nbsp&nbsp&nbsp도
				</button>
				<div id="map" class="w3-accordion-content w3-container">
					<div id="map<%=rs.getInt("fest_id")%>" style="width: 100%; height: 300px;max-width:1200px"></div>
				</div>
				</p>
			</div>			
<%
		rs.close();
		stmt.close();
		conn.close();
    } catch (SQLException e) {
        System.out.println("커넥션 실패 뭔데");
    } 
%>
			</div>	
	</body>
</html>