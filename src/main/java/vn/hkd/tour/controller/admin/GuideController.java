package vn.hkd.tour.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class GuideController {

    @GetMapping("/admin/huong-dan-vien")
    public String hdv(Model model) {
        return "hdvAD";
    }

}
