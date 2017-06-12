package demo.util;

import com.mysql.jdbc.Driver;

import java.sql.*;

/**
 * Created by heishuai.china.cn
 * 2017/6/10 10:27
 * JavaEE_1702
 */
public class ks {

    private static final String URL = "jdbc:mysql:///?user=root&password=liweixi";

    public static Connection getConnection() {
        try {
            new Driver();
            return DriverManager.getConnection(URL);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static void close(ResultSet resultSet, PreparedStatement preparedStatement, Connection connection) {
        if (resultSet != null) {
            try {
                resultSet.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (preparedStatement != null) {
            try {
                preparedStatement.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (connection != null) {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
