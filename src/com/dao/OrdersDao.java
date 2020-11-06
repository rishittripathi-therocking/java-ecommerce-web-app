package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

public class OrdersDao {

	public static boolean generateOrder(int uId, int tAmount, Timestamp t) throws ClassNotFoundException, SQLException {
		Connection c = ConnectionUtility.getConnection();
		PreparedStatement ps = c.prepareStatement("insert into orders(user_id,total_amount,order_date) values(?,?,?)");
		ps.setInt(1, uId);
		ps.setInt(2, tAmount);
		ps.setTimestamp(3, t);
		int row = ps.executeUpdate();

		if (row != 0) {
			return true;
		}
		return false;
	}

	public static int getOrderId(int uId, Timestamp t) throws ClassNotFoundException, SQLException {
		Connection c = ConnectionUtility.getConnection();
		PreparedStatement ps = c.prepareStatement("select id from orders where user_id = ? and order_date= ?");
		ps.setInt(1, uId);
		ps.setTimestamp(2, t);
		ResultSet rs = ps.executeQuery();
		if (rs.next()) {
			return rs.getInt(1);
		}
		return 0;

	}

}
