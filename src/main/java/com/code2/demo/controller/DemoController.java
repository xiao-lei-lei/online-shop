package com.code2.demo.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.code2.demo.entity.Product;
import com.code2.demo.service.ProductService;

@Controller
@RequestMapping("/product")
public class DemoController {
	
	@Autowired
	private ProductService productService;
	
	@GetMapping("/addProduct")
	public String showAddForm(Model model) {
		model.addAttribute("myProduct", new Product());
		return "add-form";
	}
	
	@PostMapping("/addProduct")
	public String showProductForm(@ModelAttribute("myProduct") Product theProduct, HttpServletRequest request){
		
		productService.saveProduct(theProduct);
		
		MultipartFile file = theProduct.getFile();
		if(!file.isEmpty()) {
			String realPath = request.getSession().getServletContext().getRealPath("/resources/images/");
			String abstractPath = "D:\\own-project\\onlineshop\\src\\main\\webapp\\resources\\images\\";
			System.out.println("REAL_PATH:"+realPath);
			File dir = new File(realPath);
			if(!dir.exists()) {
				dir.mkdirs();
			}
	
		
		try {
			
			file.transferTo(new File(realPath+theProduct.getId()+".jpg"));
			file.transferTo(new File(abstractPath+theProduct.getId()+".jpg"));
		} catch (IllegalStateException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
		return "redirect:list";
	}
	
	
	@RequestMapping("/list")
	public String showList(Model model) {
		List<Product> product = productService.getProducts();
		
		model.addAttribute("products", product);
		return "product-form";
	}
	
	@GetMapping("/shoes")
	public String shoeForm(@RequestParam("productCate")String categorizes,Model model) {
		List<Product> product = productService.getProduct(categorizes);
		model.addAttribute("products",product);
		return "shoe-form";
	}
	
	@RequestMapping("/showUpdateForm")
	public String showUpdateForm(@RequestParam("productId")int id,Model model) {
		
		Product theProduct = productService.getProduct(id);
		model.addAttribute("myProduct",theProduct);
		return "add-form";
	}
	
	@RequestMapping("deleteProduct")
	public String showDelete(@RequestParam("productId")int id) {
		productService.deleteProduct(id);
		return "redirect:list";
	}
	
}
