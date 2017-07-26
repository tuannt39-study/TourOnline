package vn.hkd.tour.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ContactController {

    @GetMapping("/admin/lien-he")
    public String index() {
        return "admin/contact";
    }

}
