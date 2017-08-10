package vn.hkd.tour.controller.user;

import vn.hkd.tour.domain.User;
import vn.hkd.tour.service.UserService;
import vn.hkd.tour.validator.UserValidator;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;
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

@Controller
public class WebController {

    @Autowired
    UserService userService;

    @Autowired
    UserValidator userValidator;

    @GetMapping("/")
    public String index(Model model) {
        return "homeUS";
    }

    @GetMapping("/dang-nhap")
    public String login(Model model) {
        return "dangnhapUS";
    }

    @GetMapping("/dang-ky")
    public String getRegister(Model model) {
        model.addAttribute("user", new User());
        return "dangkyUS";
    }

    @PostMapping("/dang-ky")
    public String postRegister(@Valid User user, BindingResult result,
                               RedirectAttributes redirect) {
        userValidator.validate(user, result);
        if (result.hasErrors()) {
            return "dangkyUS";
        }
        userService.create(user, "member");
        redirect.addFlashAttribute("success", "Đăng ký thành công");
        return "redirect:/dang-nhap";
    }

    @GetMapping("/logout")
    public String logout(HttpServletRequest request, HttpServletResponse response, Model model) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null) {
            new SecurityContextLogoutHandler().logout(request, response, auth);
        }
        return "redirect:/";
    }

    @GetMapping("/lien-he")
    public String getContact(Model model) {
        return "lienheUS";
    }

    @GetMapping("/error/loi-403")
    public String accessDenied(Model model) {
        return "error403";
    }

    @GetMapping("/error/loi-404")
    public String notFound(Model model) {
        return "error404";
    }

}