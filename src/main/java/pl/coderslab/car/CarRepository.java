package pl.coderslab.car;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.car.Car;

public interface CarRepository extends JpaRepository<Car, Long> {
}
