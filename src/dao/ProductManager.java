package dao;
import java.util.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import DBUtil.ConnectionManager;
import pojo.Product;

public class ProductManager {
	
	public static List<Product> getAllProducts() {
		List<Product> products= new ArrayList<Product>();
		try{
			Connection conn = ConnectionManager.getConnection();
			Statement st = conn.createStatement();
			String query = "SELECT * FROM products";
			ResultSet rs = st.executeQuery(query);
			
			while(rs.next()) {
				Product product = new Product(rs.getInt("product_id"), rs.getString("product_name"),rs.getInt("product_price"),rs.getString("product_category"));
				products.add(product);
			}
			
			ConnectionManager.closeConnection(conn);
		}catch(Exception E){
			E.printStackTrace();
		}
		return products;
	};
	
	public static Product getProductById(String product_id) {
		Product prod = null;
		try{
			Connection conn = ConnectionManager.getConnection();
			PreparedStatement ps = conn.prepareStatement("SELECT * FROM products WHERE product_id = ?");
			ps.setString(1, product_id);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				prod = new Product(rs.getInt("product_id"), rs.getString("product_name"),rs.getInt("product_price"),rs.getString("product_category"));
			}
			ConnectionManager.closeConnection(conn);
			
		}catch(Exception E){
			E.printStackTrace();
		}
		
		return prod;
	}
	
	public static List<Product> getProductByName(String product) {
		List<Product> products= new ArrayList<Product>();
		try{
			Connection conn = ConnectionManager.getConnection();
			PreparedStatement ps = conn.prepareStatement("SELECT * FROM products WHERE product_name = ?");
			ps.setString(1, product);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Product prod = new Product(rs.getInt("product_id"), rs.getString("product_name"),rs.getInt("product_price"),rs.getString("product_category"));
				products.add(prod);
			}
			ConnectionManager.closeConnection(conn);
			
		}catch(Exception E){
			E.printStackTrace();
		}
		
		return products;
	}
	
	public static int addProduct(Product product) {
		int status = 0;
		
		try { 
			Connection conn = ConnectionManager.getConnection();
			PreparedStatement ps = conn.prepareStatement("INSERT INTO products VALUES(?,?,?,?)" );
			ps.setInt(1, product.getProductId());
			ps.setString(2, product.getProductName());
			ps.setInt(3, product.getProductPrice());
			ps.setString(4, product.getProductCategory());
			status = ps.executeUpdate();
			ConnectionManager.closeConnection(conn);
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return status;	
	}
	
	public static int updateProduct(Product product) {
		int status = 0;
		try {
			Connection conn = ConnectionManager.getConnection(); 
			PreparedStatement ps = conn.prepareStatement("UPDATE  products SET product_name=?, product_price=?, product_category =? WHERE product_id = ?" );
			ps.setString(1, product.getProductName());
			ps.setInt(2, product.getProductPrice());
			ps.setString(3, product.getProductCategory());
			ps.setInt(4, product.getProductId());
			status = ps.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return status;
	}
	
	public static int deleteProduct(String product_id) {
		int status = 0;
		
		try {
			Connection conn = ConnectionManager.getConnection();
			PreparedStatement ps = conn.prepareStatement("DELETE FROM products WHERE product_id = (?)" );
			ps.setString(1, product_id);
			status = ps.executeUpdate();
			ConnectionManager.closeConnection(conn);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return status;
	}
}
