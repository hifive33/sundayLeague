package com.sundayleague.main.controllers;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

	final String path = "/uploadfile/gallery";

	@GetMapping("/")
	public String home(){
		return "index";
	}

	@GetMapping("/about")
	public void about() {
	}

	@GetMapping("/singlefixture")
	public void singlefixture() {
	}
	
	@GetMapping("/player")
	public void player() {
	}

	@GetMapping("/gallery")
	public void gallery(Model model) {
		File dirFile=new File(path);
		File []fileList=dirFile.listFiles();
		Map<String, List<String>> map = new TreeMap<>();
		for(File tempFile : fileList) {
			if(tempFile.isFile()) {
				String fileName=tempFile.getName();
				String label = fileName.split("-")[0];
				if (map.get(label) != null){
					map.get(label).add(fileName);
				} else{
					List<String> list = new ArrayList<>();
					list.add(fileName);
					map.put(label, list);
				}
			}
		}
		// 확인용 출력
//		System.out.println(map);
		model.addAttribute("galleryMap", map);
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
