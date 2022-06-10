package pl.coderslab.producer;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.producer.Producer;

public interface ProducerRepository extends JpaRepository<Producer, Long> {
}
