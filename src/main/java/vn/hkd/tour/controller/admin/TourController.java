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

@Controller
public class TourController {

    private TourService tourService;

    @GetMapping("/admin/tour")
    public String index(Model model) {
        model.addAttribute("tours", tourService.findAll());
        return "admin/tour";
    }

    @GetMapping("/admin/tour/add")
    public String add(Model model) {
        model.addAttribute("tour", new Tour());
        return "admin/tour_edit";
    }

    @GetMapping("/admin/tour/{id}/edit")
    public String edit(@PathVariable("id") Integer id, Model model) {
        model.addAttribute("tour", tourService.findOne(id));
        return "admin/tour_edit";
    }

    @PostMapping("/admin/tour/save")
    public String save(@Valid Tour tour, BindingResult result, Model model, RedirectAttributes redirect) {
        model.addAttribute("tour", tourService.findAll());
        if (result.hasErrors()) {
            return "admin/tour";
        }
        tourService.save(tour);
        redirect.addFlashAttribute("success", "Lưu Tour thành công!");
        return "redirect:/admin/tour";
    }

    @GetMapping("/admin/tour/{id}/delete")
    public String delete(@PathVariable Integer id, RedirectAttributes redirect) {
        tourService.delete(id);
        redirect.addFlashAttribute("success", "Xóa tour thành công!");
        return "redirect:/admin/tour";
    }
}
