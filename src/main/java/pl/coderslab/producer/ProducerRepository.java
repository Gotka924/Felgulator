package pl.coderslab.producer;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.coderslab.producer.Producer;

public interface ProducerRepository extends JpaRepository<Producer, Long> {


    @Query("select p from Producer p where p.id = ?1")
    Producer findByproducerId(Long producerId);

}
