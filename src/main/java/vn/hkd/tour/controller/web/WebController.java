package vn.hkd.tour.controller.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import vn.hkd.tour.domain.User;
import vn.hkd.tour.repository.UserRepository;
import vn.hkd.tour.service.UserService;
import vn.hkd.tour.validator.UserValidator;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

@Controller
public class WebController {

    @Autowired
    private UserService userService;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    UserValidator userValidator;

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
    public String getRegister(Model model) {
        model.addAttribute("user", new User());
        return "users/dangky";
    }

    @PostMapping("/dang-ky")
    public String postRegister(@Valid User user, BindingResult result, RedirectAttributes redirect) {
        userValidator.validate(user, result);
        if (result.hasErrors()) {
            return "users/dangky";
        }
        userService.save(user);
        redirect.addFlashAttribute("success", "Saved User successfully!");
        return "redirect:/dang-nhap";
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
