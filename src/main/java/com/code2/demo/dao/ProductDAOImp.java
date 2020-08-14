package com.code2.demo.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.code2.demo.entity.Cart;
import com.code2.demo.entity.Order;
import com.code2.demo.entity.OrderItems;
import com.code2.demo.entity.Product;

@Repository
public class ProductDAOImp implements ProductDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void saveProduct(Product theProduct) {
		
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(theProduct);
	}

	@Override
	public List<Product> getProducts() {
		Session session = sessionFactory.getCurrentSession();
		
		Query<Product> query = session.createQuery("from Product", Product.class);
		
		List<Product> product = query.getResultList();
		
		return product;
	}

	@Override
	public Product getProduct(int id) {
		Session session = sessionFactory.getCurrentSession();
		Product product = session.get(Product.class, id);
		return product;
	}

	@Override
	public void deleteProduct(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("delete from Product where id=:productId");
		query.setParameter("productId", id);
		query.executeUpdate();
	}

	@Override
	public void saveOrder(Order order, List<Cart> cart) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		
		session.saveOrUpdate(order);

			for(Cart carts: cart) {
				Product product = session.get(Product.class, carts.getProductId());
				
				OrderItems orderItems = new OrderItems(carts.getQuantity());
				orderItems.setOrder(order);
				orderItems.setProduct(product);
				session.saveOrUpdate(orderItems);
			
		}
		
	}

	@Override
	public List<Order> getOrders() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Query<Order> query = session.createQuery("from Order", Order.class);
		
		List<Order> orders = query.getResultList();
		
		for(Order order: orders) {
			System.out.println(order.getOrderItems());
		}
		
		return orders;
	}

	@Override
	public Order deliverProduct(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Order order = session.get(Order.class, id);
		order.setStatus(true);
		session.saveOrUpdate(order);
		return order;
	}

	@Override
	public List<Product> getShoes(String categorizes) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		
		Query<Product> query = session.createQuery("from Product where categorizes=:productCate", Product.class);
		
		query.setParameter("productCate", categorizes);
		
		return query.list();
	}



}
