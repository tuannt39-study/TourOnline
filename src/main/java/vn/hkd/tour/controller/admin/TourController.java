package vn.hkd.tour.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import vn.hkd.tour.domain.Tour;
import vn.hkd.tour.service.TourService;

import javax.validation.Valid;
import java.util.List;

@Controller
public class TourController {

    @Autowired
    private TourService tourService;

    @GetMapping("/admin/tour")
    public String account(Model model) {
        List<Tour> tours = tourService.findAll();
        model.addAttribute("tours", tours);
        return "tourAD";
    }

    @GetMapping("/tour/{id}")
    public String show(@PathVariable int id, Model model) {
        Tour tour = tourService.findOne(id);
        if (tour == null) {
            return "error404";
        } else {
            model.addAttribute("tour", tour);
            return "chitietUS";
        }
    }

    @GetMapping(value = "/admin/tour/add")
    public String add(Model model) {
        model.addAttribute("user", new Tour());
        return "tour_editAD";
    }

    @GetMapping("/admin/tour/{id}/edit")
    public String edit(@PathVariable int id, Model model) {
        Tour tour = tourService.findOne(id);
        if (tour == null) {
            return "error404";
        } else {
            model.addAttribute("tour", tour);
            return "tour_editAD";
        }
    }

    @PostMapping("/admin/tour/save")
    public String save(@Valid Tour tour, BindingResult result, Model model, RedirectAttributes redirect) {
        if (result.hasErrors()) {
            return "tour_editAD";
        }

        if (tour.getId() == 0) {
            tourService.create(tour);
        } else {
            tourService.update(tour);
        }
        redirect.addFlashAttribute("success", "Lưu tour " + tour.getName() + " thành công!");
        return "redirect:/admin/tour";
    }

    @GetMapping("/admin/tour/{id}/delete")
    public String delete(@PathVariable int id, RedirectAttributes redirect) {
        Tour tour = tourService.findOne(id);
        if (tour == null) {
            return "error404";
        } else {
                tourService.delete(tour);
                redirect.addFlashAttribute("success", "Xóa tour " + tour.getName() + " thành công!");
        }
        return "redirect:/admin/tour";
    }
}
