package com.code2.demo.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.code2.demo.dao.ProductDAO;
import com.code2.demo.entity.Cart;
import com.code2.demo.entity.Order;
import com.code2.demo.entity.Product;

@Service
public class ProductServiceImp implements ProductService {

	@Autowired
	private ProductDAO productDAO;
	
	@Override
	@Transactional
	public void saveProduct(Product theProduct) {
		// TODO Auto-generated method stub
		productDAO.saveProduct(theProduct);
	}

	@Override
	@Transactional
	public List<Product> getProducts() {
		// TODO Auto-generated method stub
		return productDAO.getProducts();
	}

	@Override
	@Transactional
	public Product getProduct(int id) {
		// TODO Auto-generated method stub
		return productDAO.getProduct(id);
	}

	@Override
	@Transactional
	public void deleteProduct(int id) {
		// TODO Auto-generated method stub
		productDAO.deleteProduct(id);
	}

	@Override
	@Transactional
	public void saveOrder(Order order, List<Cart> cart) {
		// TODO Auto-generated method stub
		productDAO.saveOrder(order,cart);
	}

	@Override
	@Transactional
	public List<Order> getOrders() {
		// TODO Auto-generated method stub
		return productDAO.getOrders();
	}

	@Override
	@Transactional
	public Order deliverProduct(int id) {
		// TODO Auto-generated method stub
		
		return productDAO.deliverProduct(id);
	}

	@Override
	@Transactional
	public List<Product> getProduct(String categorizes) {
		// TODO Auto-generated method stub
		return productDAO.getShoes(categorizes);
	}

}
