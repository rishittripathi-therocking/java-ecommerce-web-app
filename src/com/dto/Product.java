package com.dto;

public class Product {
	private int id, price;
	private String name, image_url, category;

	public Product() {
		super();
	}

	public Product(int id, String name, int price, String image_url, String category) {
		super();
		this.id = id;
		this.price = price;
		this.name = name;
		this.image_url = image_url;
		this.category = category;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getImage_url() {
		return image_url;
	}

	public void setImage_url(String image_url) {
		this.image_url = image_url;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	@Override
	public String toString() {
		return "Product [id=" + id + ", price=" + price + ", name=" + name + ", image_url=" + image_url + ", category="
				+ category + "]";
	}

}
