package backweb.dbtest;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Test01 {
    public static void main(String[] args) {
        Connection conn = null;
        try {
            // JDBC 드라이버 로드
            Class.forName("oracle.jdbc.OracleDriver");
            
            // 데이터베이스 연결
            conn = DriverManager.getConnection(
                    "jdbc:oracle:thin:@localhost:1521:xe",
                    "java",
                    "oracle"
                    );
            System.out.println("연결 성공");
        } catch(ClassNotFoundException e) {
            System.err.println("JDBC 드라이버를 찾을 수 없습니다.");
            e.printStackTrace();
        } catch(SQLException e) {
            System.err.println("SQL 오류가 발생했습니다.");
            System.err.println("오류 코드: " + e.getErrorCode());
            System.err.println("SQL 상태: " + e.getSQLState());
            e.printStackTrace();
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                    System.out.println("연결 끊기");
                } catch (SQLException e) {
                    System.err.println("연결을 끊는 중 오류가 발생했습니다.");
                    e.printStackTrace();
                }
            }
        }
    }
}
