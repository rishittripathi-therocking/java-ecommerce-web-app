package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class OrderDetailsDao {

	public static boolean insertPurchasedProduct(int orderId, int itemId, int quantity) throws ClassNotFoundException, SQLException {
		Connection c = ConnectionUtility.getConnection();
		//System.out.println(orderId+" "+itemId+" "+quantity);
		PreparedStatement ps = c.prepareStatement("insert into order_details(order_id,product_id,quantity) values(?,?,?)");
		ps.setInt(1, orderId);
		ps.setInt(2, itemId);
		ps.setInt(3, quantity);
		int row = ps.executeUpdate();
		if (row != 0) {
			return true;
		}
		return false;	
	}

}
