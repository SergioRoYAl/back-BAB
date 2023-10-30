package kebab.app.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import kebab.app.entity.PedidoEntity;
import kebab.app.exception.ResourceNotFoundException;
import kebab.app.helper.DataGenerationHelper;
import kebab.app.repository.PedidoRepository;

import java.time.LocalDate;
import java.util.concurrent.ThreadLocalRandom;




@Service
public class PedidoService {
    

    public static LocalDate generateRandomDate(int startYear, int endYear) {
        int year = ThreadLocalRandom.current().nextInt(startYear, endYear + 1);
        int dayOfYear = ThreadLocalRandom.current().nextInt(1, LocalDate.of(year, 12, 31).getDayOfYear() + 1);

        return LocalDate.ofYearDay(year, dayOfYear);
    }

    @Autowired
    PedidoRepository oPedidoRepository;

    public PedidoEntity get(Long id){
        return oPedidoRepository.findById(id).orElseThrow(() -> new ResourceNotFoundException("User not found"));
    }

    public Long create(PedidoEntity oPedidoEntity) {
        oPedidoEntity.setId(null);
        return oPedidoRepository.save(oPedidoEntity).getId();
    }

    public PedidoEntity update(PedidoEntity oPedidoEntity) {
        return oPedidoRepository.save(oPedidoEntity);
    }

    public Long delete(Long id) {
        oPedidoRepository.deleteById(id);
        return id;
    }

    public Page<PedidoEntity> getPage(Pageable oPageable) {
        return oPedidoRepository.findAll(oPageable);
    }

    public PedidoEntity getOneRandom() {
        Pageable oPageable = PageRequest.of((int) (Math.random() * oPedidoRepository.count()), 1);
        return oPedidoRepository.findAll(oPageable).getContent().get(0);
    }


    @Autowired
    UserService oUserService;
    EstablecimientoService oEstablecimientoService;

    public Long populate(Integer amount) {
        for (int i = 0; i < amount; i++) {        
            LocalDate randomDate = generateRandomDate(2000, 2022);    
            oPedidoRepository.save(new PedidoEntity(oUserService.getOneRandom(), randomDate, DataGenerationHelper.getSpeech(1), oEstablecimientoService.getOneRandom()));
        }
        return oPedidoRepository.count();
    }

    
}
