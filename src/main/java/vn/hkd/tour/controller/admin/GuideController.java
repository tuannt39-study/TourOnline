package vn.hkd.tour.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class GuideController {

    @GetMapping("/admin/huong-dan-vien")
    public String index() {
        return "admin/hdv";
    }

}
