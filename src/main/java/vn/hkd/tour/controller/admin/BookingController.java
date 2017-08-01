package vn.hkd.tour.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BookingController {

    @GetMapping("/admin/dat-tour")
    public String booking(Model model) {
        return "bookingAD";
    }

}
