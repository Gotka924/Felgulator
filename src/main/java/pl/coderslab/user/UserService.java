package pl.coderslab.user;

import pl.coderslab.user.User;

public interface UserService {

    User findByUserName(String name);

    void saveUser(User user);
}