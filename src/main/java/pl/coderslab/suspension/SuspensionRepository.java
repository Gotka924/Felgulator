package pl.coderslab.suspension;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.coderslab.suspension.Suspension;

public interface SuspensionRepository extends JpaRepository<Suspension, Long> {
}
