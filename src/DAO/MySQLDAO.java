package DAO;

import com.mysql.cj.xdevapi.SqlDataResult;
import model.*;
import utils.Constants;

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
            account.setTel(rs.getString("tel"));
            account.setUserType(Account.UserType.valueOf(rs.getString("user_type")));
            return account;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public EduOrg getEduOrgByUsername(String username) {
        String sql = "SELECT * FROM eduorg where user_name = '" + username + "';";
        try {
            EduOrg org = new EduOrg();
            Account account = getAccountByUsername(username);
            org.setUsername(account.getUsername());
            org.setPassword(account.getPassword());
            org.setEmail(account.getEmail());
            org.setTel(account.getTel());
            org.setUserType(account.getUserType());

            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery(sql);
            rs.next();

            org.setOrgCode(rs.getString("org_code"));
            org.setOrgAddress(rs.getString("org_address"));
            org.setOrgContact(rs.getString("org_contact"));
            org.setOrgIntroduction(rs.getString("org_introduction"));
            org.setOrgEduField(Constants.CourseField.valueOf(rs.getString("edu_field")));
            org.setOrgEduAge(rs.getInt("edu_age"));
            org.setQualified(rs.getString("qualified").equals("YES"));
            return org;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public Parent getParentByUsername (String username) {
        String sql = "SELECT * FROM parent where user_name = '" + username + "';";
        try{
            Parent par = new Parent();
            Account account = getAccountByUsername(username);
            par.setUsername(account.getUsername());
            par.setPassword(account.getPassword());
            par.setEmail(account.getEmail());
            par.setTel(account.getTel());
            par.setUserType(account.getUserType());

            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery(sql);
            rs.next();

            par.setChildName(rs.getString("child_name"));
            par.setChildBirthday(rs.getString("child_birthday"));
            par.setChildGender(Account.Gender.valueOf(rs.getString("child_gender")));
            par.setParentName(rs.getString("parent_name"));
            par.setParentContact(rs.getString("parent_contact"));
            par.setCourseField(Constants.CourseField.valueOf(rs.getString("course_field")));
            par.setCourseCost(rs.getInt("course_cost"));
            par.setCoursePlace(rs.getString("course_place"));
            return par;
        }catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public Teacher getTeacherByUsername (String username) {
        String sql = "SELECT * FROM teacher where user_name = '" + username + "';";
        try{
            Teacher teacher = new Teacher();
            Account account = getAccountByUsername(username);
            teacher.setUsername(account.getUsername());
            teacher.setPassword(account.getPassword());
            teacher.setEmail(account.getEmail());
            teacher.setTel(account.getTel());
            teacher.setUserType(account.getUserType());

            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery(sql);
            rs.next();

            teacher.setmTeacherName(rs.getString("tea_name"));
            teacher.setmTeacherGender(Account.Gender.valueOf(rs.getString("tea_gender")));
            teacher.setmTeacherBirthday(rs.getString("tea_birthday"));
            teacher.setmTeacherIdNumber(rs.getString("tea_id_number"));
            teacher.setmTeacherContact(rs.getString("tea_contact"));
            teacher.setmTeacherIntroduction(rs.getString("tea_introduction"));
            teacher.setmCourseField(Constants.CourseField.valueOf((rs.getString("edu_field"))));
            teacher.setmEduYear(rs.getInt("edu_year"));
            teacher.setmEduAge(rs.getInt("edu_age"));
            teacher.setmQualified(rs.getString("qualified").equals("YES"));
            return teacher;
        }catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public Sysadmin getSyaadminByUsername (String username){
        String sql = "SELECT * FROM sysadmin where user_name = '" + username + "';";
        try{
            Sysadmin sysadmin = new Sysadmin();
            Account account = getAccountByUsername(username);
            sysadmin.setUsername(account.getUsername());
            sysadmin.setPassword(account.getPassword());
            sysadmin.setEmail(account.getEmail());
            sysadmin.setTel(account.getTel());
            sysadmin.setUserType(account.getUserType());

            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery(sql);
            rs.next();

            sysadmin.setPageItemCount(rs.getString("page_item_count"));
            return sysadmin;
        }catch (SQLException e) {
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

        insertAccount(parent);

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

    public void insertTeacher (Teacher teacher){
        insertAccount(teacher);

        String sql = "INSERT INTO teacher (user_name, tea_name, tea_gender, tea_birthday, tea_id_number, " +
                "tea_contact, edu_field, edu_year, edu_age, tea_introduction) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, teacher.getUsername());
            statement.setString(2, teacher.getmTeacherName());
            statement.setString(3, teacher.getmTeacherGender().toString());
            statement.setString(4, teacher.getmTeacherBirthday());
            statement.setString(5, teacher.getmTeacherIdNumber());
            statement.setString(6, teacher.getmTeacherContact());
            statement.setString(7, teacher.getmCourseField().toString());
            statement.setInt(8, teacher.getmEduYear());
            statement.setInt(9, teacher.getmEduAge());
            statement.setString(10, teacher.getmTeacherIntroduction());
            statement.executeUpdate();

            System.out.println("插入成功！");
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public void updateAccount(Account account) {
        try {
            String sql = "UPDATE account SET password = ?, tel = ?, email = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, account.getPassword());
            statement.setString(2, account.getTel());
            statement.setString(3, account.getEmail());
            statement.executeUpdate();

            System.out.println("更新成功！");
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public void updateEduOrg(EduOrg org) {

        updateAccount(org);

        try {

            String sql = "UPDATE eduorg SET org_address = ?, org_contact = ?, org_introduction = ?, edu_field = ?, edu_age = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, org.getOrgAddress());
            statement.setString(2, org.getOrgContact());
            statement.setString(3, org.getOrgIntroduction());
            statement.setString(4, org.getOrgEduField().toString());
            statement.setInt(5, org.getOrgEduAge());
            statement.executeUpdate();

            System.out.println("更新成功！");
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
}
