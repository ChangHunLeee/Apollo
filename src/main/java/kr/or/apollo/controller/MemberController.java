package kr.or.apollo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.View;

import kr.or.apollo.vo.MemberDTO;

@Controller
public class MemberController {

	public View midCheck(String s1) {
		
		return null;
	}
	
	public View apollokeyCheck(String s2) {
		
		return null;
	}
	
	public String memberInsert(MemberDTO memberdto, Model model) {
		
		return null;
	}
	
	@RequestMapping("index.htm")
	public String login(MemberDTO memberdto, Model model) {
		System.out.println("asd");
		
		
		
		return "home.login";
	}
	
	public String createApollokey(String s1, String s2, Model model) {
		
		return null;
		}
	
	public String changeProfile(MemberDTO memberdto, Model model) {
		
		return null;
	}
	
	public String showMember(String s1, Model model) {
		return null;
	
	}
}