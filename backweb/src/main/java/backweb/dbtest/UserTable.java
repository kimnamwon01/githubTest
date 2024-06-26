package backweb.dbtest;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UserTable {
	public static void main(String[] args) {
		Connection conn = null;
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			
			conn = DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:xe",
					"java",
					"oracle"
					);
			String sql = "" + 
				"INSERT INTO users (userid, username, userbirth, userpassword) "
						+ "VALUES (?, ?, ?, ?)";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,"wint@nave.com");
			pstmt.setString(2,"한겨울");
			pstmt.setString(3,"2000-10-10");
			pstmt.setString(4,"1111");
			
			int rows = pstmt.executeUpdate();
			System.out.println("저장된 행 수: " + rows);
			pstmt.close();
		 	} catch(ClassNotFoundException e) {
	            e.printStackTrace();
	        } catch(SQLException e) {
	            e.printStackTrace();
	        }
	        
		}
	}

