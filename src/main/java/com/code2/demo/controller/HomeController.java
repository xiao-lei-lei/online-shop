package com.code2.demo.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.code2.demo.entity.Cart;
import com.code2.demo.entity.Product;
import com.code2.demo.service.ProductService;

@Controller
public class HomeController {

	@Autowired
	private ProductService productService;

	@RequestMapping("/")
	public String showProduct(Model model,HttpSession session) {

		List<Product> product = productService.getProducts();
		
		if(session.getAttribute("cart")==null) {
			model.addAttribute("cartSize",0);
		}else {
			List<Cart> cart =(List<Cart>) session.getAttribute("cart");
			int quantity = 0;
			for(Cart cartProduct:cart) {
				quantity += cartProduct.getQuantity();
			}
			model.addAttribute("cartSize",quantity);
		}

		model.addAttribute("products", product);
		return "index";
	}
	
	@RequestMapping("/contact")
	public String contactUs() {
		return "contact";
	}
	
	@RequestMapping("/about")
	public String aboutUs() {
		return "about";
	}
}
