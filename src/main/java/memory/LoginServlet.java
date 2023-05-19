package memory;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet(name = "login", value = "/doLogin")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1.Người chơi nhập tài khoản và mật khẩu
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        //3.Gửi thông tin đăng nhập cho hệ thống kiểm tra.
        boolean isValid = MemoryDao.checkLogin(username, password);

        //5.1.Nếu thông tin hợp lệ thì hiển thị giao diện chính của trò chơi.
        if (isValid) {
            HttpSession session = request.getSession();
            session.setAttribute("username", username);
            response.sendRedirect("memory.jsp");
        } else {
            //5.2.Nếu thông tin không hợp lệ thì trả về trang chủ đăng nhập và thông báo lỗi.
            request.setAttribute("error", "Sai tài khoản hoặc mật khẩu");
            response.sendRedirect("login.jsp");
        }
    }
}
