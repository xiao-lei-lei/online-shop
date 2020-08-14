package com.code2.demo.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.code2.demo.entity.Cart;
import com.code2.demo.entity.Order;
import com.code2.demo.entity.Product;
import com.code2.demo.service.ProductService;

@Controller
@RequestMapping("/process")
public class OrderController {

	@Autowired
	private ProductService productService;
	
	@RequestMapping("/order")
	public String showOrder(Principal principal, HttpSession session) {
		
		List<Cart> cart = (List<Cart>)session.getAttribute("cart");
				
			Order order = new Order(principal.getName());
			
			productService.saveOrder(order,cart);
				
	return "index";
}

	@RequestMapping("/list")
	public String showList(Model model) {
		List<Order> order = productService.getOrders();
		
		model.addAttribute("order", order);
		return "order-list";
	}
	@RequestMapping("/deliver")
	public String deliverproduct(@RequestParam("orderId")int id,Model model) {
		Order order = productService.deliverProduct(id);
		return "redirect:list";
	}
}