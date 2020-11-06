package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.dto.User;

public class UserDao {

	public static boolean checkUserExistsOrNot(String email) throws ClassNotFoundException, SQLException {
		Connection c = ConnectionUtility.getConnection();
		PreparedStatement ps = c.prepareStatement("select * from user where email=?");
		ps.setString(1, email);
		ResultSet rs = ps.executeQuery();
		if (rs.next()) {
			return true;
		}
		return false;
	}

	public static boolean insertRecords(User u) throws ClassNotFoundException, SQLException {
		Connection c = ConnectionUtility.getConnection();
		PreparedStatement ps = c.prepareStatement("insert into user(name,email,password) values(?,?,?)");
		ps.setString(1, u.getName());
		ps.setString(2, u.getEmail());
		ps.setString(3, u.getPassword());
		int row = ps.executeUpdate();

		if (row != 0) {
			return true;
		}
		return false;
	}

	public static User getUserWithEmail(String enteredEmail) throws ClassNotFoundException, SQLException {
		Connection c = ConnectionUtility.getConnection();
		PreparedStatement ps = c.prepareStatement("select * from user where email=?");
		ps.setString(1, enteredEmail);
		ResultSet rs= ps.executeQuery();
		if(rs.next()){
			User u = new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4));
			return u;
		}
		return null;
	}

	
	
}