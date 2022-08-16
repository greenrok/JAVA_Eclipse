package test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class ConnectionTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		try {
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/MySQL?serverTimezone=UTC", "root", "a0212");
			System.out.println("success");
			Statement stmt = conn.createStatement();
			
		} catch (SQLException ex) {
			System.out.println("SQLException" + ex);
		}
	}

}

// 위 코드는 java와 sql을 연결하는 코드
// 연동확인할 수 있다

// getConnection() 메서드를 통해 안에 들어가는 인자는 (url, id, password)이다
