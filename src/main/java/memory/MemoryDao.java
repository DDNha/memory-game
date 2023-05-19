package memory;

import java.sql.*;

public class MemoryDao {
    static boolean isValid = false;

    public static boolean checkLogin(String username, String password) {
        try {

            //4.Hệ thống kết nối cơ sở dữ liệu
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/memory", "root", "");

            //5. Kiểm tra thông tin vừa nhập
            PreparedStatement ps = con.prepareStatement("SELECT * FROM user WHERE username=? AND password=?");
            ps.setString(1, username);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                isValid = true;
            } else {
                isValid = false;
            }

        } catch (SQLException | ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        return isValid;
    }

}
