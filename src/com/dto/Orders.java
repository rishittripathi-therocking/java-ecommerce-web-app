package com.dto;

import java.sql.Timestamp;

public class Orders {

	private int id, totalAmount;
	private User userId;
	private Timestamp orderDate;

	public Orders() {
		super();
	}

	public Orders(int id, User userId, int totalAmount, Timestamp orderDate) {
		super();
		this.id = id;
		this.totalAmount = totalAmount;
		this.userId = userId;
		this.orderDate = orderDate;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getTotalAmount() {
		return totalAmount;
	}

	public void setTotalAmount(int totalAmount) {
		this.totalAmount = totalAmount;
	}

	public User getuId() {
		return userId;
	}

	public void setuId(User uId) {
		this.userId = uId;
	}

	public Timestamp getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Timestamp orderDate) {
		this.orderDate = orderDate;
	}

	@Override
	public String toString() {
		return "Orders [id=" + id + ", totalAmount=" + totalAmount + ", userId=" + userId + ", orderDate=" + orderDate + "]";
	}

}
