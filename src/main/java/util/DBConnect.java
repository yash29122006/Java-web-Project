package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {

	private static final String URL = "jdbc:mysql://localhost:3306/IP_Eval_1";
	private static final String USER = "root";
	private static final String PASSWORD = "Ya@291206";

	public static Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(URL, USER, PASSWORD);
			System.out.println("DB is Connected");
		} catch (Exception e) {
				e.printStackTrace();
		}
		return con;
	}
}
