package pl.coderslab.car;

import org.springframework.stereotype.Controller;

@Controller
public class CarController {

    private final CarRepository carRepository;



    public CarController(CarRepository carRepository) {
        this.carRepository = carRepository;
    }

}
