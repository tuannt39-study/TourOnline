package vn.hkd.tour.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import vn.hkd.tour.domain.User;
import vn.hkd.tour.service.UserService;
import vn.hkd.tour.validator.UserValidator;

import javax.validation.Valid;
import java.util.List;

@Controller
public class AccountController {

    @Autowired
    private UserService userService;

    @Autowired
    UserValidator userValidator;

    @GetMapping("/admin/tai-khoan")
    public String account(Model model) {
        List<User> users = userService.findAll();
        model.addAttribute("users", users);
        return "accountAD";
    }

    @GetMapping("/admin/tai-khoan/{id}")
    public String show(@PathVariable int id, Model model) {
        User user = userService.findOne(id);
        if (user == null) {
            return "error404";
        } else {
            model.addAttribute("user", user);
            return "account_idAD";
        }
    }

    @GetMapping(value = "/admin/tai-khoan/add")
    public String add(Model model) {
        model.addAttribute("user", new User());
        return "account_editAD";
    }

    @GetMapping("/admin/tai-khoan/{id}/edit")
    public String edit(@PathVariable int id, Model model) {
        User user = userService.findOne(id);
        if (user == null) {
            return "error404";
        } else {
            model.addAttribute("user", user);
            return "account_editAD";
        }
    }

    @PostMapping("/admin/tai-khoan/save")
    public String save(@Valid User user, BindingResult result, @RequestParam("role") String role,
                       Model model, RedirectAttributes redirect) {
        userValidator.validate(user, result);
        if (result.hasErrors()) {
            return "account_editAD";
        }

        if (user.getId() == 0) {
            userService.create(user, role);
        } else {
            userService.update(user, role);
        }

        redirect.addFlashAttribute("success", "Lưu tài khoản " + user.getName() + " thành công!");
        return "redirect:/admin/tai-khoan";
    }

    @GetMapping("/admin/tai-khoan/{id}/delete")
    public String delete(@PathVariable int id, RedirectAttributes redirect) {
        User user = userService.findOne(id);
        if (user == null) {
            return "error404";
        } else {
            if (user.getId() == 1) {
                redirect.addFlashAttribute("error", "Không thể xóa tài khoản này!");
            } else {
                userService.delete(user);
                redirect.addFlashAttribute("success", "Xóa tài khoản " + user.getName() + " thành công!");
            }
            return "redirect:/admin/tai-khoan";
        }
    }

}