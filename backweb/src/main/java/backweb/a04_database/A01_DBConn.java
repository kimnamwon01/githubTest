package backweb.a04_database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class A01_DBConn {
/*
# DB 연동 처리..
1. 연동을 위한 핵심
	1) 환경 설정
		jdbc드라이버 설정
		DB 서버 구동 중
	2) 핵심 속성
		- url
		- 계정
		- 비번
		- jdbc 드라이버 설정..
 * */
	// static final : 자바에서 상수로 객체 생성없이 바로 사용 가능한 상수
	private static final String URL="jdbc:oracle:thin:@localhost:1521:xe";
	private static final String USERNAME="java";
	private static final String PASSWORD="oracle";
	// 객체를 생성없이 객체들의 공통 메서드 선언 .static
	public static Connection con() throws SQLException, ClassNotFoundException {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		System.out.println("접속성공");
		return DriverManager.getConnection(URL, USERNAME, PASSWORD);
	}
	public static void close(AutoCloseable... resources) {
		for(AutoCloseable resource: resources) {
			if(resource != null) {
				try {
					resource.close();
				} catch (Exception e) {
					// TODO Auto-generated catch block
					System.out.println(resource.getClass().getSimpleName());
					System.out.println("닫기 실패");
				}
			}
		}
		System.out.println("자원해제처리.");
	}
	
	public static void main(String[] args) {
		try {
			close(con());
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
