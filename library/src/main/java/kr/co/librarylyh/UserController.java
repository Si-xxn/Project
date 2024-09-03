package kr.co.librarylyh;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.librarylyh.domain.UserVO;
import kr.co.librarylyh.service.UserService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j2;

@Controller
@Log4j2
@RequestMapping("/library/*")
@AllArgsConstructor
public class UserController {
	
		private UserService service;
		
		@GetMapping({"/home"})
		public void mainPage() {
			
		}
		
		@GetMapping({"/login", "/register"})
		public void userPage() {
			
		}
		
		@PostMapping("/login")
		public String login(UserVO user, RedirectAttributes rttr) {
			log.info("login : " + user);
			
			service.login(user);
			
			rttr.addAttribute("result", user.getName());
			
			return "redirect:/users/home";
		}
		
		@PostMapping("/register")
		public String register(UserVO user) {
			service.register(user);
			log.info("회원정보 : " + user.getU_id());
										//WJ5SRX6YML
			return "redirect:/users/login";
		}
		
		@GetMapping({"/get", "/modify"}) 
		// 이중화 작업
		public void get(@RequestParam("u_id") String u_id, Model model) {
			log.info("UserController.get | modify 메서드 실행");
			model.addAttribute("board", service.get(u_id));
			// 서비스 계층에 get메서드에 u_id 값을 넣어 주면 SQL 처리후 객체 나옴
		}
		
		@PostMapping("/modify") 
		public String modify(UserVO user, RedirectAttributes rttr) {
			log.info("UserController.modify 메서드 실행");
			
			if(service.modify(user)) {
				rttr.addFlashAttribute("result", "success"); //수정 성공 시 success 메시지 보냄
			} else {
				rttr.addFlashAttribute("result", "fail"); // 수정 실패 시 fail 메시지 보냄
			}
			return "redirect:/users/home"; 
		}
		
		@PostMapping("/remove") 
		public String remove(@RequestParam("u_id") String u_id, RedirectAttributes rttr) { // 번호를 받아 delete 쿼리 실행
			log.info("UserController.remove 메서드 실행");
			
			if(service.remove(u_id)) {
				rttr.addFlashAttribute("result", "success"); //수정 성공 시 success 메시지 보냄
			} else {
				rttr.addFlashAttribute("result", "fail"); // 수정 실패 시 fail 메시지 보냄
			}
			
			return "redirect:/library";
		}
}
