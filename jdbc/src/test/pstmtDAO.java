package test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class pstmtDAO {
	public boolean insertToy(String name, String manufacturing, int price) throws SQLException {
		boolean flag = false;

		String sql = "insert into toys (name, manufacturing, price) values (?, ?, ?)";

		Connection con = ConnectionManager.getConnection();
		PreparedStatement pstmt = con.prepareStatement(sql);

		pstmt.setString(1, name); // 첫 번째 물음표에 name 입력
		pstmt.setString(2, manufacturing); // 두 번째 물음표에 manufacturing 입력
		pstmt.setInt(3, price); // 세 번째 물음표에 price 입력

		int affectedCount = pstmt.executeUpdate();

		if (affectedCount > 0) {
			flag = true;
		}
 
		pstmt.close();
		con.close();

		return flag;
	}

	public void selectTable(String tbName) throws SQLException {
		String sql = "select * from " + tbName;

		Connection conn = ConnectionManager.getConnection();
		PreparedStatement pstmt1 = conn.prepareStatement(sql);
		ResultSet rs = pstmt1.executeQuery();

		int no = 0;
		String name = "";
		String manufacturing = "";
		int price = 0;

		while (rs.next()) {
			no = rs.getInt(1);
			name = rs.getString(2);
			manufacturing = rs.getString(3);
			price = rs.getInt(4);

			System.out.println("No : " + no + " / " + "name : " + name + " / " + "manufacturing : " + manufacturing
					+ " / " + "price : " + price);

			
		}
		pstmt1.close();
		conn.close();
	}
}
