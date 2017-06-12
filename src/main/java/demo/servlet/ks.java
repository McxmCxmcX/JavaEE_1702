package demo.servlet;

import demo.util.Db;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by heishuai.china.cn
 * 2017/6/10 10:40
 * JavaEE_1702
 */
@WebServlet(urlPatterns = "/ks")
public class ks extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String mobile = req.getParameter("mobile");
        String password = req.getParameter("password");

        Connection connection = Db.getConnection();
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        try {
            String sql = "SELECT * FROM db_ip.inquire WHERE mobile=? AND password=?";
            if (connection != null) {
                statement = connection.prepareStatement(sql);
            } else {
                req.setAttribute("message", "出了一点小事" );
                req.getRequestDispatcher("ks.jsp").forward(req, resp);
                return;
            }
            statement.setString(1, mobile);
            statement.setString(2, password);
            resultSet = statement.executeQuery();
            if (resultSet.next()) {
                req.getSession().setAttribute("ip", resultSet.getString("ip"));
                resp.sendRedirect("home.jsp");
            } else {
                req.setAttribute("message", "IP地址输入错误");
                req.getRequestDispatcher("ks.jsp").forward(req, resp);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Db.close(resultSet, statement, connection);
        }
    }
}