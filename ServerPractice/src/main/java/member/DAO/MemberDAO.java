package member.DAO;

import java.sql.SQLException;
import java.util.ArrayList;

import member.VO.memberVO;
import member.util.ConnectionManager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class MemberDAO {
	
	public boolean selectMember(String id, String pwd, String name, String email) throws SQLException {
		boolean flag = false;
		
		Connection conn = ConnectionManager.getConnection();
		String sql = "insert into member (id, pwd, user_name, email) values (?, ?, ?, ?);";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, pwd);
		pstmt.setString(3, name);
		pstmt.setString(4, email);
		int count = pstmt.executeUpdate();
		
		if (count > 0 ) {
			flag = true;
		}
		
//		ConnectionManager.closeConnection(count, pstmt, conn);
		pstmt.close();
		conn.close();
		
		return flag;
		
		
	}
	
	public ArrayList<memberVO> showMemberList() throws SQLException {
		ArrayList<memberVO> list = new ArrayList<memberVO>();
		Connection conn = ConnectionManager.getConnection();
		String sql = "select * from member";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		memberVO vo = null;
		
		while (rs.next()) {
			vo = new memberVO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
			list.add(vo);
		}
		
		ConnectionManager.closeConnection(rs, pstmt, conn);
		
		return list;
	}
	
	public boolean deleteMember(String id) throws SQLException {
		boolean flag = false;
		Connection conn = ConnectionManager.getConnection();
		String sql = "delete from member where id=?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		int affectedRow = pstmt.executeUpdate();

		if (affectedRow > 0) {
			flag = true;
			System.out.println("삭제된 행 " + affectedRow + "개");
		}
		
		pstmt.close();
		conn.close();
		
		return flag;
	}
}
