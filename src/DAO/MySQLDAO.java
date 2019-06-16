package DAO;

import model.Account;
import model.EduOrg;
import model.Parent;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLDAO {

    private static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
    private static final String DB_URL = "jdbc:mysql://47.100.195.116:3306/course_sys";
    private static final String DB_USERNAME = "root";
    private static final String DB_PASSWORD = "31415926";

    private static MySQLDAO instance = null;

    private static Connection connection;

    public static MySQLDAO getInstance() {
        if (instance == null)
            instance = new MySQLDAO();
        return instance;
    }

    private MySQLDAO() {
        try {
            Class.forName(JDBC_DRIVER);
            connection = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public Account getAccountByUsername(String username) {
        String sql = "SELECT * FROM account where user_name = '" + username + "';";
        try {
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery(sql);
            rs.next();
            Account account = new Account();
            account.setUsername(rs.getString("user_name"));
            account.setPassword(rs.getString("password"));
            account.setEmail(rs.getString("email"));
            account.setTel("tel");
            return account;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public void insertAccount(Account account) {
        String sql = "INSERT INTO account (user_name, password, tel, email, user_type) " +
                "VALUES (?, ?, ?, ?, ?)";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, account.getUsername());
            statement.setString(2, account.getPassword());
            statement.setString(3, account.getTel());
            statement.setString(4, account.getEmail());
            statement.setString(5, account.getUserType().toString());
            statement.executeUpdate();

            System.out.println("插入成功！");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    public void insertParent(Parent parent) {

        Account account = new Account();
        account.setUsername(parent.getUsername());
        account.setPassword(parent.getPassword());
        account.setTel(parent.getTel());
        account.setEmail(parent.getEmail());
        account.setUserType(parent.getUserType());
        insertAccount(account);

        String sql = "INSERT INTO parent (user_name, child_name, child_birthday, child_gender, parent_name, " +
                "parent_contact, course_field, course_cost, course_place) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, parent.getUsername());
            statement.setString(2, parent.getChildName());
            statement.setString(3, parent.getChildBirthday());
            statement.setString(4, parent.getChildGender().toString());
            statement.setString(5, parent.getParentName());
            statement.setString(6, parent.getParentContact());
            statement.setString(7, parent.getCourseField().toString());
            statement.setInt(8, parent.getCourseCost());
            statement.setString(9, parent.getCoursePlace());
            statement.executeUpdate();

            System.out.println("插入成功！");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void insertEduOrg(EduOrg org) {

        insertAccount(org);

        String sql = "INSERT INTO eduorg (user_name, org_code, org_address, org_contact, org_introduction, edu_field, " +
                "edu_age, qualified) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, org.getUsername());
            statement.setString(2, org.getOrgCode());
            statement.setString(3, org.getOrgAddress());
            statement.setString(4, org.getOrgContact());
            statement.setString(5, org.getOrgIntroduction());
            statement.setString(6, org.getOrgEduField().toString());
            statement.setString(7, Integer.toString(org.getOrgEduAge()));
            statement.setString(8, org.isQualified() ? "YES" : "NO");
            statement.executeUpdate();

            System.out.println("插入成功！");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
