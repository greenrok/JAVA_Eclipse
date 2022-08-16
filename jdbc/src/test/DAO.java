package test;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

public class DAO {

	public boolean createTable() throws SQLException {
		boolean flag = false;

		String sql = "create table toys (";
		sql += "No int primary key not null AUTO_INCREMENT, ";
		sql += "name varchar(20) not null, ";
		sql += "manufacturing varchar(20) not null, ";
		sql += "price int not null ";
		sql += ")";
//		String sql = "delete from toys";
//		String sql = "insert into toys values (1, '과나', 'null', 100),";
//				sql += "(2, 'SK', 'gnom', 200)";

		Connection con = ConnectionManager.getConnection();
		Statement stmt = con.createStatement();
		int affectedCount = stmt.executeUpdate(sql);

		System.out.println("쿼리의 반환값은 : " + affectedCount);

		if (affectedCount == 0) {
			flag = true;
		}
		stmt.close();
		con.close();

		return flag;
	}
}