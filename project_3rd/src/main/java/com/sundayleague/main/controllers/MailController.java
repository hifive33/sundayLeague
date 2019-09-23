package com.sundayleague.main.controllers;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sundayleague.main.dao.AdminRepository;
import com.sundayleague.main.dto.MailDTO;

@Controller
public class MailController {

	@Autowired
	private JavaMailSender mailSender;
	
	@Autowired
	AdminRepository repo;
	
	@RequestMapping(value = "/mail")
	@ResponseBody
	public String mailSending(MailDTO mail) {
		String setfrom = "sundayleaguecontact@gmail.com";
		String tomail = repo.findMail(mail.getNo());
		String title = "[SundayLeague] 문의하신 내용의 답변입니다.";
		String content = mail.getContent();
		
		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(message,true,"UTF-8");
			messageHelper.setFrom(setfrom);
			messageHelper.setTo(tomail);
			messageHelper.setSubject(title);
			messageHelper.setText(content);
			
			mailSender.send(message);
			repo.updateMail(mail.getNo());
		}catch(Exception e) {
			System.out.println(e);
		}
		return mail.getNo();
	}
}
