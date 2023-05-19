package memory;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
@WebServlet(name = "RegisterServlet", value = "/register")
public class RegisterServlet extends HttpServlet {
    private List<User> userList;
    UserService userService = new UserService();

    @Override
    public void init() throws ServletException {
        super.init();
        userList = new ArrayList<>();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/signUp.jsp").forward(req,resp);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String rePassword = request.getParameter("re-password");
        boolean register = true;
        if(userService.checkEmailIsExist(email)){
            request.setAttribute("emailError", "Email đã tồn tại");
            register = false;
        }
        if(!password.equals(rePassword)){
            request.setAttribute("passwordError", "Password và RePassword không khớp");
            register = false;
        }
        if(!register) {
            request.getRequestDispatcher("/signUp.jsp").forward(request,response);
            return;
        }
        // Tạo một đối tượng người dùng mới
        User user = new User(email, password);
        userService.register(user);

        // Chuyển hướng sau khi đăng ký thành công
        response.sendRedirect("signIn.jsp");
    }
}