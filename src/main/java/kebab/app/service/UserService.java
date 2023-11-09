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

    @Autowired
    UserRepository oUserRepository;

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
        oUserEntity.setPassword("e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e");
        return oUserRepository.save(oUserEntity).getId();
    }

    public UserEntity update(UserEntity oUserEntity) {
        return oUserRepository.save(oUserEntity);
    }

    public Long delete(Long id) {
        oUserRepository.deleteById(id);
        return id;
    }

    public Page<UserEntity> getPage(Pageable oPageable) {
        return oUserRepository.findAll(oPageable);
    }

    public UserEntity getOneRandom() {
        Pageable oPageable = PageRequest.of((int) (Math.random() * oUserRepository.count()), 1);
        return oUserRepository.findAll(oPageable).getContent().get(0);
    }

    public Long populate(Integer amount) {
        for (int i = 0; i < amount; i++) {
            
            String username1 = DataGenerationHelper.getRadomSurname();
            String nombreEmpresa = (DataGenerationHelper.getRadomName() + username1.substring(1, 3) + i*12);
            String username = DataGenerationHelper
            .doNormalizeString(nombreEmpresa.substring(0, 3) + username1.substring(1, 3)+ i);
            String identificadorEmpresarial = (DataGenerationHelper.getRadomSurname() + i);

            
            oUserRepository.save(new UserEntity(nombreEmpresa, username, "e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e", identificadorEmpresarial));
        }
        return oUserRepository.count();
    }

}