package vn.hkd.tour.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TourAdminController {

    @GetMapping("/admin/tour")
    public String index() {
        return "admin/tour";
    }

}
