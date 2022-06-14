package pl.coderslab.car;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.coderslab.car.Car;
import pl.coderslab.producer.Producer;

public interface CarRepository extends JpaRepository<Car, Long> {

}
