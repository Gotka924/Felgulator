package pl.coderslab.rim;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.car.CarRepository;
import pl.coderslab.producer.Producer;
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

    @GetMapping("/find/{name}")
    public String find(Model model, @PathVariable String name) {
      //  Rim rim = new Rim();
        model.addAttribute("rims", rimRepository.findByNameOrderByNameAsc(name));
       // model.addAttribute("rims", rim.getName());
        return "find";
    }

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
        model.addAttribute("producer", producerRepository.findAll());
        model.addAttribute("rim", new Rim());
        return "add";
    }

    @PostMapping("/add")
    public String save(Rim rim , BindingResult result, Model model, @RequestParam Long aaa) {
        Producer byproducerId = producerRepository.findByproducerId(aaa);
        rim.setProducer(producerRepository.findByproducerId(aaa));
        rimRepository.save(rim);
        return "redirect:/rim/list";
    }
    @GetMapping("/carsList")
    public String carsList(Model model) {
        model.addAttribute("rims", rimRepository.findAll());
        model.addAttribute("cars", carRepository.findAll());
        return "carsList";
    }
    @GetMapping("/show/{id}")
    public String show(Model model, @PathVariable Long id){
//        Rim rim = new Rim();

        model.addAttribute("rims", rimRepository.findAllById(id));
        return "show";
    }
    @GetMapping("/searchedRim")
    public String searchedRim(Model model) {
        model.addAttribute("rims", rimRepository.findAll());
//        model.addAttribute("cars", carRepository.findAll());
        return "searchedRim";
    }

    @PostMapping("/searchedRim")
    public String findedRim(Rim rim, BindingResult result, Model model) {
        model.addAttribute("rims", rimRepository.findByrimId(rim.getId()));
        return "show";
    }

}











