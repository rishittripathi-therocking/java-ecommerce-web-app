package com.dto;

public class OrderDetails {

	private int id, quantity;
	private Orders orderId;
	private Product productId;

	public OrderDetails() {
		super();
	}

	public OrderDetails(int id, Orders orderId, Product productId, int quantity) {
		super();
		this.id = id;
		this.quantity = quantity;
		this.orderId = orderId;
		this.productId = productId;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public Orders getOrderId() {
		return orderId;
	}

	public void setOrderId(Orders orderId) {
		this.orderId = orderId;
	}

	public Product getProductId() {
		return productId;
	}

	public void setProductId(Product productId) {
		this.productId = productId;
	}

	@Override
	public String toString() {
		return "OrderDetails [id=" + id + ", quantity=" + quantity + ", orderId=" + orderId + ", productId=" + productId
				+ "]";
	}

}
