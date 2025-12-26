package jspTest1;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	public static void main(String[] args) {
		Connection conn = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/user", "root", "1234");
			System.out.println("success");
			
			
		}catch(Exception e) {
			System.out.print(e);
		}
	}

}
