package com.kits.cse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class DBConnection {
	
	public static PreparedStatement getStatement(String query) {
		PreparedStatement pst=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/career_crafts","root","");
			pst=con.prepareStatement(query);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		return pst;
		
		
	}

}