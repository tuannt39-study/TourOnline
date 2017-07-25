package vn.hkd.tour.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

    @GetMapping("/")
    public String index() {
        return "users/index";
    }

    @GetMapping("/admin")
    public String admin() {
        return "admin/home";
    }

    @GetMapping("/403")
    public String accessDenied() {
        return "layout/403";
    }

    @GetMapping("/login")
    public String getLogin() {
        return "users/dangnhap";
    }

//     @GetMapping("/logout")
//     public String logout(HttpServletRequest request, HttpServletResponse response) {
//     	Authentication auth = SecurityContextHolder.getContext().getAuthentication();
//     	if (auth != null) {
//     		new SecurityContextLogoutHandler().logout(request, response, auth);
//     	}
//     	return "redirect:/";
//     }

}
