package vn.hkd.tour.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ContactController {

    @GetMapping("/admin/lien-he")
    public String contact(Model model) {
        return "contactAD";
    }

}
