<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
		String sql = "select distinct music_genre from artist";
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
				<div class="w3-center">SEARCH</div>
			</div>
		</div>
	
			<div class="w3-main w3-dark-grey w3-content w3-padding-xlarge" style="width:100%;max-width:1200px;margin-top:60px">
			<div class="w3-accordion">
				<button onclick='accordion("genre_per");' class="w3-btn w3-dark-grey" style="width:100%;max-width:1200px">
					<p>원하는 장르의 비율이 일정량 포함된 페스티벌 찾기</p>
				</button>
				<div id="genre_per" class="w3-accordion-content w3-container">
					<br>
					<form name="genre_per" action="search_view.jsp" method="post">
						<select name="genre">
							<% while(rs.next()){ %>
							<option value="<%= rs.getString(1) %>"><%= rs.getString(1) %></option>
							<% } %>
						</select>
						<select name="persent">
							<% for(int i=0;i<11;i++){ %>
							<option value="<%= i*10 %>"><%= i*10 %>%</option>
							<% } %>
						</select>
						<button class="w3-btn w3-dark-grey"><i class="fa fa-search" ></i></button>
					</form>
				</div>
<%
		rs.close();
		rs = stmt.executeQuery(sql);
%>
				<button onclick='accordion("datetodate_genre");' class="w3-btn w3-dark-grey" style="width:100%;max-width:1200px">
					<p>특정 기간의 원하는 장르의 비율이 높은 페스티벌 찾기</p>
				</button>
				<div id="datetodate_genre" class="w3-accordion-content w3-container">
					<br>
					<form name="datetodate_genre" action="searcher.jsp" method="post">
						<input name="start_date" type="date">
						<input name="end_date" type="date">
						<select name="genre">
							<% while(rs.next()){ %>
							<option value="<%= rs.getString(1) %>"><%= rs.getString(1) %></option>
							<% } %>
						</select>
						<button class="w3-btn w3-dark-grey"><i class="fa fa-search" ></i></button>
					</form>
				</div>
			</div>
				
			</div>
		</center>
<%
		rs.close();
		stmt.close();
		conn.close();
    } catch (SQLException e) {
        System.out.println("커넥션 실패");
    } 
%>
	</body>
</html>