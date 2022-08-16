package test;

import java.sql.SQLException;

public class DAOMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		DAOMain main = new DAOMain();
//		main.MakeTable();
//		main.InsertTable("Iphone 13", "Apple", 720);
		main.selectTable("toys");
		
	}
	
	public void MakeTable() {
		DAO dao = new DAO();
		
		try {
			dao.createTable();
			System.out.println("테이블 생성 성공");
		} catch (SQLException e) {
			System.out.println("테이블 생성 실패");
			e.printStackTrace();
		}
	}
	
	public void InsertTable(String name, String manufacturing, int price) {
		pstmtDAO dao = new pstmtDAO();
		
		try {
			dao.insertToy(name, manufacturing, price);
			System.out.println("레코드 삽입 성공");
		} catch(SQLException e) {
			System.out.println("레코드 삽입 실패");
			e.printStackTrace();
		}
	}
	
	public void selectTable(String tbName) {
		pstmtDAO dao = new pstmtDAO();
		
		try {
			dao.selectTable(tbName);
			System.out.println("DB 출력 성공");
		} catch (SQLException e) {
			System.out.println("DB 출력 실패");
			e.printStackTrace();
		}
	}

}
