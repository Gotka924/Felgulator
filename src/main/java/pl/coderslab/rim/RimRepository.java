package pl.coderslab.rim;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RimRepository extends JpaRepository<Rim, Long> {


}
