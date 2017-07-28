package vn.hkd.tour.controller.web;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class WebController {

    @GetMapping("/")
    public String index() {
        return "users/index";
    }

    @GetMapping("/error/loi-403")
    public String accessDenied() {
        return "layout/403";
    }

    @GetMapping("/dang-nhap")
    public String getLogin() {
        return "users/dangnhap";
    }

    @GetMapping("/dang-ky")
    public String getRegister() {
        return "users/dangky";
    }

    @GetMapping("/lien-he")
    public String getContact() {
        return "users/lienhe";
    }

     @GetMapping("/logout")
     public String logout(HttpServletRequest request, HttpServletResponse response) {
     	Authentication auth = SecurityContextHolder.getContext().getAuthentication();
     	if (auth != null) {
     		new SecurityContextLogoutHandler().logout(request, response, auth);
     	}
     	return "redirect:/";
     }
}
