package kebab.app.repository;

import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import kebab.app.entity.UserEntity;

public interface UserRepository extends JpaRepository<UserEntity, Long>{
    
    Optional<UserEntity> findByUsername(String username);

    Optional<UserEntity> findByUsernameAndPassword(String username, String password);

    @Query(value = "SELECT u.*,count(r.id) FROM user u, pedido r WHERE u.id = r.id_user GROUP BY u.id ORDER BY COUNT(u.id) desc", nativeQuery = true)
    Page<UserEntity> findUsersByRepliesNumberDescFilter(Pageable pageable);

    @Modifying
    @Query(value = "ALTER TABLE user AUTO_INCREMENT = 1", nativeQuery = true)
    void resetAutoIncrement();

}

