package kebab.app.entity;

import java.util.ArrayList;
import java.util.List;

import org.springframework.boot.autoconfigure.security.SecurityProperties.User;

import com.fasterxml.jackson.annotation.JsonProperty;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;

@Entity
@Table(name = "user")
public class UserEntity {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    @NotBlank
    @Size(min=3, max=255)
    @Column(name = "nombre_empresa")
    private String nombre_empresa;

    @NotNull
    @NotBlank
    @Size(min=3, max=24)
    @Pattern(regexp = "^[a-zA-Z0-9]+$", message = "Username must be alphanumeric")
    private String username;

    @JsonProperty(access = JsonProperty.Access.WRITE_ONLY)
    @NotNull
    @NotBlank
    @Size(min=64, max=64)
    @Pattern(regexp = "^[a-fA-F0-9]+$", message = "Password must be hexadecimal")
    private String password = "e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e";        
    
    @NotNull
    @NotBlank
    @Size(min=3, max=255)
    @Column(name = "identificador_empresarial")
    private String identificador_empresarial;

    @OneToMany(mappedBy = "user", fetch = jakarta.persistence.FetchType.LAZY)
    private List<PedidoEntity> pedidos;

    public UserEntity(){
        pedidos = new ArrayList<>();
    }

    

    public UserEntity(Long id, @NotNull @NotBlank @Size(min = 3, max = 255) String nombre_empresa,
            @NotNull @NotBlank @Size(min = 3, max = 24) @Pattern(regexp = "^[a-zA-Z0-9]+$", message = "Username must be alphanumeric") String username,
            @NotNull @NotBlank @Size(min = 64, max = 64) @Pattern(regexp = "^[a-fA-F0-9]+$", message = "Password must be hexadecimal") String password,
            @NotNull @NotBlank @Size(min = 3, max = 255) String identificador_empresarial) {
        this.id = id;
        this.nombre_empresa = nombre_empresa;
        this.username = username;
        this.password = password;
        this.identificador_empresarial = identificador_empresarial;
    }

    public UserEntity(@NotNull @NotBlank @Size(min = 3, max = 255) String nombre_empresa,
            @NotNull @NotBlank @Size(min = 3, max = 24) @Pattern(regexp = "^[a-zA-Z0-9]+$", message = "Username must be alphanumeric") String username,
            @NotNull @NotBlank @Size(min = 64, max = 64) @Pattern(regexp = "^[a-fA-F0-9]+$", message = "Password must be hexadecimal") String password,
            @NotNull @NotBlank @Size(min = 3, max = 255) String identificador_empresarial) {
        this.nombre_empresa = nombre_empresa;
        this.username = username;
        this.password = password;
        this.identificador_empresarial = identificador_empresarial;
    }



    public UserEntity(
            @NotNull @NotBlank @Size(min = 3, max = 24) @Pattern(regexp = "^[a-zA-Z0-9]+$", message = "Username must be alphanumeric") String username,
            @NotNull @NotBlank @Size(min = 64, max = 64) @Pattern(regexp = "^[a-fA-F0-9]+$", message = "Password must be hexadecimal") String password) {
        this.username = username;
        this.password = password;
    }



    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNombreEmpresa() {
        return nombre_empresa;
    }

    public void setNombreEmpresa(String nombre_empresa) {
        this.nombre_empresa = nombre_empresa;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getIdentificadorEmpresarial() {
        return identificador_empresarial;
    }

    public void setIdentificadorEmpresarial(String identificador_empresarial) {
        this.identificador_empresarial = identificador_empresarial;
    }

    public List<PedidoEntity> getPedidos() {
        return pedidos;
    }

    public void setPedidos(List<PedidoEntity> pedidos) {
        this.pedidos = pedidos;
    }

    
    
}
