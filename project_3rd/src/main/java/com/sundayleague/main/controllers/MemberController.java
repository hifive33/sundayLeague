package com.sundayleague.main.controllers;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.sundayleague.main.dao.MemberRepository;
import com.sundayleague.main.dto.ContactDTO;
import com.sundayleague.main.dto.PlayerDTO;
import com.sundayleague.main.util.FileService;


@Controller
public class MemberController {
	
	@Autowired
	MemberRepository repo;
	
	final String uploadPath = "/uploadfile/mypic";
	
	@GetMapping("/login")
	public void login() {
	}

	@PostMapping("/login")
	public String loginProcess(PlayerDTO player, HttpSession session) {
		player = repo.login(player);
		if(player ==null){
			return "/login";
		}else if(player.getPlayer_id().equals("admin")) {
		
			return "redirect:/adminManagePlayer";
		
		}else{
			session.setAttribute("loginId", player.getPlayer_id());
			session.setAttribute("team_name", player.getTeam_name());
			session.setAttribute("authority", player.getAuthority());
			return "redirect:/";
		}
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		
		return "redirect:/";
	}
	
	@GetMapping("/registration")
	public void registration() {
	}

	@PostMapping("/registration")
	public String registrationProcess(PlayerDTO player, MultipartFile mypicUpload, HttpSession session){
		int result = repo.registration(player);
		if (mypicUpload != null)
			FileService.saveOriginalFile(mypicUpload, uploadPath, player.getPlayer_id());
		return result == 1 ? "redirect:/login" : null;
	}
	
	@GetMapping("/myaccount")
	public void myaccount(HttpSession session, Model model) {
		String loginId = (String)session.getAttribute("loginId");
		PlayerDTO player = repo.selectProfile(loginId);
//		System.out.println(player);
		model.addAttribute("player",player );		
	}
	
	@GetMapping("/updateprofile")
	public String updateProfile(HttpSession session, Model model, MultipartFile mypicUpload) {
		String loginId = (String)session.getAttribute("loginId");
		PlayerDTO player = repo.selectProfile(loginId);
//		System.out.println(player);
		model.addAttribute("player",player );
		File savedFile = new File(uploadPath, player.getPlayer_id());
		if(savedFile.exists()) {
			model.addAttribute("result", true);
		} else {
			model.addAttribute("result", false);
		}
		return "updateprofile";
	
	}
	
	
	
	@PostMapping("/updateprofile")
	public String updateProfile(HttpSession session, PlayerDTO player, MultipartFile mypicUpload) {
		//int result = 0;
		//String loginId = (String)session.getAttribute("loginId");
		//player.setPlayer_id(loginId);
		//result = repo.updateProfile(player);
		FileService.saveOriginalFile(mypicUpload, uploadPath, player.getPlayer_id());
		repo.updateProfile(player);
		return "redirect:/myaccount";
	}
	
	@GetMapping("/forgot")
	public void forgot() {
		
	}
	
	@GetMapping("/forgotid")
	public void forgotId() {
		
	}
	
	@GetMapping("/forgotpw")
	public void forgotPw() {
		
	}
	@PostMapping("/forgotid")
	@ResponseBody
	public String forgotid(PlayerDTO player) {
		String id  = null;
		id = repo.selectId(player);
		
		return id;
	}
	@PostMapping("/forgotpw")
	@ResponseBody
	public String forgotPw(PlayerDTO player) {
		String pw  = null;
		pw = repo.selectPw(player);
		
		return pw;
	}
	
	@PostMapping("/contact")
	public String contact(ContactDTO contact) {
		if(contact.getContact_phone()==null) {
			contact.setContact_phone("QnA문의");
			repo.insertContact(contact);
			return "redirect:/faq";
		}
		repo.insertContact(contact);
		return "redirect:/contact";
		
	}
	
	@GetMapping("/checkId")
	@ResponseBody
	public String checkId(String player_id){
		String result = repo.checkId(player_id);
		
		return result.equals("1") ? "success" : "failure";
	}

	@RequestMapping(value = "/ajaxFileUpload", method = RequestMethod.POST)
	@ResponseBody
	public String ajaxFileUpload(MultipartFile[] upload){
		
		
		for(MultipartFile multipartFile : upload){
			String fileName = multipartFile.getOriginalFilename();
			File saveFile = new File(uploadPath,fileName);
			try {
				multipartFile.transferTo(saveFile);
				repo.saveFile(uploadPath);
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return "ajaxAdvanced";
	}
}
