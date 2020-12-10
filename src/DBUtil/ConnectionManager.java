package DBUtil;
import java.sql.*;

public class ConnectionManager {
	
	public static Connection getConnection() {
		Connection con = null;

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pms","root","password");	
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return con;
	}
	
	public static void closeConnection(Connection con) {
		try {
			con.close();
		}catch(SQLException e){
			e.printStackTrace();
		}
	}
	
	

}
