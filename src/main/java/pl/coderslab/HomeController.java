package pl.coderslab;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import pl.coderslab.rim.Rim;
import pl.coderslab.rim.RimRepository;

import java.util.Collections;
import java.util.List;

@Controller
public class HomeController {
    private final RimRepository rimRepository;

    public HomeController(RimRepository rimRepository) {
        this.rimRepository = rimRepository;
    }

//    @GetMapping("/")
//    public String hello() {
//        return "dashboard";
//    }


    @GetMapping("/")
    public String show(Model model) {
        System.out.println();
        model.addAttribute("RimCount", rimCounter());  // - 2wywołanie metody zliczającej liczbę felg w bazie
        List<Rim> all = rimRepository.findAll();
        Collections.reverse(all);
        model.addAttribute("rims", all);
        //  model.addAttribute("cars", carRepository.findAll());
        return "dashboard";
    }
    //1 - metoda zliczająca liczbę felg w bazie
    public Long rimCounter() {
        return rimRepository.count();
    }
}