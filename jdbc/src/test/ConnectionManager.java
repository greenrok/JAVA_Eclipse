package test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class ConnectionManager {
	
	public static Connection getConnection() {
		Connection con = null;
		String driver = "com.mysql.cj.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/test";	// jdbc는 DB 이름
		String id = "root";
		String pwd = "a0212";

		try {
			Class.forName(driver);
			try {
				con = DriverManager.getConnection(url, id, pwd);
				System.out.println("Connected...");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				System.out.println("Connection Failed!");
				e.printStackTrace();
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch blcok
			System.out.println("Connection Failed. Check Driver or URL");
			e.printStackTrace();
		}
		
		return con;
	} // getConnetion()
}
