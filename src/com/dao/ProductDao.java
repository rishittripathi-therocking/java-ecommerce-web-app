package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dto.Product;

public class ProductDao {

	public static List<String> getAllCategories() throws ClassNotFoundException, SQLException {
		Connection c = ConnectionUtility.getConnection();
		PreparedStatement ps = c.prepareStatement("select distinct(category) from product");
		ResultSet rs = ps.executeQuery();
		List<String> pList = new ArrayList<String>();
		while (rs.next()) {
			pList.add(rs.getString(1));
		}
		return pList;
	}

	public static List<Product> getAllItems() throws ClassNotFoundException, SQLException {
		Connection c = ConnectionUtility.getConnection();
		PreparedStatement ps = c.prepareStatement("select * from product");
		ResultSet rs = ps.executeQuery();
		List<Product> pdList = new ArrayList<Product>();
		while (rs.next()) {
			Product p = new Product(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getString(5));
			pdList.add(p);
		}
		return pdList;

	}

	public static List<Product> getProductsWithCategory(String category) throws ClassNotFoundException, SQLException {
		Connection c = ConnectionUtility.getConnection();
		PreparedStatement ps = c.prepareStatement("select * from product where category=?");
		ps.setString(1, category);
		ResultSet rs = ps.executeQuery();
		List<Product> pdList = new ArrayList<Product>();
		while (rs.next()) {
			Product p = new Product(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getString(5));
			pdList.add(p);
		}
		return pdList;
	}

	public static Product getProductWithId(int id) throws ClassNotFoundException, SQLException {
		Connection c = ConnectionUtility.getConnection();
		PreparedStatement ps = c.prepareStatement("select * from product where id=?");
		ps.setInt(1, id);
		ResultSet rs = ps.executeQuery();
		Product p = null;
		while (rs.next()) {
			p = new Product(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getString(5));
		}
		return p;
	}

}
