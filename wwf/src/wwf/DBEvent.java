package wwf;
import java.sql.*;
import java.util.ArrayList;

import wwf.FestivalBean;

public class DBEvent implements FestivalDAO{
	private String jdbc_driver = "com.mysql.jdbc.Driver";
	private String jdbc_url = "jdbc:mysql://localhost:3306/wwf?characterEncoding=utf8";
	private Connection conn;
	private Statement stmt;
	
	private void connect(){
		try{
			Class.forName(jdbc_driver);
			conn = DriverManager.getConnection(jdbc_url,"root","1q2w3e4r!");
			stmt = conn.createStatement();
			System.out.println("연결됨");
		}catch(Exception e){}
	}
	private void disconnect(){
		try{
			stmt.close();
			conn.close();
		}catch(Exception e){}
	}

	public ArrayList<FestivalBean> getAllFest(){
	      String sql = "select fest_id, fest_name, fest_date, fest_term, ent_url, des_url, place_id from musicFest";
	      ArrayList<FestivalBean> list = new ArrayList<FestivalBean>();
	      try{
	         connect();
	         ResultSet rs=stmt.executeQuery(sql);
	         while(rs.next()){
	        	 FestivalBean festival = new FestivalBean();
	        	 festival.setId(rs.getInt("fest_id"));
	        	 festival.setName(rs.getString("fest_name"));
	        	 festival.setDate(rs.getString("fest_date"));
	        	 festival.setTerm(rs.getInt("fest_term"));
	        	 festival.setEnt_url(rs.getString("ent_url"));
	        	 festival.setDes_url(rs.getString("des_url"));
	        	 festival.setPlace_id(rs.getInt("place_id"));
	        	 list.add(festival);
	         }
	         rs.close();
	         disconnect();
	      } catch(Exception e){}
	      return list;
	   }
	   
	public FestivalBean getFest(String id){
		String sql = "select fest_id, fest_name, fest_date, fest_term, ent_url, des_url, place_id from musicFest where fest_id=" + id;
		FestivalBean festival = new FestivalBean();
	      try{
	         connect();
	         ResultSet rs = stmt.executeQuery(sql);
	         rs.next();
        	 festival.setId(rs.getInt("fest_id"));
        	 festival.setName(rs.getString("fest_name"));
        	 festival.setDate(rs.getString("fest_date"));
        	 festival.setTerm(rs.getInt("fest_term"));
        	 festival.setEnt_url(rs.getString("ent_url"));
        	 festival.setDes_url(rs.getString("des_url"));
        	 festival.setPlace_id(rs.getInt("place_id"));
	         rs.close();
	         disconnect();
	      } catch(Exception e){}
	      return festival;
	   }
}