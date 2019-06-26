package DAO;

import model.*;
import model.account.*;

import javax.swing.*;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
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


    //数据库的查找操作
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
            org.setOrgEduField(Course.CourseField.valueOf(rs.getString("edu_field")));
            org.setOrgEduAge(rs.getInt("edu_age"));
            org.setQualified(Account.Qualified.valueOf(rs.getString("qualified")));
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
            par.setCourseField(Course.CourseField.valueOf(rs.getString("course_field")));
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
            teacher.setmCourseField(Course.CourseField.valueOf((rs.getString("edu_field"))));
            teacher.setmEduYear(rs.getInt("edu_year"));
            teacher.setmEduAge(rs.getInt("edu_age"));
            teacher.setmQualified(Account.Qualified.valueOf(rs.getString("qualified")));
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

    public List<Course> getCourseInfo(Course.CourseField field, String place, int age, int minPrice, int maxPrice) {
        String sql;


        if (place.equals(""))
            sql = "SELECT * FROM course WHERE course_field = ? AND (place LIKE '%' OR place = ?) AND age_recommend = ? " +
                    "AND price >= ? AND price <= ?";
        else
            sql = "SELECT * FROM course WHERE course_field = ? AND place = ? AND age_recommend = ? " +
                    "AND price >= ? AND price <= ?";

        List<Course> courses = new ArrayList<>();
        try {
            PreparedStatement statement = connection.prepareStatement(sql);

            statement.setString(1, field.toString());
            statement.setString(2, place);
            statement.setInt(3, age);
            statement.setInt(4, minPrice);
            statement.setInt(5, maxPrice);

            ResultSet rs = statement.executeQuery();

            while (rs.next()) {
                Course course = new Course();
                course.setCourseId(rs.getString("course_id"));
                course.setCourseName(rs.getString("course_name"));
                course.setTime(rs.getString("time"));
                course.setPlace(rs.getString("place"));
                course.setContent(rs.getString("content"));
                course.setTeachId(rs.getString("teach_id"));
                course.setAgeRecommend(rs.getInt("age_recommend"));
                course.setPrice(rs.getInt("price"));
                course.setCourseField(Course.CourseField.valueOf(rs.getString("course_field")));
                course.setHomeWork(rs.getString("homework"));

                courses.add(course);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return courses;
    }

    public double getCourseAvgScoreById(String courseId) {
        String sql = "SELECT  * FROM coursecomment WHERE course_id = ?";
        double total = 0;
        int count = 0;
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, courseId);
            ResultSet rs = statement.executeQuery();

            while (rs.next()) {
                if (rs.getDouble("score") == 0)
                    continue;
                total += rs.getDouble("score");
                count++;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return count == 0 ? 3 : total / count;
    }

    public List getNewsInfo (Account account){
        String sql_sys = "SELECT * FROM news ORDER BY time DESC ";
        String sql_eduorg = "SELECT * FROM news WHERE publisher IN (SELECT user_name FROM account WHERE user_type = 'EDUORG') " +
                "OR publisher IN (SELECT  user_name FROM account WHERE user_type = 'SYSADMIN') ORDER BY time DESC ";
        String sql_teacher = "SELECT * FROM news WHERE publisher IN (SELECT user_name FROM account WHERE user_type = 'TEACHER') " +
                "OR publisher IN (SELECT  user_name FROM account WHERE user_type = 'SYSADMIN') ORDER BY time DESC ";
        String sql_parent = "SELECT * FROM news WHERE publisher IN (SELECT  user_name FROM account WHERE user_type = 'SYSADMIN')" +
                "OR course_id IN (SELECT course_id FROM purchase WHERE parent_id = ? AND purchased = 'YES') ORDER BY time DESC ";
        List<News> newsList = new ArrayList<>();
        try {
            if (account.getUserType().toString().equals("SYSADMIN")){
                PreparedStatement statement = connection.prepareStatement(sql_sys);
                ResultSet rs = statement.executeQuery();

                while (rs.next()) {
                    News news = new News();
                    news.setmNewsId(rs.getString("news_id"));
                    news.setmPublisher(rs.getString("publisher"));
                    news.setmTime(rs.getString("time"));
                    news.setmTitle(rs.getString("title"));
                    news.setmContent(rs.getString("content"));
                    news.setmCourseId(rs.getString("course_id"));

                    newsList.add(news);
                }
            }
            if (account.getUserType().toString().equals("PARENT")) {
                PreparedStatement statement = connection.prepareStatement(sql_parent);
                statement.setString(1,account.getUsername());
                ResultSet rs = statement.executeQuery();

                while (rs.next()) {
                    News news = new News();
                    news.setmNewsId(rs.getString("news_id"));
                    news.setmPublisher(rs.getString("publisher"));
                    news.setmTime(rs.getString("time"));
                    news.setmTitle(rs.getString("title"));
                    news.setmContent(rs.getString("content"));
                    news.setmCourseId(rs.getString("course_id"));

                    newsList.add(news);
                }
            }
            if (account.getUserType().toString().equals("TEACHER")) {
                PreparedStatement statement = connection.prepareStatement(sql_teacher);
                ResultSet rs = statement.executeQuery();

                while (rs.next()) {
                    News news = new News();
                    news.setmNewsId(rs.getString("news_id"));
                    news.setmPublisher(rs.getString("publisher"));
                    news.setmTime(rs.getString("time"));
                    news.setmTitle(rs.getString("title"));
                    news.setmContent(rs.getString("content"));
                    news.setmCourseId(rs.getString("course_id"));

                    newsList.add(news);
                }
            }
            if (account.getUserType().toString().equals("EDUORG")) {
                PreparedStatement statement = connection.prepareStatement(sql_eduorg);
                ResultSet rs = statement.executeQuery();

                while (rs.next()) {
                    News news = new News();
                    news.setmNewsId(rs.getString("news_id"));
                    news.setmPublisher(rs.getString("publisher"));
                    news.setmTime(rs.getString("time"));
                    news.setmTitle(rs.getString("title"));
                    news.setmContent(rs.getString("content"));
                    news.setmCourseId(rs.getString("course_id"));

                    newsList.add(news);
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return newsList;
    }

    public List<PreviewApp> getParentPreviewCourse (String username) {
        String sql = "SELECT  * FROM previewapp WHERE parent_id = ?";
        List<PreviewApp> previewApps = new ArrayList<>();
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1,username);
            ResultSet rs = statement.executeQuery();

            while (rs.next()) {
                PreviewApp previewApp = new PreviewApp();
                previewApp.setmParentId(username);
                previewApp.setmCourseId(rs.getString("course_id"));
                previewApp.setmAgreement(rs.getString("agreement").equals("YES") ? true : false);

                previewApps.add(previewApp);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return previewApps;
    }

    public List<Purchase> getPurchasedCourse (String username) {
        String sql = "SELECT * FROM purchase WHERE parent_id = ? AND purchased = 'YES'";
        List<Purchase> purchases = new ArrayList<>();
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1,username);
            ResultSet rs = statement.executeQuery();

            while (rs.next()) {
                Purchase purchase = new Purchase();
                purchase.setmParentId(rs.getString("parent_id"));
                purchase.setmCourseId(rs.getString("course_id"));
                purchase.setmPurchased(rs.getString("purchased").equals("YES") ? true : false);

                purchases.add(purchase);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return purchases;
    }

    public List<Purchase> getNotPurchasedCourse (String username) {
        String sql = "SELECT * FROM purchase WHERE parent_id = ? AND purchased = 'NO'";
        List<Purchase> purchases = new ArrayList<>();
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1,username);
            ResultSet rs = statement.executeQuery();

            while (rs.next()) {
                Purchase purchase = new Purchase();
                purchase.setmParentId(rs.getString("parent_id"));
                purchase.setmCourseId(rs.getString("course_id"));
                purchase.setmPurchased(rs.getString("purchased").equals("YES") ? true : false);

                purchases.add(purchase);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return purchases;
    }

    public Course getCourseById(String course_id) {
        String sql = "SELECT * FROM course WHERE course_id = ?";
        Course course = new Course();
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, course_id);
            ResultSet rs = statement.executeQuery();

            while (rs.next()) {
                course.setCourseId(rs.getString("course_id"));
                course.setCourseName(rs.getString("course_name"));
                course.setTime(rs.getString("time"));
                course.setPlace(rs.getString("place"));
                course.setContent(rs.getString("content"));
                course.setTeachId(rs.getString("teach_id"));
                course.setAgeRecommend(rs.getInt("age_recommend"));
                course.setPrice(rs.getInt("price"));
                course.setCourseField(Course.CourseField.valueOf(rs.getString("course_field")));
                course.setHomeWork(rs.getString("homework"));

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return course;
    }

    public List<News> getPostInfo (String username) {
        String sql = "SELECT * FROM news WHERE course_id IN (SELECT course_id FROM purchase WHERE parent_id = ? AND purchased = 'YES')";
        List<News> newsList = new ArrayList<>();
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1,username);
            ResultSet rs = statement.executeQuery();

            while (rs.next()) {
                News news = new News();
                news.setmNewsId(rs.getString("news_id"));
                news.setmPublisher(rs.getString("publisher"));
                news.setmTime(rs.getString("time"));
                news.setmTitle(rs.getString("title"));
                news.setmContent(rs.getString("content"));

                newsList.add(news);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return newsList;
    }

    public List<Teacher> getReviewTeacher () {
        String sql = "SELECT * FROM teacher WHERE qualified = 'CHECK'";
        List<Teacher> teachers = new ArrayList<>();
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();

            while (rs.next()) {
                Teacher teacher = new Teacher();
                teacher.setUsername(rs.getString("user_name"));
                teacher.setmTeacherName(rs.getString("tea_name"));
                teacher.setmTeacherGender(Account.Gender.valueOf(rs.getString("tea_gender")));
                teacher.setmTeacherBirthday(rs.getString("tea_birthday"));
                teacher.setmTeacherIdNumber(rs.getString("tea_id_number"));
                teacher.setmTeacherContact(rs.getString("tea_contact"));
                teacher.setmTeacherIntroduction(rs.getString("tea_introduction"));
                teacher.setmCourseField(Course.CourseField.valueOf((rs.getString("edu_field"))));
                teacher.setmEduYear(rs.getInt("edu_year"));
                teacher.setmEduAge(rs.getInt("edu_age"));
                teacher.setmQualified(Account.Qualified.valueOf(rs.getString("qualified")));

                teachers.add(teacher);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return teachers;
    }

    public List<PreviewApp> getTeachPreviewApp(String teach_id) {
        String sql = "SELECT  * FROM previewapp WHERE course_id IN (" +
                "SELECT course_id FROM course WHERE teach_id = ?)";
        List<PreviewApp> previewApps = new ArrayList<>();
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, teach_id);
            ResultSet rs = statement.executeQuery();

            while (rs.next()) {
                PreviewApp previewApp = new PreviewApp();
                previewApp.setmParentId(rs.getString("parent_id"));
                previewApp.setmCourseId(rs.getString("course_id"));
                previewApp.setmAgreement(rs.getString("agreement").equals("YES") ? true : false);

                previewApps.add(previewApp);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return previewApps;
    }

    public PreviewApp getPreviewAppByPrimaryKey(String course_id, String parent_id) {
        String sql = "SELECT  * FROM previewapp WHERE course_id = ? AND parent_id = ?";
        PreviewApp previewApp = new PreviewApp();
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, course_id);
            statement.setString(2, parent_id);
            ResultSet rs = statement.executeQuery();

            while (rs.next()) {
                previewApp.setmParentId(rs.getString("parent_id"));
                previewApp.setmCourseId(rs.getString("course_id"));
                previewApp.setmAgreement(rs.getString("agreement").equals("YES") ? true : false);

                return previewApp;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return previewApp;
    }

    public List<EduOrg> getReviewEduOrg () {
        String sql = "SELECT * FROM eduorg WHERE qualified = 'CHECK'";
        List<EduOrg> eduOrgs = new ArrayList<>();
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();

            while (rs.next()) {
                EduOrg org = new EduOrg();
                org.setUsername(rs.getString("user_name"));
                org.setOrgCode(rs.getString("org_code"));
                org.setOrgAddress(rs.getString("org_address"));
                org.setOrgContact(rs.getString("org_contact"));
                org.setOrgIntroduction(rs.getString("org_introduction"));
                org.setOrgEduField(Course.CourseField.valueOf(rs.getString("edu_field")));
                org.setOrgEduAge(rs.getInt("edu_age"));
                org.setQualified(Account.Qualified.valueOf(rs.getString("qualified")));

                eduOrgs.add(org);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return eduOrgs;
    }

    public List<Course> getTeacherCourseList(String username) {
        String sql = "SELECT * FROM course WHERE teach_id = ?";

        List<Course> courses = new ArrayList<>();
        try {
            PreparedStatement statement = connection.prepareStatement(sql);

            statement.setString(1, username);

            ResultSet rs = statement.executeQuery();

            while (rs.next()) {
                Course course = new Course();
                course.setCourseId(rs.getString("course_id"));
                course.setCourseName(rs.getString("course_name"));
                course.setTime(rs.getString("time"));
                course.setPlace(rs.getString("place"));
                course.setContent(rs.getString("content"));
                course.setTeachId(rs.getString("teach_id"));
                course.setAgeRecommend(rs.getInt("age_recommend"));
                course.setPrice(rs.getInt("price"));
                course.setCourseField(Course.CourseField.valueOf(rs.getString("course_field")));
                course.setHomeWork(rs.getString("homework"));

                courses.add(course);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return courses;
    }

    public List<Video> getVideoInfo() {
        String sql = "SELECT * FROM video";
        List<Video> videos = new ArrayList<>();

        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Video video = new Video();
                video.setmVideo_id(rs.getString("video_id"));
                video.setmTime(rs.getString("time"));
                video.setmUrl(rs.getString("video_url"));
                video.setmPublisher(rs.getString("publisher"));

                videos.add(video);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return videos;
    }

    public CourseComment getCourseCommentByPrimaryKey(String course_id, String publisher) {
        String sql = "SELECT  * FROM coursecomment WHERE course_id = ? AND publisher = ?";
        CourseComment courseComment = new CourseComment();
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, course_id);
            statement.setString(2, publisher);
            ResultSet rs = statement.executeQuery();

            while (rs.next()) {
                courseComment.setCourseId(rs.getString("course_id"));
                courseComment.setPublisher(rs.getString("publisher"));
                courseComment.setContent(rs.getString("content"));
                courseComment.setScore(rs.getInt("score"));
                courseComment.setPicId(rs.getString("picture_id"));
                return courseComment;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return courseComment;
    }

    public TeachComment getTeachCommentByPrimaryKey(String teachId, String publisher) {
        String sql = "SELECT  * FROM teachcomment WHERE teach_id = ? AND publisher = ?";
        TeachComment teachComment = new TeachComment();
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, teachId);
            statement.setString(2, publisher);
            ResultSet rs = statement.executeQuery();

            while (rs.next()) {
                teachComment.setTeachId(rs.getString("teach_id"));
                teachComment.setPublisher(rs.getString("publisher"));
                teachComment.setContent(rs.getString("content"));
                teachComment.setScore(rs.getInt("score"));
                teachComment.setPicId(rs.getString("picture_id"));
                return teachComment;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return teachComment;
    }

    public List<CourseComment> getCourseComment (String course_id) {
        String sql = "SELECT * FROM coursecomment WHERE course_id = ? ORDER BY score DESC";
        List<CourseComment> courseComments = new ArrayList<>();
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1,course_id);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                CourseComment courseComment = new CourseComment();
                courseComment.setCourseId(course_id);
                courseComment.setPublisher(rs.getString("publisher"));
                courseComment.setContent(rs.getString("content"));
                courseComment.setScore(rs.getInt("score"));
                courseComment.setPicId(rs.getString("picture_id"));

                courseComments.add(courseComment);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return courseComments;
    }

    public ImageIcon getPictureById(String id) {
        String sql = "SELECT pic_blob FROM pictures WHERE picture_id = ?";

        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, id);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Blob blob = rs.getBlob(1);
                blob.getBinaryStream();
                ImageIcon imageIcon = new ImageIcon(blob.getBytes(1, (int) blob.length()));
                return imageIcon;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (NullPointerException e) {
            e.printStackTrace();
        }
        return new ImageIcon();
    }

    //数据库的插入操作
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
            statement.setString(8, org.isQualified().toString());
            statement.executeUpdate();

            System.out.println("插入成功！");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void insertTeacher (Teacher teacher){
        insertAccount(teacher);

        String sql = "INSERT INTO teacher (user_name, tea_name, tea_gender, tea_birthday, tea_id_number, " +
                "tea_contact, edu_field, edu_year, edu_age, tea_introduction, qualified) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
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
            statement.setString(11,teacher.isQualified().toString());
            statement.executeUpdate();

            System.out.println("插入成功！");
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public void insertCourse (Course course) {
        String sql = "INSERT INTO course (course_id, course_name, time, place, content, teach_id, age_recommend, price, course_field,"+
                " homework, avg_mark, mark_count) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1,course.getCourseId());
            statement.setString(2,course.getCourseName());
            statement.setString(3,course.getTime());
            statement.setString(4, course.getPlace());
            statement.setString(5,course.getContent());
            statement.setString(6,course.getTeachId());
            statement.setInt(7,course.getAgeRecommend());
            statement.setInt(8,course.getPrice());
            statement.setString(9,course.getCourseField().toString());
            statement.setString(10,course.getHomeWork());
            statement.executeUpdate();

            System.out.println("插入成功！");
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public void insertNews (News news) {
        String sql = "INSERT INTO news (news_id, publisher, time, title, content, course_id) VALUES (?, ?, ?, ?, ?, ?)";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1,news.getmNewsId());
            statement.setString(2,news.getmPublisher());
            statement.setString(3,news.getmTime());
            statement.setString(4,news.getmTitle());
            statement.setString(5,news.getmContent());
            statement.setString(6,news.getmCourseId());
            statement.executeUpdate();

            System.out.println("插入成功！");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void insertNewsComment (NewsComment newsComment) {
        String sql = "INSERT INTO newscomment (comment_id, news_id, publisher, time, content) VALUES (?, ?, ?, ?, ?)";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1,newsComment.getmCommentId());
            statement.setString(2,newsComment.getmNewsId());
            statement.setString(3,newsComment.getmPublisher());
            statement.setString(4,newsComment.getmTime());
            statement.setString(5,newsComment.getmContent());
            statement.executeUpdate();

            System.out.println("插入成功！");
        } catch (SQLException e){
            e.printStackTrace();
        }
    }

    public void insertPreviewApp (PreviewApp previewApp) {
        String sql = "INSERT INTO previewapp (parent_id, course_id, agreement) VALUES (?, ?, ?)";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1,previewApp.getmParentId());
            statement.setString(2,previewApp.getmCourseId());
            statement.setString(3,previewApp.ismAgreement() ? "YES" : "NO");
            statement.executeUpdate();

            System.out.println("插入成功！");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void insertPurchase (Purchase purchase) {
        String sql = "INSERT INTO purchase (parent_id, course_id, purchased) VALUES (?, ?, ?)";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1,purchase.getmParentId());
            statement.setString(2,purchase.getmCourseId());
            statement.setString(3,purchase.ismPurchased() ? "YES" : "NO");
            statement.executeUpdate();

            System.out.println("插入成功！");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void insertVideo (Video video) {
        String sql = "INSERT INTO video (video_id, time, video_url, publisher) VALUES (?, ?, ?, ?)";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1,video.getmVideo_id());
            statement.setString(2,video.getmTime());
            statement.setString(3,video.getmUrl());
            statement.setString(4,video.getmPublisher());
            statement.executeUpdate();

            System.out.println("插入成功！");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void insertCourseComment(CourseComment comment) {
        String sql = "INSERT INTO coursecomment (course_id, publisher, content, score, picture_id) VALUES (?, ?, ?, ?, ?)";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, comment.getCourseId());
            statement.setString(2, comment.getPublisher());
            statement.setString(3, comment.getContent());
            statement.setInt(4, comment.getScore());
            statement.setString(5, comment.getPicId());
            statement.executeUpdate();

            System.out.println("插入成功！");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void insertTeachComment(TeachComment comment) {
        String sql = "INSERT INTO teachcomment (teach_id, publisher, content, score, picture_id) VALUES (?, ?, ?, ?, ?)";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, comment.getTeachId());
            statement.setString(2, comment.getPublisher());
            statement.setString(3, comment.getContent());
            statement.setInt(4, comment.getScore());
            statement.setString(5, comment.getPicId());
            statement.executeUpdate();

            System.out.println("插入成功！");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void insertPicture(String picId, String filePath) {
        String sql = "INSERT INTO pictures (picture_id, pic_blob) VALUES (?, ?)";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);

            File file = new File(filePath);
            InputStream stream = new FileInputStream(file);

            statement.setString(1, picId);
            statement.setBinaryStream(2, stream, (int) file.length());
            statement.executeUpdate();

            System.out.println("插入成功！");
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
    }

    //数据库的更新操作
    public void updateAccount(Account account) {
        try {
            String sql = "UPDATE account SET password = ?, tel = ?, email = ? WHERE user_name = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, account.getPassword());
            statement.setString(2, account.getTel());
            statement.setString(3, account.getEmail());
            statement.setString(4, account.getUsername());
            statement.executeUpdate();

            System.out.println("更新成功！");
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public void updateEduOrg(EduOrg org) {

        updateAccount(org);

        try {

            String sql = "UPDATE eduorg SET org_address = ?, org_contact = ?, org_introduction = ?, edu_field = ?, edu_age = ?, qualified = ? WHERE user_name = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, org.getOrgAddress());
            statement.setString(2, org.getOrgContact());
            statement.setString(3, org.getOrgIntroduction());
            statement.setString(4, org.getOrgEduField().toString());
            statement.setInt(5, org.getOrgEduAge());
            statement.setString(6,org.isQualified().toString());
            statement.setString(7, org.getUsername());
            statement.executeUpdate();

            System.out.println("更新成功！");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void updateTeacher(Teacher teacher) {

        updateAccount(teacher);

        try {
            String sql = "UPDATE teacher SET tea_name = ?, tea_gender = ?, tea_birthday = ?, tea_id_number = ?, tea_contact = ?, edu_field = ?, edu_year = ?, edu_age = ?, tea_introduction = ?, qualified = ? where user_name = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1,teacher.getmTeacherName());
            statement.setString(2,teacher.getmTeacherGender().toString());
            statement.setString(3,teacher.getmTeacherBirthday());
            statement.setString(4,teacher.getmTeacherIdNumber());
            statement.setString(5,teacher.getmTeacherContact());
            statement.setString(6,teacher.getmCourseField().toString());
            statement.setInt(7,teacher.getmEduYear());
            statement.setInt(8,teacher.getmEduAge());
            statement.setString(9, teacher.getmTeacherIntroduction());
            statement.setString(10,teacher.isQualified().toString());
            statement.setString(11,teacher.getUsername());
            statement.executeUpdate();

            System.out.println("更新成功！");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void updateParent (Parent parent){

        updateAccount(parent);

        try {
            String sql = "UPDATE parent SET child_name = ?, child_birthday = ?, child_gender = ?, parent_name = ?, parent_contact = ?, course_field = ?, course_cost = ?, course_place = ? WHERE user_name = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1,parent.getChildName());
            statement.setString(2,parent.getChildBirthday());
            statement.setString(3,parent.getChildGender().toString());
            statement.setString(4,parent.getParentName());
            statement.setString(5,parent.getParentContact());
            statement.setString(6,parent.getCourseField().toString());
            statement.setInt(7,parent.getCourseCost());
            statement.setString(8,parent.getCoursePlace());
            statement.setString(9,parent.getUsername());
            statement.executeUpdate();

            System.out.println("更新成功！");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void updateCourse(Course course) {
        try {
            String sql = "UPDATE course SET course_name = ?, time = ?, place = ?, content = ?, teach_id = ?, " +
                    "age_recommend = ?, price = ?, course_field = ?, homework = ?, avg_mark = ?, mark_count = ?" +
                    " WHERE course_id = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, course.getCourseName());
            statement.setString(2, course.getTime());
            statement.setString(3, course.getPlace());
            statement.setString(4, course.getContent());
            statement.setString(5, course.getTeachId());
            statement.setInt(6, course.getAgeRecommend());
            statement.setInt(7, course.getPrice());
            statement.setString(8, course.getCourseField().toString());
            statement.setString(9, course.getHomeWork());
            statement.setString(10, course.getCourseId());
            statement.executeUpdate();

            System.out.println("更新成功！");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    public void updateNews (News news) {
        try {
            String sql = "UPDATE news SET publisher = ?, time = ?, title = ?,content = ?,course_id = ? WHERE news_id = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1,news.getmPublisher());
            statement.setString(2,news.getmTime());
            statement.setString(3,news.getmTitle());
            statement.setString(4,news.getmContent());
            statement.setString(5,news.getmCourseId());
            statement.setString(6,news.getmNewsId());
            statement.executeUpdate();

            System.out.println("更新成功！");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void updatePurchase(Purchase purchase) {
        String sql = "UPDATE purchase SET purchased = ? WHERE parent_id = ? AND course_id = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1,purchase.ismPurchased() ? "YES" : "NO");
            statement.setString(2,purchase.getmParentId());
            statement.setString(3,purchase.getmCourseId());
            statement.executeUpdate();

            System.out.println("更新成功！");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void updatePreviewApp(PreviewApp previewApp) {
        String sql = "UPDATE previewapp SET agreement = ? WHERE parent_id = ? AND course_id = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, previewApp.ismAgreement() ? "YES" : "NO");
            statement.setString(2, previewApp.getmParentId());
            statement.setString(3, previewApp.getmCourseId());
            statement.executeUpdate();

            System.out.println("更新成功！");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void updateNewsComment (NewsComment newsComment) {
        String sql = "UPDATE newscomment SET content = ? WHERE comment_id = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1,newsComment.getmContent());
            statement.setString(2,newsComment.getmCommentId());
            statement.executeUpdate();

            System.out.println("更新成功！");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void updateVideo (Video video) {
        String sql = "UPDATE video SET time = ?, video_url = ?, publisher = ? WHERE video_id = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1,video.getmTime());
            statement.setString(2,video.getmUrl());
            statement.setString(4,video.getmVideo_id());
            statement.setString(3,video.getmPublisher());
            statement.executeUpdate();

            System.out.println("更新成功！");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void updatePicture(String picId, String filePath) {
        String sql = "UPDATE pictures SET pic_blob = ? WHERE picture_id = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);

            File file = new File(filePath);
            InputStream stream = new FileInputStream(file);

            statement.setBinaryStream(1, stream, (int) file.length());
            statement.setString(2, picId);
            statement.executeUpdate();

            System.out.println("更新成功！");
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
    }

    public void updateCourseComment(CourseComment comment) {
        String sql = "UPDATE coursecomment SET content = ?, score = ?, picture_id = ? WHERE course_id = ? AND publisher = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, comment.getContent());
            statement.setInt(2, comment.getScore());
            statement.setString(3, comment.getPicId());
            statement.setString(4, comment.getCourseId());
            statement.setString(5, comment.getPublisher());
            statement.executeUpdate();

            System.out.println("更新成功！");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void updateTeachComment(TeachComment comment) {
        String sql = "UPDATE teachcomment SET content = ?, score = ?, picture_id = ? WHERE teach_id = ? AND publisher = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, comment.getContent());
            statement.setInt(2, comment.getScore());
            statement.setString(3, comment.getPicId());
            statement.setString(4, comment.getTeachId());
            statement.setString(5, comment.getPublisher());
            statement.executeUpdate();

            System.out.println("更新成功！");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deletePicture(String picId) {
        String sql = "DELETE FROM pictures WHERE picture_id = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, picId);
            statement.executeUpdate();

            System.out.println("删除成功！");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deleteCourseComment(String courseId, String publisher) {

        CourseComment courseComment = getCourseCommentByPrimaryKey(courseId, publisher);

        String sql = "DELETE FROM coursecomment WHERE course_id = ? AND publisher = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, courseId);
            statement.setString(2, publisher);
            statement.executeUpdate();

            System.out.println("删除成功！");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        if (!courseComment.getPicId().equals("NO_PIC"))
            deletePicture(courseComment.getPicId());
    }

    public void deleteTeachComment(String teachId, String publisher) {

        TeachComment teachComment = getTeachCommentByPrimaryKey(teachId, publisher);

        String sql = "DELETE FROM teachcomment WHERE teach_id = ? AND publisher = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, teachId);
            statement.setString(2, publisher);
            statement.executeUpdate();

            System.out.println("删除成功！");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        if (!teachComment.getPicId().equals("NO_PIC"))
            deletePicture(teachComment.getPicId());
    }

    public void deleteAccount (String user_name) {
        String sql = "DELETE FROM account WHERE user_name = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, user_name);
            statement.executeUpdate();

            System.out.println("删除成功！");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deleteParent (String user_name) {
        String sql = "DELETE FROM parent WHERE user_name = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, user_name);
            statement.executeUpdate();

            System.out.println("删除成功！");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deleteTeacher (String user_name) {
        String sql = "DELETE FROM teacher WHERE user_name = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, user_name);
            statement.executeUpdate();

            System.out.println("删除成功！");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deleteEduOrg (String user_name) {
        String sql = "DELETE FROM eduorg WHERE user_name = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, user_name);
            statement.executeUpdate();

            System.out.println("删除成功！");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deleteCourse (String course_id) {
        String sql = "DELETE FROM course WHERE course_id = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, course_id);
            statement.executeUpdate();

            System.out.println("删除成功！");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deleteNews (String news_id) {
        String sql = "DELETE FROM news WHERE news_id = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1,news_id);
            statement.executeUpdate();

            System.out.println("删除成功！");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deletePurchase(String parent_id, String course_id) {
        String sql = "DELETE FROM purchase WHERE parent_id = ? AND course_id = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, parent_id);
            statement.setString(2, course_id);
            statement.executeUpdate();

            System.out.println("删除成功！");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deleteParentPreview(String parent_username, String course_id) {
        String sql = "DELETE FROM previewapp WHERE parent_id = ? AND course_id = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, parent_username);
            statement.setString(2, course_id);
            statement.executeUpdate();

            System.out.println("删除成功！");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deleteNewsComment (String newcomment_id) {
        String sql = "DELETE FROM newscomment WHERE comment_id = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1,newcomment_id);
            statement.executeUpdate();

            System.out.println("删除成功！");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deleteVideo (String video_id) {
        String sql = "DELETE FROM video WHERE video_id = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1,video_id);
            statement.executeUpdate();

            System.out.println("删除成功！");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
