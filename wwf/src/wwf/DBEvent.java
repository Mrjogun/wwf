package wwf;
import java.sql.*;

public class DBEvent{
	private String jdbc_driver = "com.mysql.jdbc.Driver";
	private String jdbc_url = "jdbc:mysql://localhost:3306/mydb?characterEncoding=utf8";
	private Connection conn;
	private Statement stmt;
	
	private void connect(){
		try{
			Class.forName(jdbc_driver);
			conn = DriverManager.getConnection(jdbc_url,"root","kgu123");
			stmt = conn.createStatement();
		}catch(Exception e){}
	}
	private void disconnect(){
		try{
			stmt.close();
			conn.close();
		}catch(Exception e){}
	}
	
}