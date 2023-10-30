package kebab.app.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kebab.app.entity.EstablecimientoEntity;
import kebab.app.service.EstablecimientoService;

@CrossOrigin(origins = "*", maxAge = 3600)
@RestController
@RequestMapping("/establecimiento")
public class EstablecimientoApi {

    @Autowired
    EstablecimientoService oEstablecimientoService;

    @GetMapping("/{id}")
    public ResponseEntity<EstablecimientoEntity> get(@PathVariable("id") Long id) {
        return ResponseEntity.ok(oEstablecimientoService.get(id));
    }

    @PostMapping("")
    public ResponseEntity<Long> create(@RequestBody EstablecimientoEntity oEstablecimientoEntity) {
        return ResponseEntity.ok(oEstablecimientoService.create(oEstablecimientoEntity));
    }

    @PutMapping("")
    public ResponseEntity<EstablecimientoEntity> update(@RequestBody EstablecimientoEntity oEstablecimientoEntity) {
        return ResponseEntity.ok(oEstablecimientoService.update(oEstablecimientoEntity));
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Long> delete(@PathVariable("id") Long id) {
        return ResponseEntity.ok(oEstablecimientoService.delete(id));
    }

    @GetMapping("")
    public ResponseEntity<Page<EstablecimientoEntity>> getPage(Pageable oPageable) {
        return ResponseEntity.ok(oEstablecimientoService.getPage(oPageable));
    }

    @PostMapping("/populate/{amount}")
    public ResponseEntity<Long> populate(@PathVariable("amount") Integer amount) {
        return ResponseEntity.ok(oEstablecimientoService.populate(amount));
    }



}
