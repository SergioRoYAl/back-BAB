package kebab.app.service;

import java.util.List;

import org.aspectj.weaver.patterns.TypePatternQuestions.Question;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import jakarta.transaction.Transactional;
import kebab.app.entity.UserEntity;
import kebab.app.exception.ResourceNotFoundException;
import kebab.app.helper.DataGenerationHelper;
import kebab.app.repository.UserRepository;

@Service
public class UserService {

    private final String babPassword = "72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd";

    @Autowired
    UserRepository oUserRepository;

    @Autowired
    SessionService oSessionService;

    @Transactional
    public UserEntity getUserWithPedidos(Long userId) {
        return oUserRepository.findById(userId)
            .orElseThrow(() -> new ResourceNotFoundException("User not found"));
    }

    public UserEntity get(Long id) {
        return oUserRepository.findById(id).orElseThrow(() -> new ResourceNotFoundException("User not found"));
    }

    public Long create(UserEntity oUserEntity) {
        oUserEntity.setId(null);
        oUserEntity.setPassword("72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd");
        return oUserRepository.save(oUserEntity).getId();
    }

    public UserEntity update(UserEntity oUserEntity) {
        return oUserRepository.save(oUserEntity);
    }

    public Long delete(Long id) {
        oUserRepository.deleteById(id);
        return id;
    }

    public UserEntity getByUsername(String username) {
        
        return oUserRepository.findByUsername(username)
                .orElseThrow(() -> new ResourceNotFoundException("User not found by username"));
    }

    public Page<UserEntity> getPage(Pageable oPageable) {
        oSessionService.onlyAdmins();
        return oUserRepository.findAll(oPageable);
    }

    public UserEntity getOneRandom() {
        oSessionService.onlyAdmins();
        Pageable oPageable = PageRequest.of((int) (Math.random() * oUserRepository.count()), 1);
        return oUserRepository.findAll(oPageable).getContent().get(0);
    }

    public Long populate(Integer amount) {
        oSessionService.onlyAdmins();
        for (int i = 0; i < amount; i++) {
            
            String username1 = DataGenerationHelper.getRandomSurname();
            String nombreEmpresa = (DataGenerationHelper.getRandomName() + username1.substring(1, 3) + i*12);
            String username = DataGenerationHelper
            .doNormalizeString(nombreEmpresa.substring(0, 3) + username1.substring(1, 3)+ i);
            String identificadorEmpresarial = (DataGenerationHelper.getRandomSurname() + i);

            
            oUserRepository.save(new UserEntity(nombreEmpresa, username, "e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e", identificadorEmpresarial, true));
        }
        return oUserRepository.count();
    }

    public Page<UserEntity> byPedidosNumberDesc(Pageable oPageable) {
        return oUserRepository.findUsersByRepliesNumberDescFilter(oPageable);
    }

    @Transactional
    public Long empty() {
        oSessionService.onlyAdmins();
        oUserRepository.deleteAll();
        oUserRepository.resetAutoIncrement();
        UserEntity oUserEntity1 = new UserEntity(1L, "BAB", "SuperSergioHola", babPassword, "MDiHCp" ,false);
        oUserRepository.save(oUserEntity1);
        oUserEntity1 = new UserEntity(2L, "SucedaniosStore", "SS", babPassword, "uPMgsc", true);
        oUserRepository.save(oUserEntity1);
        return oUserRepository.count();
    }
}