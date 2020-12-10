package dao;
import java.sql.*;
import DBUtil.ConnectionManager;
import pojo.LoginInfo;

public class Login {
	
	public static boolean processLogin(LoginInfo login) {
		boolean status = false;
		Connection con = null;
		
		try {
			con = ConnectionManager.getConnection();
			Statement st = con.createStatement();
			ResultSet rs= st.executeQuery("SELECT * FROM users WHERE username = '"+login.getUserName()+"' AND password = '"+login.getPassword()+"'");
			while(rs.next()) {
				status = true;
			}
			DBUtil.ConnectionManager.closeConnection(con);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return status;
	}
	
}
