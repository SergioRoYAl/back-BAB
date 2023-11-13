package kebab.app.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import kebab.app.repository.UserRepository;

@Service
public class SessionService {
    
    @Autowired
    UserRepository oUserRepository;

    @Autowired 
    HttpServletRequest oHttpServletRequest;

    /*
    public String login(UserBean oUserBean) {
        oUserRepository.findByUser
    } */
}
