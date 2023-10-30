package kebab.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import kebab.app.entity.EstablecimientoEntity;

public interface EstablecimientoRepository extends JpaRepository<EstablecimientoEntity, Long>{
    
}
