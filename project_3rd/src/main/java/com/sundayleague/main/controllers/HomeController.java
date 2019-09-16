package com.sundayleague.main.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

	@GetMapping("/")
	public String home(){
		return "index";
	}

	@GetMapping("/about")
	public void about() {
	}
	
	@GetMapping("/fixture")
	public void fixture() {
	}
	
	@GetMapping("/singlefixture")
	public void singlefixture() {
	}
	
	@GetMapping("/player")
	public void player() {
	}

	@GetMapping("/gallery")
	public void gallery() {
	}
	
	@GetMapping("/tickets")
	public void tickets() {
	}
	
	@GetMapping("/buytickets")
	public void buytickets() {
	}
	
	@GetMapping("/shop")
	public void shop() {
	}
	
	@GetMapping("/singleshop")
	public void singleshop() {
	}
	
	@GetMapping("/cart")
	public void cart() {
	}
	
	@GetMapping("/checkout")
	public void checkout() {
	}
	
	@GetMapping("/bloggrid")
	public void bloggrid() {
	}
	
	@GetMapping("/blogleft")
	public void blogleft() {
	}
	
	@GetMapping("/blogright")
	public void blogright() {
	}
	
	@GetMapping("/singleblog")
	public void singleblog() {
	}
	
	@GetMapping("/page404")
	public void page404() {
	}
	
	@GetMapping("/faq")
	public void faq() {
	}
	
	@GetMapping("/contact")
	public void contact() {
	}
	
}
