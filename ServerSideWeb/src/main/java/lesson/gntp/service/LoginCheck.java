package lesson.gntp.service;

import java.sql.SQLException;

import lesson.gntp.dao.MemberDAO;

public class LoginCheck {
	//메소드 작성
	//id, password파라메터로 받아서 boolean값을 리턴하는 로직
	//메소드명은 isMember
	public boolean isMember(String id, String pwd) {
		boolean flag = false;
		
		// 단일 일떄는 이렇게 하지만 이걸로 될게 아니다
//		if (id.equals("user01") && pwd.equals("2345")) {
//			flag = true;
//		}
		
		MemberDAO dao = new MemberDAO();
		try {
			flag = dao.selectMember(id, pwd);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return flag;
	}
}
