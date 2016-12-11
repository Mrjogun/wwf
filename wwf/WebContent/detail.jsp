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
				<div class="w3-opennav w3-left" onclick="w3_open()">
					<a href="./menu.html"><i class="fa fa-bars"></i></a>
				</div>
				<div class="w3-right w3-hover-text-grey">
					<a href="./index.jsp"><i class="fa fa-home" ></i></a>
				</div>
				<div class="w3-center">DETAIL</div>
			</div>
		</div>
<!-- top end -->

		<div class="w3-main w3-dark-grey w3-content w3-padding-xlarge" style="width:100%;max-width:1200px;margin-top:60px">
<%
		while(rs.next()){
%>
			<div class="w3-row-padding w3-padding-16 w3-center">
    			<div class="w3-half" style="width:50% ">
    				<a href="./detail_view.jsp?fest_id=<%= rs.getInt("fest_id") %>" style="text-decoration:none">
      				<img src="img/fest_img/fest_img_<%= rs.getInt("fest_id") %>.jpg" style="width:100%;hegiht:auto">
      				<p><%= rs.getString("fest_name") %></p>
      				</a>
    			</div>
    			<% rs.next();%>
    			<div class="w3-half" style="width:50%">
    				<a href="./detail_view.jsp?fest_id=<%= rs.getInt("fest_id") %>" style="text-decoration:none">
      				<img src="img/fest_img/fest_img_<%= rs.getInt("fest_id") %>.jpg" style="width:100%;hegiht:auto">
      				<p><%= rs.getString("fest_name") %></p>
      				</a>
    			</div>
  			</div>
<%
		}
		rs.close();
		stmt.close();
		conn.close();
    } catch (SQLException e) {
        System.out.println("커넥션 실패 뭔데");
    } 
%>
			</div>	
		</center>
	</body>
</html>