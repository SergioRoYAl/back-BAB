package kebab.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import kebab.app.entity.UserEntity;

public interface UserRepository extends JpaRepository<UserEntity, Long>{
    
}
