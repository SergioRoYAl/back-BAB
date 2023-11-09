package kebab.app.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import kebab.app.entity.UserEntity;

public interface UserRepository extends JpaRepository<UserEntity, Long>{
    
}

