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
		String sql = "select * from musicFest NATURAL join place order by fest_date desc";
		ResultSet rs = stmt.executeQuery(sql);

%>
<!-- top start -->
	<center>
		<div class="w3-top" >
			<div class="w3-dark-grey w3-xlarge w3-padding-xlarge" style="width:100%;hegiht:auto;max-width:1200px;margin:auto">
				<div class="w3-opennav w3-left" onclick="w3_open()"><i class="fa fa-bars"></i></div>
				<div class="w3-right w3-hover-text-grey">
					<a href="./search.jsp"><i class="fa fa-search" ></i></a>
				</div>
				<div class="w3-center"><a href="./index.jsp" style="text-decoration:none">WWF</a></div>
			</div>
		</div>
<!-- top end -->

<!-- main start -->
		<div class="w3-main w3-dark-grey w3-content w3-padding-xlarge" style="width:100%;max-width:1200px;margin-top:60px">
			<!-- 열려라 참깨! -->
			<div class="w3-accordion">
				<button onclick='accordion("문");' class="w3-btn w3-dark-grey" style="width:100%;max-width:1200px">
					<!-- 솰라솰라 -->
				</button>
				<div id="문" class="w3-accordion-content w3-container">
					<!-- 음하하하하하하하하 -->
				</div>
			</div>
			<!-- 닫혀라 참깨! -->
		</div>
	</center>
<!-- main end -->
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