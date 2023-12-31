package kebab.app.entity;

import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;

@Entity
@Table(name = "establecimiento")
public class EstablecimientoEntity {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @OneToMany(mappedBy = "establecimiento", fetch = jakarta.persistence.FetchType.LAZY)
    private List<PedidoEntity> pedidos;

    @NotNull
    @NotBlank
    @Size(min=3, max=255)
    private String repartidor;

    public EstablecimientoEntity(Long id, List<PedidoEntity> pedidos,
            @NotNull @NotBlank @Size(min = 3, max = 255) String repartidor) {
        this.id = id;
        this.pedidos = pedidos;
        this.repartidor = repartidor;
    }

    public EstablecimientoEntity(String repartidor,
            List<PedidoEntity> pedidos) {
        this.repartidor = repartidor;
        this.pedidos = pedidos;
    }


    public EstablecimientoEntity(Long id, String repartidor) {
        this.id = id;
        this.repartidor = repartidor;
    }

    public EstablecimientoEntity(String repartidor) {
        this.repartidor = repartidor;
    }

    public EstablecimientoEntity() {
        pedidos = new java.util.ArrayList<>();
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public int getPedidos() {
        return pedidos.size();
    }

    public String getRepartidor() {
        return repartidor;
    }

    public void setRepartidor(String repartidor) {
        this.repartidor = repartidor;
    }

    
}
