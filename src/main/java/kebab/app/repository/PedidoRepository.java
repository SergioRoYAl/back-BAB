package kebab.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import kebab.app.entity.PedidoEntity;

public interface PedidoRepository extends JpaRepository<PedidoEntity, Long>{
    
}
