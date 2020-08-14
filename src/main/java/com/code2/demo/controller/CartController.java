package com.code2.demo.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.code2.demo.entity.Cart;
import com.code2.demo.entity.Items;
import com.code2.demo.entity.Product;
import com.code2.demo.service.ProductService;

@Controller
public class CartController {

	@Autowired
	private ProductService productService;

	@GetMapping("/add")
	public String addCart(@ModelAttribute("productId") int id, HttpSession session) {
		
		if (session.getAttribute("cart") == null) {
			List<Cart> cart = new ArrayList<>();
			cart.add(new Cart(id, 1));
			session.setAttribute("cart", cart);
		} else {
			List<Cart> cart = (List<Cart>) session.getAttribute("cart");
			int index = isExit(id, cart);

			if (index == -1) {
				cart.add(new Cart(id, 1));
			} else {
				int quantity = cart.get(index).getQuantity();
				cart.get(index).setQuantity(quantity + 1);
			}
			session.setAttribute("cart", cart);
		}
		return "redirect:/";
	}

	@RequestMapping("/cart/list")

	public String cartList(Model model,HttpSession session) {
			List<Cart> cart = (List<Cart>)session.getAttribute("cart");
			
			List<Items> items = new ArrayList<>(); 
		
		if(cart!=null) {
			
			for(Cart carts: cart) {
			Product product = productService.getProduct(carts.getProductId());
			items.add(new Items(product,carts.getQuantity()));
			
			}
			
		}
		model.addAttribute("cartProduct", items);

		return "cart-list";
	}

	private int isExit(int id, List<Cart> cart) {
		for (int i = 0; i < cart.size(); i++) {
			if (cart.get(i).getProductId() == id) {
				return i;
			}
		}
		return -1;
	}
	
	@GetMapping("/detail")
	public String productDetail(@ModelAttribute("productId") int id, HttpSession session,Model model) {
		Product theProduct = productService.getProduct(id);
		model.addAttribute("myProduct",theProduct);
		
		return "detail";
	}


}
