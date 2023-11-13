package kebab.app.entity;

import java.time.LocalDate;

import javax.xml.crypto.Data;

import org.springframework.boot.autoconfigure.security.SecurityProperties.User;
import org.springframework.format.annotation.DateTimeFormat;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;


@Entity
@Table(name = "pedido")
public class PedidoEntity {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "id_user")
    private UserEntity user;

    @DateTimeFormat
    private LocalDate fecha;

    @NotNull
    @NotBlank
    @Size(min=3, max=512)
    private String observaciones;

    @ManyToOne()
    @JoinColumn(name = "id_establecimiento")
    private EstablecimientoEntity establecimiento;



    public PedidoEntity(){

    }

    public PedidoEntity(Long id, UserEntity user,LocalDate fecha, String observaciones, EstablecimientoEntity establecimiento) {
        this.id = id;
        this.user = user;
        this.fecha = fecha;
        this.observaciones = observaciones;
        this.establecimiento = establecimiento;
    }

    public PedidoEntity(UserEntity user,LocalDate fecha, String observaciones, EstablecimientoEntity establecimiento) {
        this.user = user;
        this.fecha = fecha;
        this.observaciones = observaciones;
        this.establecimiento = establecimiento;
    }

    

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public UserEntity getUser() {
        return user;
    }

    public void setUser(UserEntity user) {
        this.user = user;
    }

    public LocalDate getFecha() {
        return fecha;
    }

    public void setFecha(LocalDate fecha) {
        this.fecha = fecha;
    }

    public String getObservaciones() {
        return observaciones;
    }

    public void setObservaciones(String observaciones) {
        this.observaciones = observaciones;
    }

    public EstablecimientoEntity getEstablecimiento() {
        return establecimiento;
    }

    public void setEstablecimiento(EstablecimientoEntity establecimiento) {
        this.establecimiento = establecimiento;
    }

    
    
}
