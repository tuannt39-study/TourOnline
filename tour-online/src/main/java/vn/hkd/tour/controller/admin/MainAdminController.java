package vn.hkd.tour.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainAdminController {

    @GetMapping("/admin/trang-chu")
    public String index() {
        return "admin/home";
    }

}
