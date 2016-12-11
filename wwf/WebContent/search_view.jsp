<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>WWF</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<script type="text/javascript" src="./maps.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAc6nmQ1eR8JJ2Jv45fkMXAKmjzyK1jNSs&signed_in=true&callback=initMap"
		async defer></script>
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
		
		String sql = "";
		
		Statement stmt = conn.createStatement();
		if(request.getParameter("genre") != null && request.getParameter("persent") != null){
			sql = "select * from table(getPerMFInfo('"+request.getParameter("genre")+"',"+request.getParameter("persent")+")) NATURAL join place order by fest_id desc";
		}else if(request.getParameter("start_date")!=null && request.getParameter("end_date")!=null &&request.getParameter("genre")!=null){
			sql = "select * from table(getVaMFInfo(to_date('"+request.getParameter("start_date")+"','yyyy-mm-dd'), to_date('"+request.getParameter("end_date")+"','yyyy-mm-dd'),'"+request.getParameter("genre")+"')) NATURAL join place order by fest_id desc";
		}
		ResultSet rs = stmt.executeQuery(sql);
%>
	<center>
		<div class="w3-top" >
			<div class="w3-dark-grey w3-xlarge w3-padding-xlarge" style="width:100%;hegiht:auto;max-width:1200px;margin:auto">
				<div class="w3-opennav w3-left" onclick="w3_open()">
					<a href="./menu.html"><i class="fa fa-bars"></i></a>
				</div>
				<div class="w3-right w3-hover-text-grey">
					<a href="./index.jsp"><i class="fa fa-home" ></i></a>
				</div>
				<div class="w3-center">SEACH</div>
			</div>
		</div>
		
		<div class="w3-main w3-dark-grey w3-content w3-padding-xlarge" style="width:100%;max-width:1200px;margin-top:60px">
			<ul class="w3-ul w3-hoverable">
<%
		while(rs.next()){
%>
			<div class="w3-accordion">
				<button onclick='accordion("fest<%= rs.getInt("fest_id") %>");javascript:initMap("<%= rs.getString("detail_adr") %>",<%=rs.getInt("fest_id")%>);' class="w3-btn w3-dark-grey" style="width:100%;max-width:1200px">
					<li class="w3-padding-16 w3-container">
						<img src="./img/fest_img/fest_img_<%= rs.getInt("fest_id") %>.jpg" class="w3-left w3-margin-right" style="width:20%;max-width:150px;max-height:150px">
						<span class="w3-large"><%= rs.getString("fest_name") %></span><br>
						<span>일정 : <%= rs.getDate("fest_date") %>, <%= rs.getInt("fest_term") %>일 동안</span>
					</li>
				</button>
				<div id="fest<%= rs.getInt("fest_id") %>" class="w3-accordion-content w3-container">
					<div class="url">
						<button class="w3-btn w3-light-grey w3-round-large"><a href=<%=rs.getString("ent_url")%>>출연진</a></button>
						<button class="w3-btn w3-light-grey w3-round-large"><a href=<%=rs.getString("des_url")%>>티켓판매처</a></button>
					</div>
					<br>
					<div id="map<%=rs.getInt("fest_id")%>" style="width: 100%; height: 300px;max-width:1200px"></div>
				</div>
			</div>
<%
		}
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