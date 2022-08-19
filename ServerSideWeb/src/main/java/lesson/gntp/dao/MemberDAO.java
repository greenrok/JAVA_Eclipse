package lesson.gntp.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import lesson.gntp.util.ConnectionManager;

public class MemberDAO {
	
	public boolean selectMember(String id, String pwd) throws SQLException {
		boolean flag = false;
		
		Connection con = ConnectionManager.getConnection();
		String sql = "select std_no, total, email from gisa where std_no = ? and total = ?;";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, Integer.parseInt(id));
		pstmt.setInt(2, Integer.parseInt(pwd));
		ResultSet rs = pstmt.executeQuery();
		
		if (rs.next()) {
			flag = true;
		}
		
		ConnectionManager.closeConnection(rs, pstmt, con);
		
		return flag;
	}
}
