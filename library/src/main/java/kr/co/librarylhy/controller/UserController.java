package kr.co.librarylhy.controller;

import kr.co.librarylyh.domain.UserVO;
import kr.co.librarylyh.service.UserService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;
 
@Controller
@Log4j2
@RequestMapping("/library/*")
@AllArgsConstructor
public class UserController {
    private UserService service;

    
    
    @GetMapping("/home")
    public void home() {
    }
    
    @GetMapping({"/ReservationMain", "/list"}) 
    public void reservation() {
    	
    }
    
    @GetMapping({"/board/get", "/board/modify", "/board/register"})
    public void board() {
    	
    }
    
    @GetMapping({"/reservation/BookReservation", "/reservation/StudyReservation", "/reservation/RsCreate"})
    public void reservationInfo() {
    	
    }

    @GetMapping({"/agreementForm", "/login", "/join"})
    public void replace() {
        // http://localhost:80/library/join.jsp(login.jsp)
    }

    @PostMapping("/join")
    public String join(UserVO user, HttpServletResponse response) {
    	log.info("회원가입 : "+user);
    	service.join(user);
        if(user != null) {
            Cookie joinid = new Cookie("joinid", String.valueOf(user.getId()));
            joinid.setMaxAge(60*5);
            response.addCookie(joinid);
        }
        log.info("join Service 성공");
        return "redirect:/library/login";
    }

    @PostMapping("/login")
    public String login(String id, String pw , HttpServletRequest request, ModelAndView mv) throws Exception {
        HttpSession session = request.getSession();
        UserVO loginUser = service.login(id, pw);
        String msg = "로그인 실패";

        if(loginUser != null ) {
        	msg="로그인 성공";
            session.setAttribute("loginUser", loginUser.getId());
            session.setMaxInactiveInterval(60*30);
            mv.setViewName("redirect:/library/home");
        } else {
         session.setAttribute("msg", msg);
        mv.setViewName("redirect:/library/login");
        
        }
        return "redirect:/library/home";
    }

    
    @GetMapping("/modify")
    public void modifyForm(HttpSession session, ModelMap map) {
    	session.removeAttribute("msg");
    	String id = (String) session.getAttribute("loginUser");
    	
    	UserVO vo = service.get(id);
    	map.addAttribute("vo", vo);
    }
    
    @PostMapping("/modify")
    public String modify(UserVO vo) {
    	service.modify(vo);
    	return "redirect:/library/user/myPage";
    }
}
