package kebab.app.entity;

import java.time.LocalDate;

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

    @NotNull
    @NotBlank
    @ManyToOne
    @JoinColumn(name = "id_user")
    private UserEntity user;

    @DateTimeFormat
    @NotBlank
    private LocalDate fecha;

    @NotNull
    @NotBlank
    @Size(min=3, max=512)
    private String observaciones;

    @ManyToOne
    @JoinColumn(name = "id_establecimiento")
    private EstablecimientoEntity establecimiento;

    public PedidoEntity(Long id, @NotNull @NotBlank UserEntity user, @NotBlank LocalDate fecha,
            @NotNull @NotBlank @Size(min = 3, max = 512) String observaciones, EstablecimientoEntity establecimiento) {
        this.id = id;
        this.user = user;
        this.fecha = fecha;
        this.observaciones = observaciones;
        this.establecimiento = establecimiento;
    }

    public PedidoEntity(@NotNull @NotBlank UserEntity user, @NotBlank LocalDate fecha,
            @NotNull @NotBlank @Size(min = 3, max = 512) String observaciones, EstablecimientoEntity establecimiento) {
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
        user = user;
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
