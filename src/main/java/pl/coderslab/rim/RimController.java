package pl.coderslab.rim;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.car.CarRepository;
import pl.coderslab.producer.ProducerRepository;
import pl.coderslab.suspension.SuspensionRepository;

import javax.validation.Valid;

@Controller
@RequestMapping("/rim")
public class RimController {

    private final RimRepository rimRepository;
    private final ProducerRepository producerRepository; // -0
    private final CarRepository carRepository;
    private final SuspensionRepository suspensionRepository;

    public RimController(RimRepository rimRepository, ProducerRepository producerRepository, CarRepository carRepository, SuspensionRepository suspensionRepository) {
        this.rimRepository = rimRepository;
        this.producerRepository = producerRepository;
        this.carRepository = carRepository;
        this.suspensionRepository = suspensionRepository;
    }

    @GetMapping("/list")
    public String list(Model model) {
        model.addAttribute("rims", rimRepository.findAll());
        return "list";
    }

//    @GetMapping("/dashboard")
//    public String show(Model model) {
//        System.out.println();
//        model.addAttribute("RimCount", rimCounter());  // - 2wywołanie metody zliczającej liczbę felg w bazie
//        model.addAttribute("rims", rimRepository.findAll());
//        //  model.addAttribute("cars", carRepository.findAll());
//        return "dashboard";
//    }

    @GetMapping("/find/{name}")
    public String find(Model model, @PathVariable String name) {
        Rim rim = new Rim();
        model.addAttribute("rims", rimRepository.findAll());
        model.addAttribute("rims", rim.getName());
        return "find";
    }

//    //1 - metoda zliczająca liczbę felg w bazie
//    public Long rimCounter() {
//        return rimRepository.count();
//    }

    @GetMapping("/search")
    public String showAddForm(Model model) {
        model.addAttribute("rims", new Rim());
        model.addAttribute("cars", carRepository.findAll());
        return "search";
    }

    @PostMapping("/search")
    public String search(@Valid Rim rim, BindingResult result, Model model) {
        model.addAttribute("rims", rimRepository.findAll());
        model.addAttribute("cars", carRepository.findAll());
        float xp = (float) (72-(rim.getWidth() *25.6 / 2.0 - rim.getEt()));
        float xt = (float) (89-(rim.getWidth() *25.6 / 2.0 - rim.getEt()));
        if(xp > 0){
            model.addAttribute("front", "&#9989 Możesz zastosować felgę o podanych parametrach");
        } else {model.addAttribute("front", "&#10060 Niestety felga o podanych parametrach nie może być zastosowana");}
        if(xt > 0){
            model.addAttribute("rear", "&#9989 Możesz zastosować felgę o podanych parametrach");
        } else {model.addAttribute("rear", "&#10060 Niestety felga o podanych parametrach nie może być zastosowana");}
        model.addAttribute("xp", xp);
        model.addAttribute("xt", xt);
        return "checked";
    }

    @GetMapping("/add")
    public String add(Model model) {
        model.addAttribute("cars", carRepository.findAll());
        model.addAttribute("producers", producerRepository.findAll());
        model.addAttribute("rims", new Rim());
        return "add";
    }

    @PostMapping("/add")
    public String save(@Valid Rim rim, BindingResult result, Model model) {
        if(result.hasErrors()){
           model.addAttribute("cars", carRepository.findAll());
            return "add";
        }
        rimRepository.save(rim);
        return "redirect:/list";
    }
    @GetMapping("/carsList")
    public String carsList(Model model) {
        model.addAttribute("rims", rimRepository.findAll());
        model.addAttribute("cars", carRepository.findAll());
        return "carsList";
    }
    @GetMapping("/show/{id}")
    public String show(Model model, @PathVariable Long id){
        Rim rim = new Rim();

       model.addAttribute("rims", rimRepository.findAllById(id));

        return "show";
    }

}













