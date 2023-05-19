package memory;

import java.util.ArrayList;
import java.util.List;

public class UserService {
    private List<User> users = new ArrayList<>();
    public UserService(){
        users.add(new User("nha1@gmail.com", "12345"));
        users.add(new User("nha2@gmail.com", "12345"));
    }
    public boolean checkEmailIsExist(String email){
        for (User user : users) {
            if(user.getUsername().equals(email)){
                return true;
            }
        }
        return false;
    }
    public void register(User user){
        users.add(user);
    }
}
