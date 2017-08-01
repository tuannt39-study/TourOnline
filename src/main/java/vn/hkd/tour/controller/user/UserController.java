package vn.hkd.tour.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserController {

    @GetMapping("/du-lich-viet-nam")
    public String TourVietNam() {
        return "index";
    }

    @GetMapping("/du-lich-quoc-te")
    public String TourWorld() {
        return "index";
    }

    @GetMapping("/dat-tour")
    public String OutBound() {
        return "index";
    }
}
