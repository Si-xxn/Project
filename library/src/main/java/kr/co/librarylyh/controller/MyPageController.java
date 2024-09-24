package kr.co.librarylyh.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import kr.co.librarylyh.domain.UserVO;
import kr.co.librarylyh.service.UserService;
import lombok.extern.log4j.Log4j2;

@SessionAttributes({"user"})
@RequestMapping("/library/myPage")
@Controller
@Log4j2
public class MyPageController {
	
	private UserService service;
	
	
	@GetMapping("/updateForm")
	public String updateForm() {
		return "/library/myPage/updateForm";
	}
	
	@PostMapping("/updateForm")
	public String modifyMember(@ModelAttribute UserVO user ) {
		service.updateUser(user);
	    return "/library/myPage";
	}
	
	@GetMapping("/changePwForm")
	public String checkPwForm() {
		return "library/myPage/changePw";  
	}
	
	

	

	
}
