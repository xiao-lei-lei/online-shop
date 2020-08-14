package com.code2.demo.dao;

import java.util.List;

import com.code2.demo.entity.Cart;
import com.code2.demo.entity.Order;
import com.code2.demo.entity.Product;

public interface ProductDAO {
	
	public void saveProduct(Product theProduct);

	public List<Product> getProducts();

	public Product getProduct(int id);

	public void deleteProduct(int id);

	public void saveOrder(Order order, List<Cart> cart);

	public List<Order> getOrders();

	public Order deliverProduct(int id);

	public List<Product> getShoes(String categorizes);

}
