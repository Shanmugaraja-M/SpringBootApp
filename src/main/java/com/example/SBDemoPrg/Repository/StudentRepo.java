

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.transaction.annotation.Transactional;

import com.example.SBDemoPrg.Entity.StudentDetailsEntity;

public interface StudentRepo extends JpaRepository<StudentDetailsEntity, Long> {

    @Transactional
    @Modifying
    void deleteByRollNo(String rollNo);

    Optional<StudentDetailsEntity> findByRollNo(String rollNo);
}
