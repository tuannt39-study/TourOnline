package vn.hkd.tour.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AccountController {

    @GetMapping("/admin/tai-khoan")
    public String account(Model model) {
        return "accountAD";
    }

}