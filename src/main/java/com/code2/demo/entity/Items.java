package com.code2.demo.entity;

public class Items {

	private Product product;
	
	private int quantity;
	
	
	public Items() {
		// TODO Auto-generated constructor stub
	}


	public Items(Product product, int quantity) {
		super();
		this.product = product;
		this.quantity = quantity;
	}


	public Product getProduct() {
		return product;
	}


	public void setProduct(Product product) {
		this.product = product;
	}


	public int getQuantity() {
		return quantity;
	}


	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	

	
}
