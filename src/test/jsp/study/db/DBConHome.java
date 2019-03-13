package test.jsp.study.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConHome {
	private static final String URL = "jdbc:oracle:thin:@localhost:1521:xe";
	private static final String USER = "OSFU";
	private static final String PASSWORD = "k0908";
	private static final String DRIVER = "oracle.jdbc.OracleDriver";
	private static Connection con = null;
	
	private static void open() {
		try {
			Class.forName(DRIVER);
			con = DriverManager.getConnection(URL,USER,PASSWORD);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static Connection getCon() {
		if(con==null) {
			open();
		}
		return con;
	}
	
	public static void close() {
		if(con!=null) {
			try {
				if(!con.isClosed()) {
					con.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		con = null;
	}
}
