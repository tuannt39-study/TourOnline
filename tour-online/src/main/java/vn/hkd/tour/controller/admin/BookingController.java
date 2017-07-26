package vn.hkd.tour.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BookingController {

    @GetMapping("/admin/dat-tour")
    public String index() {
        return "admin/booking";
    }

}
