package kebab.app.service;

import java.time.LocalDate;
import java.util.concurrent.ThreadLocalRandom;

import javax.xml.crypto.Data;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import kebab.app.entity.EstablecimientoEntity;
import kebab.app.entity.PedidoEntity;
import kebab.app.exception.ResourceNotFoundException;
import kebab.app.helper.DataGenerationHelper;
import kebab.app.repository.EstablecimientoRepository;
import kebab.app.repository.PedidoRepository;

@Service
public class EstablecimientoService {
    
     @Autowired
    EstablecimientoRepository oEstablecimientoRepository;

    public EstablecimientoEntity get(Long id){
        return oEstablecimientoRepository.findById(id).orElseThrow(() -> new ResourceNotFoundException("User not found"));
    }

    public Long create(EstablecimientoEntity oEstablecimientoEntity) {
        oEstablecimientoEntity.setId(null);
        return oEstablecimientoRepository.save(oEstablecimientoEntity).getId();
    }

    public EstablecimientoEntity update(EstablecimientoEntity oEstablecimientoEntity) {
        return oEstablecimientoRepository.save(oEstablecimientoEntity);
    }

    public Long delete(Long id) {
        EstablecimientoEntity oEstablecimientoEntity = oEstablecimientoRepository.findById(id)
            .orElseThrow(() -> new ResourceNotFoundException("Establecimiento not found"));
        oEstablecimientoRepository.deleteById(oEstablecimientoEntity.getId());
        return id;
    }

    public Page<EstablecimientoEntity> getPage(Pageable oPageable) {
        return oEstablecimientoRepository.findAll(oPageable);
    }

    public EstablecimientoEntity getOneRandom() {
        Pageable oPageable = PageRequest.of((int) (Math.random() * oEstablecimientoRepository.count()), 1);
        return oEstablecimientoRepository.findAll(oPageable).getContent().get(0);
    }

    

    @Autowired
    UserService oUserService;
    EstablecimientoService oEstablecimientoService;
    PedidoService oPedidoService;

    public Long populate(Integer amount) {
        for (int i = 0; i < amount; i++) {            
            oEstablecimientoRepository.save(new EstablecimientoEntity(String.valueOf(i) + DataGenerationHelper.getRandomName()));
        }
        return oEstablecimientoRepository.count();
    }
}
