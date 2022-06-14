package pl.coderslab.rim;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RimRepository extends JpaRepository<Rim, Long> {

    List<Rim> findAllById (Long id);

    @Query("select r from Rim r order by r.name")
    public List<Rim> findByNameOrderByNameAsc(String name);



}
