package view;

import DAO.MySQLDAO;
import model.*;
import model.account.Account;
import model.account.EduOrg;
import model.account.Parent;
import model.account.Teacher;
import utils.Constants;

import javax.swing.*;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableCellEditor;
import javax.swing.table.TableColumn;
import javax.swing.text.DateFormatter;
import javax.swing.text.DefaultFormatterFactory;
import javax.swing.text.MaskFormatter;
import javax.swing.text.NumberFormatter;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

public class MainWindow {
    private Account User;
    private List<News> newsList;
    private List<EduOrg> OrgRegApplyList;
    private List<Teacher> TeacherRegApplyList;
    private List<Video> videoList;
    private int currentRow;

    private JPanel MainWindowPanel;
    private JPanel ButtonPanel;
    private JPanel CardPanel;
    private JButton NotificationButton;
    private JButton AccountInfoButton;
    private JButton CourseListButton;
    private JButton CourseQueryButton;
    private JButton CourseSearch;
    private JButton ShoppingCartButton;
    private JPanel NotificationPanel;
    private JPanel AccountInfoPanel;
    private JPanel CourseListPanel;
    private JTextField UserField;
    private JTextField ChildNameField;
    private JLabel UserLabel;
    private JLabel PasswdLabel;
    private JPasswordField PasswdField;
    private JLabel ChildNameLabel;
    private JLabel ChildBirLabel;
    private JFormattedTextField ChildBirField;
    private JLabel ChildGenderLabel;
    private JLabel ParentNameLabel;
    private JLabel TelephoneLabel;
    private JLabel EmailLabel;
    private JTextField ParentNameField;
    private JPanel CourseQueryPanel;
    private JTable mCourseQueryTable;
    private JComboBox mCourseFieldComboBox;
    private JTextField mPlaceField;
    private JSpinner mAgeSpin;
    private JComboBox mPriceRangeComboBox;
    private JLabel FieldLabel;
    private JLabel PlaceLabel;
    private JLabel EduAgeLabel;
    private JLabel PriceRangeLabel;
    private JButton mCourseQueryButton;
    private JLabel ParentContactLabel;
    private JTextField ParentContactField;
    private JFormattedTextField TelephoneField;
    private JTextField EmailField;
    private JLabel OrgCodeLabel;
    private JTextField OrgCodeField;
    private JLabel OrgAddressLabel;
    private JTextField OrgAddressField;
    private JLabel OrgCourseLabel;
    private JTextField OrgEduFieldField;
    private JLabel OrgEduAgeLabel;
    private JFormattedTextField OrgEduAgeField;
    private JLabel OrgContactLabel;
    private JTextField OrgContactField;
    private JLabel OrgIntroductionLabel;
    private JTextField OrgIntroductionField;
    private JTextField TeacherNameField;
    private JFormattedTextField TeacherYearLabelField;
    private JFormattedTextField TeacherEduAgeField;
    private JTextField TeacherContactField;
    private JTextField TeacherIntroductionField;
    private JLabel TeacherIntroductionLabel;
    private JLabel TeacherEduAgeLabel;
    private JLabel TeacherCourseLabel;
    private JLabel TeacherAgeLabel;
    private JLabel TeacherNameLabel;
    private JLabel TeacherGenderLabel;
    private JLabel TeacherIDLabel;
    private JFormattedTextField TeacherAgeField;
    private JFormattedTextField TeacherIDField;
    private JTextField TeacherEduFieldField;
    private JLabel TeacherYearLabel;
    private JLabel TeacherContactLabel;
    private JButton ChangeButton;
    private JButton SaveButton;
    private JLabel ChildAgeLabel;
    private JFormattedTextField ChildAgeField;
    private JFormattedTextField TeacherGenderField;
    private JFormattedTextField ChildGenderField;
    private JPanel CourseInsertPanel;
    private JButton CourseInsertButton;
    private JComboBox TeacherGenderComboBox;
    private JComboBox ChildGenderComboBox;
    private JComboBox TeacherCourseComboBox;
    private JComboBox OrgCourseComboBox;
    private JTextField mCourseIdTextField;
    private JTextField mCourseNameTextField;
    private JLabel CourseIdLabel;
    private JLabel CourseNameLabel;
    private JTextField mCourseTimeTextField;
    private JTextField mCoursePlaceTextField;
    private JLabel CourseTimeLabel;
    private JLabel CoursePlaceLabel;
    private JTextField mCourseContentTextField;
    private JSpinner mCourseAgeSpinner;
    private JLabel CourseContentLabel;
    private JLabel CourseAgeLabel;
    private JLabel CoursePriceLabel;
    private JSpinner mCoursePriceSpinner;
    private JLabel CourseFieldLabel;
    private JComboBox mInsertCourseFieldComboBox;
    private JLabel CourseHomework;
    private JTextField mCourseHomeworkTextField;
    private JButton mInsertCourseButton;
    private JButton AddButton;
    private JButton DeleteButton;
    private JScrollPane TableScrollPane;
    private JTable NotificationTable;
    private JTable mCourseTable;
    private JButton mRefreshCourseButton;
    private JButton mEditSaveButton;
    private JButton mDeleteCourseButton;
    private JPanel ShoppingCartPanel;
    private JButton mAddToCartButton;
    private JButton mPurchaseButton;
    private JTable mShoppingCartTable;
    private JButton mRemoveCartButton;
    private JButton mPreviewButton;
    private JButton MyPreviewButton;
    private JPanel ParentPreviewPanel;
    private JButton mCancelPreviewButton;
    private JTable mMyPreviewTable;
    private JPanel PreviewAppPanel;
    private JButton PreviewAppButton;
    private JTable mPreviewAppTable;
    private JButton mPermitButton;
    private JButton OrgRegApplyButton;
    private JButton TeacherRegApplyButton;
    private JPanel OrgRegApplyPanel;
    private JPanel TeacherRegApplyPanel;
    private JButton OrgRegApplyAgreeButton;
    private JButton OrgRegApplyRejectButton;
    private JTable OrgRegApplyTable;
    private JButton TeacherRegApplyAgreeButton;
    private JButton TeacherRegApplyRejectButton;
    private JTable TeacherRegApplyTable;
    private JButton VideoButton;
    private JPanel VideoPanel;
    private JButton VideoAddButton;
    private JButton VideoDeleteButton;
    private JTable VideoTable;
    private JButton mCommentButton;
    private JButton EditCourseCommentButton;
    private JPanel EditCourseCommentPanel;
    private JTable mParentCourseCommentTable;
    private JButton EditTeachCommentButton;
    private JPanel EditTeachCommentPanel;
    private JTable mParentTeachCommentTable;
    private CardLayout cl;

    public MainWindow(Account user) {
        User = user;
        newsList = MySQLDAO.getInstance().getNewsInfo(user);
        OrgRegApplyList = MySQLDAO.getInstance().getReviewEduOrg();
        TeacherRegApplyList = MySQLDAO.getInstance().getReviewTeacher();
        videoList = MySQLDAO.getInstance().getVideoInfo();

        NotificationButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                cl.show(CardPanel, "Notification");

                if (User.getUserType() != Account.UserType.PARENT) {
                    AddButton.setVisible(true);
                    DeleteButton.setVisible(true);
                }

                currentRow = 1;
                newsList.clear();
                newsList = MySQLDAO.getInstance().getNewsInfo(user);

                Vector rowDataSet = new Vector();
                Vector names = new Vector();
                names.add("标题");
                names.add("作者");
                names.add("日期");
                for (News news : newsList) {
                    Vector rowData = new Vector();
                    rowData.add(news.getmTitle());
                    rowData.add(news.getmPublisher());
                    rowData.add(news.getmTime());
                    rowDataSet.add(rowData);
                }
                DefaultTableModel model = new DefaultTableModel(rowDataSet, names) {
                    public boolean isCellEditable(int row, int column) {
                        return false;
                    }
                };
                NotificationTable.setModel(model);
                NotificationTable.getColumnModel().getColumn(0).setPreferredWidth(500);
                NotificationTable.setRowHeight(28);
                NotificationTable.getTableHeader().setPreferredSize(new Dimension(NotificationTable.getTableHeader().getWidth(), 28));
            }
        });
        NotificationTable.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                super.mouseClicked(e);
                currentRow = ((JTable) e.getSource()).rowAtPoint(e.getPoint());
                if (e.getClickCount() == 2) {
                    new NewsBulletinWindow(User, newsList.get(currentRow));
                }
            }
        });
        AddButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                new NewsBulletinWindow(User);
            }
        });
        DeleteButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                if (User.getUserType() == Account.UserType.SYSADMIN || User.getUsername() == newsList.get(currentRow).getmPublisher()) {
                    MySQLDAO.getInstance().deleteNews(newsList.get(currentRow).getmNewsId());
                    NotificationButton.doClick();
                } else {
                    JOptionPane.showMessageDialog(null, "无权限！");
                }
            }
        });
        VideoButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                cl.show(CardPanel, "Video");

                if (User.getUserType() == Account.UserType.SYSADMIN) {
                    VideoAddButton.setVisible(true);
                    VideoDeleteButton.setVisible(true);
                }

                currentRow = 1;
                videoList.clear();
                videoList = MySQLDAO.getInstance().getVideoInfo();

                Vector rowDataSet = new Vector();
                Vector names = new Vector();
                names.add("标题");
                names.add("发布者");
                names.add("日期");
                names.add("URL");
                for (Video video : videoList) {
                    Vector rowData = new Vector();
                    rowData.add(video.getmVideo_id());
                    rowData.add(video.getmPublisher());
                    rowData.add(video.getmTime());
                    rowData.add(video.getmUrl());
                    rowDataSet.add(rowData);
                }
                DefaultTableModel model = new DefaultTableModel(rowDataSet, names) {
                    public boolean isCellEditable(int row, int column) {
                        return false;
                    }
                };
                VideoTable.setModel(model);
                VideoTable.setRowHeight(28);
                VideoTable.getTableHeader().setPreferredSize(new Dimension(VideoTable.getTableHeader().getWidth(), 28));

            }
        });
        VideoTable.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                super.mouseClicked(e);
                currentRow = ((JTable) e.getSource()).rowAtPoint(e.getPoint());
                if (e.getClickCount() == 2) {
                    new VideoWindow(User, videoList.get(currentRow));
                }
            }
        });
        VideoAddButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                new VideoWindow(User);
            }
        });
        VideoDeleteButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                if (User.getUserType() == Account.UserType.SYSADMIN) {
                    MySQLDAO.getInstance().deleteVideo(videoList.get(currentRow).getmVideo_id());
                    VideoButton.doClick();
                } else {
                    JOptionPane.showMessageDialog(null, "无权限！");
                }
            }
        });
        AccountInfoButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                cl.show(CardPanel, "AccountInfo");
                ChangeButton.setEnabled(true);
                SaveButton.setEnabled(false);

                // JFormattedTextField 限制
                try {
                    DefaultFormatterFactory dateform = new DefaultFormatterFactory(new DateFormatter(new SimpleDateFormat("yyyy-MM-dd"))); // 日期
                    DefaultFormatterFactory phoneform = new DefaultFormatterFactory(new MaskFormatter("###########"));     // 电话
                    DefaultFormatterFactory yearform = new DefaultFormatterFactory(new MaskFormatter("####"));             // 年
                    DefaultFormatterFactory IDform = new DefaultFormatterFactory(new MaskFormatter("#################*")); // 身份证号
                    DefaultFormatterFactory Numform = new DefaultFormatterFactory(new NumberFormatter(NumberFormat.getIntegerInstance())); // 数字
                    ChildBirField.setFormatterFactory(dateform);
                    ChildAgeField.setFormatterFactory(Numform);
                    TelephoneField.setFormatterFactory(phoneform);
                    OrgEduAgeField.setFormatterFactory(Numform);
                    TeacherYearLabelField.setFormatterFactory(yearform);
                    TeacherEduAgeField.setFormatterFactory(Numform);
                    TeacherAgeField.setFormatterFactory(Numform);
                    TeacherIDField.setFormatterFactory(IDform);
                } catch (Exception ex) {
                    ex.printStackTrace();
                    JOptionPane.showMessageDialog(null, ("信息有格式错误：" + ex.getMessage()));
                }

                // 复选框初始化
                for (Course.CourseField field : Course.CourseField.values()) {
                    TeacherCourseComboBox.addItem(field.toString());
                    OrgCourseComboBox.addItem(field.toString());
                }
                TeacherGenderComboBox.addItem("MALE");
                TeacherGenderComboBox.addItem("FEMALE");
                ChildGenderComboBox.addItem("MALE");
                ChildGenderComboBox.addItem("FEMALE");

                // 各个用户界面
                switch (User.getUserType()) {
                    case SYSADMIN:
                        break;
                    case EDUORG:
                        OrgCodeLabel.setVisible(true);
                        OrgCodeField.setVisible(true);
                        OrgAddressLabel.setVisible(true);
                        OrgAddressField.setVisible(true);
                        OrgCourseLabel.setVisible(true);
                        OrgCourseComboBox.setVisible(true);
                        OrgEduAgeLabel.setVisible(true);
                        OrgEduAgeField.setVisible(true);
                        OrgContactLabel.setVisible(true);
                        OrgContactField.setVisible(true);
                        OrgIntroductionLabel.setVisible(true);
                        OrgIntroductionField.setVisible(true);
                        break;
                    case TEACHER:
                        TeacherNameField.setVisible(true);
                        TeacherGenderComboBox.setVisible(true);
                        TeacherYearLabelField.setVisible(true);
                        TeacherEduAgeField.setVisible(true);
                        TeacherContactField.setVisible(true);
                        TeacherIntroductionField.setVisible(true);
                        TeacherIntroductionLabel.setVisible(true);
                        TeacherEduAgeLabel.setVisible(true);
                        TeacherCourseLabel.setVisible(true);
                        TeacherAgeLabel.setVisible(true);
                        TeacherNameLabel.setVisible(true);
                        TeacherGenderLabel.setVisible(true);
                        TeacherIDLabel.setVisible(true);
                        TeacherAgeField.setVisible(true);
                        TeacherIDField.setVisible(true);
                        TeacherCourseComboBox.setVisible(true);
                        TeacherYearLabel.setVisible(true);
                        TeacherContactLabel.setVisible(true);
                        break;
                    case PARENT:
                        ChildNameLabel.setVisible(true);
                        ChildAgeLabel.setVisible(true);
                        ChildAgeField.setVisible(true);
                        ChildBirLabel.setVisible(true);
                        ChildNameField.setVisible(true);
                        ChildBirField.setVisible(true);
                        ChildGenderLabel.setVisible(true);
                        ChildGenderComboBox.setVisible(true);
                        ParentNameLabel.setVisible(true);
                        ParentNameField.setVisible(true);
                        ParentContactLabel.setVisible(true);
                        ParentContactField.setVisible(true);
                        break;
                }

                // 得到数据
                UserField.setText(User.getUsername());
                PasswdField.setText(User.getPassword());
                TelephoneField.setText(User.getTel());
                EmailField.setText(User.getEmail());
                switch (User.getUserType()) {
                    case SYSADMIN:
                        break;
                    case EDUORG:
                        OrgCodeField.setText(((EduOrg) User).getOrgCode());
                        OrgAddressField.setText(((EduOrg) User).getOrgAddress());
                        OrgCourseComboBox.setSelectedIndex(((EduOrg) User).getOrgEduField().ordinal());
                        OrgEduAgeField.setText(String.valueOf(((EduOrg) User).getOrgEduAge()));
                        OrgContactField.setText(((EduOrg) User).getOrgContact());
                        OrgIntroductionField.setText(((EduOrg) User).getOrgIntroduction());
                        break;
                    case TEACHER:
                        TeacherNameField.setText(((Teacher) User).getmTeacherName());
                        TeacherYearLabelField.setText(String.valueOf(((Teacher) User).getmEduYear()));
                        TeacherEduAgeField.setText(String.valueOf(((Teacher) User).getmEduAge()));
                        TeacherContactField.setText(((Teacher) User).getmTeacherContact());
                        TeacherIntroductionField.setText(((Teacher) User).getmTeacherIntroduction());
                        TeacherAgeField.setText(String.valueOf(((Teacher) User).getTeaAge()));
                        TeacherIDField.setText(((Teacher) User).getmTeacherIdNumber());
                        TeacherCourseComboBox.setSelectedIndex(((Teacher) User).getmCourseField().ordinal());
                        TeacherGenderComboBox.setSelectedIndex(((Teacher) User).getmTeacherGender().ordinal());
                        break;
                    case PARENT:
                        ChildBirField.setText(((Parent) User).getChildBirthday());
                        ChildAgeField.setText(String.valueOf(((Parent) User).getChildAge()));
                        ChildNameField.setText(((Parent) User).getChildName());
                        ParentNameField.setText(((Parent) User).getParentName());
                        ParentContactField.setText(((Parent) User).getParentContact());
                        ChildGenderComboBox.setSelectedIndex(((Parent) User).getChildGender().ordinal());
                        break;
                }

                // 各个输入框设为不可编辑
                TelephoneField.setEditable(false);
                EmailField.setEditable(false);
                switch (User.getUserType()) {
                    case SYSADMIN:
                        break;
                    case EDUORG:
                        OrgAddressField.setEditable(false);
                        OrgCourseComboBox.setEnabled(false);
                        OrgEduAgeField.setEditable(false);
                        OrgContactField.setEditable(false);
                        OrgIntroductionField.setEditable(false);
                        break;
                    case TEACHER:
                        TeacherNameField.setEditable(false);
                        TeacherYearLabelField.setEditable(false);
                        TeacherEduAgeField.setEditable(false);
                        TeacherContactField.setEditable(false);
                        TeacherIntroductionField.setEditable(false);
                        TeacherAgeField.setEditable(false);
                        TeacherCourseComboBox.setEnabled(false);
                        TeacherGenderComboBox.setEnabled(false);
                        break;
                    case PARENT:
                        ChildBirField.setEditable(false);
                        ChildAgeField.setEditable(false);
                        ChildNameField.setEditable(false);
                        ParentNameField.setEditable(false);
                        ParentContactField.setEditable(false);
                        ChildGenderComboBox.setEnabled(false);
                        break;
                }
            }
        });
        ChangeButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                ChangeButton.setEnabled(false);
                SaveButton.setEnabled(true);

                // 各个输入框设为可编辑
                TelephoneField.setEditable(true);
                EmailField.setEditable(true);
                switch (User.getUserType()) {
                    case SYSADMIN:
                        break;
                    case EDUORG:
                        OrgAddressField.setEditable(true);
                        OrgCourseComboBox.setEnabled(true);
                        OrgEduAgeField.setEditable(true);
                        OrgContactField.setEditable(true);
                        OrgIntroductionField.setEditable(true);
                        break;
                    case TEACHER:
                        TeacherNameField.setEditable(true);
                        TeacherYearLabelField.setEditable(true);
                        TeacherEduAgeField.setEditable(true);
                        TeacherContactField.setEditable(true);
                        TeacherIntroductionField.setEditable(true);
                        TeacherAgeField.setEditable(true);
                        TeacherCourseComboBox.setEnabled(true);
                        TeacherGenderComboBox.setEnabled(true);
                        break;
                    case PARENT:
                        ChildBirField.setEditable(true);
                        ChildNameField.setEditable(true);
                        ParentNameField.setEditable(true);
                        ParentContactField.setEditable(true);
                        ChildGenderComboBox.setEnabled(true);
                        break;
                }
            }
        });
        SaveButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                ChangeButton.setEnabled(true);
                SaveButton.setEnabled(false);

                // 送出数据
                User.setUsername(UserField.getText());
                User.setPassword(new String(PasswdField.getPassword()));
                User.setTel(TelephoneField.getText());
                User.setEmail(EmailField.getText());
                switch (User.getUserType()) {
                    case SYSADMIN:
                        break;
                    case EDUORG:
                        ((EduOrg) User).setOrgCode(OrgCodeField.getText());
                        ((EduOrg) User).setOrgAddress(OrgAddressField.getText());
                        ((EduOrg) User).setOrgEduField(Course.CourseField.valueOf(OrgCourseComboBox.getSelectedItem().toString()));
                        ((EduOrg) User).setOrgEduAge(Integer.parseInt(OrgEduAgeField.getText()));
                        ((EduOrg) User).setOrgContact(OrgContactField.getText());
                        ((EduOrg) User).setOrgIntroduction(OrgIntroductionField.getText());
                        MySQLDAO.getInstance().updateEduOrg((EduOrg) User);
                        break;
                    case TEACHER:
                        ((Teacher) User).setmTeacherName(TeacherNameField.getText());
                        ((Teacher) User).setmEduYear(Integer.parseInt(TeacherYearLabelField.getText()));
                        ((Teacher) User).setmEduAge(Integer.parseInt(TeacherEduAgeField.getText()));
                        ((Teacher) User).setmTeacherContact(TeacherContactField.getText());
                        ((Teacher) User).setmTeacherIntroduction(TeacherIntroductionField.getText());
                        ((Teacher) User).setTeaAge(TeacherAgeField.getText());
                        ((Teacher) User).setmTeacherIdNumber(TeacherIDField.getText());
                        ((Teacher) User).setmCourseField(Course.CourseField.valueOf(TeacherCourseComboBox.getSelectedItem().toString()));
                        ((Teacher) User).setmTeacherGender(Account.Gender.valueOf(TeacherGenderComboBox.getSelectedItem().toString()));
                        MySQLDAO.getInstance().updateTeacher((Teacher) User);
                        break;
                    case PARENT:
                        ((Parent) User).setChildBirthday(ChildBirField.getText());
                        ((Parent) User).setChildName(ChildNameField.getText());
                        ((Parent) User).setParentName(ParentNameField.getText());
                        ((Parent) User).setParentContact(ParentContactField.getText());
                        ((Parent) User).setChildGender(Account.Gender.valueOf(ChildGenderComboBox.getSelectedItem().toString()));
                        MySQLDAO.getInstance().updateParent((Parent) User);
                        break;
                }

                // 各个输入框设为不可编辑
                TelephoneField.setEditable(false);
                EmailField.setEditable(false);
                switch (User.getUserType()) {
                    case SYSADMIN:
                        break;
                    case EDUORG:
                        OrgAddressField.setEditable(false);
                        OrgCourseComboBox.setEnabled(false);
                        OrgEduAgeField.setEditable(false);
                        OrgContactField.setEditable(false);
                        OrgIntroductionField.setEditable(false);
                        break;
                    case TEACHER:
                        TeacherNameField.setEditable(false);
                        TeacherYearLabelField.setEditable(false);
                        TeacherEduAgeField.setEditable(false);
                        TeacherContactField.setEditable(false);
                        TeacherIntroductionField.setEditable(false);
                        TeacherAgeField.setEditable(false);
                        TeacherCourseComboBox.setEnabled(false);
                        TeacherGenderComboBox.setEnabled(false);
                        break;
                    case PARENT:
                        ChildBirField.setEditable(false);
                        ChildAgeField.setEditable(false);
                        ChildNameField.setEditable(false);
                        ParentNameField.setEditable(false);
                        ParentContactField.setEditable(false);
                        ChildGenderComboBox.setEnabled(false);
                        break;
                }
            }
        });
        CourseListButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                cl.show(CardPanel, "CourseList");

                if (User.getUserType() == Account.UserType.PARENT) {
                    mEditSaveButton.setVisible(false);
                    mDeleteCourseButton.setVisible(false);
                } else {
                    mEditSaveButton.setVisible(true);
                    mDeleteCourseButton.setVisible(true);
                }
            }
        });
        CourseQueryButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                cl.show(CardPanel, "CourseQuery");
            }
        });
        CourseInsertButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                cl.show(CardPanel, "CourseInsert");
            }
        });

        ShoppingCartButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                cl.show(CardPanel, "ShoppingCart");

                List<Purchase> p = MySQLDAO.getInstance().getNotPurchasedCourse(User.getUsername());
                List<Course> courses = new ArrayList<>();
                for (int i = 0; i < p.size(); i++) {
                    courses.add(MySQLDAO.getInstance().getCourseById(p.get(i).getmCourseId()));
                }
                courses.sort(new Course.CourseComparator());
                Vector rowDataSet = new Vector();
                Vector names = new Vector();
                names.add("课程ID");
                names.add("课程名称");
                names.add("上课时间");
                names.add("上课地点");
                names.add("课程内容");
                names.add("教师ID");
                names.add("推荐年龄");
                names.add("价格");
                names.add("课程类别");
                names.add("作业");
                names.add("评分");
                for (Course course : courses){
                    Vector rowData = new Vector();
                    rowData.add(course.getCourseId());
                    rowData.add(course.getCourseName());
                    rowData.add(course.getTime());
                    rowData.add(course.getPlace());
                    rowData.add(course.getContent());
                    rowData.add(course.getTeachId());
                    rowData.add(course.getAgeRecommend());
                    rowData.add(course.getPrice());
                    rowData.add(course.getCourseField().toString());
                    rowData.add(course.getHomeWork());
                    rowData.add(course.getAvgScore());
                    rowDataSet.add(rowData);
                }
                DefaultTableModel model = new DefaultTableModel(rowDataSet, names) {
                    public boolean isCellEditable(int row, int column) {
                        return false;
                    }
                };
                mShoppingCartTable.setModel(model);
                mShoppingCartTable.setRowHeight(28);

                JComboBox box = Constants.getCourseFieldCombo();
                TableColumn column = mShoppingCartTable.getColumn("课程类别");
                TableCellEditor editor = new DefaultCellEditor(box);
                column.setCellEditor(editor);


            }
        });
        mCourseQueryButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                Course.CourseField field = Course.CourseField.valueOf(mCourseFieldComboBox.getSelectedItem().toString());
                String place = mPlaceField.getText();
                int age = Integer.parseInt(mAgeSpin.getValue().toString());
                int minprice[] = {0, 201, 501, 751, 1001, 2000};
                int maxprice[] = {200, 500, 750, 1000, 2000, Integer.MAX_VALUE};
                int index = mPriceRangeComboBox.getSelectedIndex();
                int minPrice = minprice[index];
                int maxPrice = maxprice[index];
                List<Course> courses = MySQLDAO.getInstance().getCourseInfo(field, place, age, minPrice, maxPrice);
                //System.out.println(field.toString() + place + String.valueOf(age) + minPrice + maxPrice);
                courses.sort(new Course.CourseComparator());
                Vector rowDataSet = new Vector();
                Vector names = new Vector();
                names.add("课程ID");
                names.add("课程名称");
                names.add("上课时间");
                names.add("上课地点");
                names.add("课程内容");
                names.add("教师ID");
                names.add("推荐年龄");
                names.add("价格");
                names.add("课程类别");
                names.add("作业");
                names.add("评分");
                for (Course course : courses){
                    Vector rowData = new Vector();
                    rowData.add(course.getCourseId());
                    rowData.add(course.getCourseName());
                    rowData.add(course.getTime());
                    rowData.add(course.getPlace());
                    rowData.add(course.getContent());
                    rowData.add(course.getTeachId());
                    rowData.add(course.getAgeRecommend());
                    rowData.add(course.getPrice());
                    rowData.add(course.getCourseField().toString());
                    rowData.add(course.getHomeWork());
                    rowData.add(course.getAvgScore());
                    rowDataSet.add(rowData);
                }
                DefaultTableModel model = new DefaultTableModel(rowDataSet, names) {
                    public boolean isCellEditable(int row, int column) {
                        return false;
                    }
                };
                mCourseQueryTable.setModel(model);
                mCourseQueryTable.setRowHeight(28);
                if (courses.size() == 0)
                    JOptionPane.showMessageDialog(null, "抱歉，未找到所需的结果");
            }
        });

        mInsertCourseButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                Course course = new Course();
                course.setCourseId(mCourseIdTextField.getText());
                course.setCourseName(mCourseNameTextField.getText());
                course.setTime(mCourseTimeTextField.getText());
                course.setPlace(mCoursePlaceTextField.getText());
                course.setContent(mCourseContentTextField.getText());
                course.setTeachId(User.getUsername());
                course.setAgeRecommend((Integer) mCourseAgeSpinner.getValue());
                course.setPrice((Integer) mCoursePriceSpinner.getValue());
                course.setCourseField(Course.CourseField.valueOf((String) mInsertCourseFieldComboBox.getSelectedItem()));
                course.setHomeWork(mCourseHomeworkTextField.getText());
                MySQLDAO.getInstance().insertCourse(course);
            }
        });

        mRefreshCourseButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {

                if (User.getUserType() == Account.UserType.PARENT) {
                    List<Purchase> p = MySQLDAO.getInstance().getPurchasedCourse(User.getUsername());
                    List<Course> courses = new ArrayList<>();
                    for (int i = 0; i < p.size(); i++) {
                        courses.add(MySQLDAO.getInstance().getCourseById(p.get(i).getmCourseId()));
                    }
                    Vector rowDataSet = new Vector();
                    Vector names = new Vector();
                    names.add("课程ID");
                    names.add("课程名称");
                    names.add("上课时间");
                    names.add("上课地点");
                    names.add("课程内容");
                    names.add("教师ID");
                    names.add("推荐年龄");
                    names.add("价格");
                    names.add("课程类别");
                    names.add("作业");
                    for (Course course : courses){
                        Vector rowData = new Vector();
                        rowData.add(course.getCourseId());
                        rowData.add(course.getCourseName());
                        rowData.add(course.getTime());
                        rowData.add(course.getPlace());
                        rowData.add(course.getContent());
                        rowData.add(course.getTeachId());
                        rowData.add(course.getAgeRecommend());
                        rowData.add(course.getPrice());
                        rowData.add(course.getCourseField().toString());
                        rowData.add(course.getHomeWork());
                        rowDataSet.add(rowData);
                    }
                    DefaultTableModel model = new DefaultTableModel(rowDataSet, names) {
                        public boolean isCellEditable(int row, int column) {
                            return false;
                        }
                    };
                    mCourseTable.setModel(model);
                    mCourseTable.setRowHeight(28);

                    JComboBox box = Constants.getCourseFieldCombo();
                    TableColumn column = mCourseTable.getColumn("课程类别");
                    TableCellEditor editor = new DefaultCellEditor(box);
                    column.setCellEditor(editor);
                } else if (User.getUserType() == Account.UserType.TEACHER){
                    List<Course> courses = MySQLDAO.getInstance().getTeacherCourseList(User.getUsername());
                    Vector rowDataSet = new Vector();
                    Vector names = new Vector();
                    names.add("课程ID");
                    names.add("课程名称");
                    names.add("上课时间");
                    names.add("上课地点");
                    names.add("课程内容");
                    names.add("教师ID");
                    names.add("推荐年龄");
                    names.add("价格");
                    names.add("课程类别");
                    names.add("作业");
                    for (Course course : courses){
                        Vector rowData = new Vector();
                        rowData.add(course.getCourseId());
                        rowData.add(course.getCourseName());
                        rowData.add(course.getTime());
                        rowData.add(course.getPlace());
                        rowData.add(course.getContent());
                        rowData.add(course.getTeachId());
                        rowData.add(course.getAgeRecommend());
                        rowData.add(course.getPrice());
                        rowData.add(course.getCourseField().toString());
                        rowData.add(course.getHomeWork());
                        rowDataSet.add(rowData);
                    }
                    DefaultTableModel model = new DefaultTableModel(rowDataSet, names) {
                        public boolean isCellEditable(int row, int column) {
                            if (column == 0 || column == 5)
                                return false;
                            else return true;
                        }
                    };
                    mCourseTable.setModel(model);
                    mCourseTable.setRowHeight(28);

                    JComboBox box = Constants.getCourseFieldCombo();
                    TableColumn column = mCourseTable.getColumn("课程类别");
                    TableCellEditor editor = new DefaultCellEditor(box);
                    column.setCellEditor(editor);
                } else if (User.getUserType() == Account.UserType.EDUORG){
                    List<Course> courses = MySQLDAO.getInstance().getTeacherCourseList(User.getUsername());
                    Vector rowDataSet = new Vector();
                    Vector names = new Vector();
                    names.add("课程ID");
                    names.add("课程名称");
                    names.add("上课时间");
                    names.add("上课地点");
                    names.add("课程内容");
                    names.add("教师ID");
                    names.add("推荐年龄");
                    names.add("价格");
                    names.add("课程类别");
                    names.add("作业");
                    for (Course course : courses){
                        Vector rowData = new Vector();
                        rowData.add(course.getCourseId());
                        rowData.add(course.getCourseName());
                        rowData.add(course.getTime());
                        rowData.add(course.getPlace());
                        rowData.add(course.getContent());
                        rowData.add(course.getTeachId());
                        rowData.add(course.getAgeRecommend());
                        rowData.add(course.getPrice());
                        rowData.add(course.getCourseField().toString());
                        rowData.add(course.getHomeWork());
                        rowDataSet.add(rowData);
                    }
                    DefaultTableModel model = new DefaultTableModel(rowDataSet, names) {
                        public boolean isCellEditable(int row, int column) {
                            if (column == 0 || column == 5)
                                return false;
                            else return true;
                        }
                    };
                    mCourseTable.setModel(model);
                    mCourseTable.setRowHeight(28);

                    JComboBox box = Constants.getCourseFieldCombo();
                    TableColumn column = mCourseTable.getColumn("课程类别");
                    TableCellEditor editor = new DefaultCellEditor(box);
                    column.setCellEditor(editor);
                }
                else {
                    List<Course> courses = MySQLDAO.getInstance().getAllCourse();
                    Vector rowDataSet = new Vector();
                    Vector names = new Vector();
                    names.add("课程ID");
                    names.add("课程名称");
                    names.add("上课时间");
                    names.add("上课地点");
                    names.add("课程内容");
                    names.add("教师ID");
                    names.add("推荐年龄");
                    names.add("价格");
                    names.add("课程类别");
                    names.add("作业");
                    for (Course course : courses){
                        Vector rowData = new Vector();
                        rowData.add(course.getCourseId());
                        rowData.add(course.getCourseName());
                        rowData.add(course.getTime());
                        rowData.add(course.getPlace());
                        rowData.add(course.getContent());
                        rowData.add(course.getTeachId());
                        rowData.add(course.getAgeRecommend());
                        rowData.add(course.getPrice());
                        rowData.add(course.getCourseField().toString());
                        rowData.add(course.getHomeWork());
                        rowDataSet.add(rowData);
                    }
                    DefaultTableModel model = new DefaultTableModel(rowDataSet, names) {
                        public boolean isCellEditable(int row, int column) {
                            return false;
                        }
                    };
                    mCourseTable.setModel(model);
                    mCourseTable.setRowHeight(28);

                    JComboBox box = Constants.getCourseFieldCombo();
                    TableColumn column = mCourseTable.getColumn("课程类别");
                    TableCellEditor editor = new DefaultCellEditor(box);
                    column.setCellEditor(editor);
                }



            }
        });
        mEditSaveButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {

                for (int i = 0; i < mCourseTable.getRowCount(); i++) {

                    Course course = new Course();
                    course.setCourseId(mCourseTable.getValueAt(i, 0).toString());
                    course.setCourseName(mCourseTable.getValueAt(i, 1).toString());
                    course.setTime(mCourseTable.getValueAt(i, 2).toString());
                    course.setPlace(mCourseTable.getValueAt(i, 3).toString());
                    course.setContent(mCourseTable.getValueAt(i, 4).toString());
                    course.setTeachId(User.getUsername());
                    course.setAgeRecommend(Integer.parseInt(mCourseTable.getValueAt(i, 6).toString()));
                    course.setPrice(Integer.parseInt(mCourseTable.getValueAt(i, 7).toString()));
                    course.setCourseField(Course.CourseField.valueOf(mCourseTable.getValueAt(i, 8).toString()));
                    course.setHomeWork(mCourseTable.getValueAt(i, 9).toString());

                    MySQLDAO.getInstance().updateCourse(course);
                }
            }
        });
        mDeleteCourseButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                int row = mCourseTable.getSelectedRow();
                String course_id = mCourseTable.getValueAt(row, 0).toString();
                MySQLDAO.getInstance().deleteCourse(course_id);
                ((DefaultTableModel) mCourseTable.getModel()).removeRow(row);
            }
        });

        mAddToCartButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                int row = mCourseQueryTable.getSelectedRow();
                String course_id = mCourseQueryTable.getValueAt(row, 0).toString();
                Purchase purchase = new Purchase();
                purchase.setmCourseId(course_id);
                purchase.setmParentId(User.getUsername());
                purchase.setmPurchased(false);
                MySQLDAO.getInstance().insertPurchase(purchase);
            }
        });

        mPurchaseButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                int row = mShoppingCartTable.getSelectedRow();
                String course_id = mShoppingCartTable.getValueAt(row, 0).toString();
                Purchase purchase = new Purchase();
                purchase.setmCourseId(course_id);
                purchase.setmParentId(User.getUsername());
                purchase.setmPurchased(true);
                MySQLDAO.getInstance().updatePurchase(purchase);
                ((DefaultTableModel) mShoppingCartTable.getModel()).removeRow(row);
            }
        });
        mRemoveCartButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                int row = mShoppingCartTable.getSelectedRow();
                String course_id = mShoppingCartTable.getValueAt(row, 0).toString();
                MySQLDAO.getInstance().deletePurchase(User.getUsername(), course_id);
                ((DefaultTableModel) mShoppingCartTable.getModel()).removeRow(row);
            }
        });
        MyPreviewButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                cl.show(CardPanel, "ParentPreviewPanel");
                List<PreviewApp> apps = MySQLDAO.getInstance().getParentPreviewCourse(User.getUsername());
                //System.out.println(field.toString() + place + String.valueOf(age) + minPrice + maxPrice);
                Vector rowDataSet = new Vector();
                Vector names = new Vector();
                names.add("课程ID");
                names.add("课程名称");
                names.add("教授机构/教师ID");
                names.add("状态");
                for (PreviewApp app : apps){
                    Vector rowData = new Vector();
                    Course course = MySQLDAO.getInstance().getCourseById(app.getmCourseId());
                    rowData.add(app.getmCourseId());
                    rowData.add(course.getCourseName());
                    rowData.add(course.getTeachId());
                    rowData.add(app.ismAgreement() ? "允许" : "尚未允许");
                    rowDataSet.add(rowData);
                }
                DefaultTableModel model = new DefaultTableModel(rowDataSet, names) {
                    public boolean isCellEditable(int row, int column) {
                        return false;
                    }
                };
                mMyPreviewTable.setModel(model);
                mMyPreviewTable.setRowHeight(28);
            }
        });
        mPreviewButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                int row = mCourseQueryTable.getSelectedRow();
                String course_id = mCourseQueryTable.getValueAt(row, 0).toString();
                PreviewApp app = new PreviewApp();
                app.setmCourseId(course_id);
                app.setmParentId(User.getUsername());
                app.setmAgreement(false);
                PreviewApp previewApp = MySQLDAO.getInstance().getPreviewAppByPrimaryKey(course_id,User.getUsername());
                if (previewApp.getmCourseId() == null) {
                    MySQLDAO.getInstance().insertPreviewApp(app);
                    JOptionPane.showMessageDialog(null, "申请试听成功");
                }
                else {
                    JOptionPane.showMessageDialog(null, "已经申请过试听");
                }
            }
        });
        mCancelPreviewButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                int row = mMyPreviewTable.getSelectedRow();
                String course_id = mMyPreviewTable.getValueAt(row, 0).toString();
                MySQLDAO.getInstance().deleteParentPreview(User.getUsername(), course_id);
                ((DefaultTableModel) mMyPreviewTable.getModel()).removeRow(row);
            }
        });
        PreviewAppButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                cl.show(CardPanel, "PreviewAppPanel");

                List<PreviewApp> apps = MySQLDAO.getInstance().getTeachPreviewApp(User.getUsername());
                //System.out.println(field.toString() + place + String.valueOf(age) + minPrice + maxPrice);
                Vector rowDataSet = new Vector();
                Vector names = new Vector();
                names.add("课程ID");
                names.add("课程名称");
                names.add("用户ID");
                names.add("用户联系方式");
                names.add("状态");
                for (PreviewApp app : apps){
                    Vector rowData = new Vector();
                    Course course = MySQLDAO.getInstance().getCourseById(app.getmCourseId());
                    Parent parent = MySQLDAO.getInstance().getParentByUsername(app.getmParentId());
                    rowData.add(app.getmCourseId());
                    rowData.add(course.getCourseName());
                    rowData.add(parent.getUsername());
                    rowData.add(parent.getParentContact());
                    if (app.ismAgreement())
                        continue;
                    rowData.add("尚未允许");
                    rowDataSet.add(rowData);
                }
                DefaultTableModel model = new DefaultTableModel(rowDataSet, names) {
                    public boolean isCellEditable(int row, int column) {
                        return false;
                    }
                };
                mPreviewAppTable.setModel(model);
                mPreviewAppTable.setRowHeight(28);
            }
        });
        mPermitButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                int row = mPreviewAppTable.getSelectedRow();
                String course_id = mPreviewAppTable.getValueAt(row, 0).toString();
                String parent_id = mPreviewAppTable.getValueAt(row, 2).toString();
                PreviewApp previewApp = new PreviewApp();
                previewApp.setmCourseId(course_id);
                previewApp.setmParentId(parent_id);
                previewApp.setmAgreement(true);
                MySQLDAO.getInstance().updatePreviewApp(previewApp);
                ((DefaultTableModel) mPreviewAppTable.getModel()).removeRow(row);
            }
        });
        OrgRegApplyButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                cl.show(CardPanel, "OrgRegApply");

                currentRow = 1;
                OrgRegApplyList.clear();
                OrgRegApplyList = MySQLDAO.getInstance().getReviewEduOrg();

                Vector rowDataSet = new Vector();
                Vector names = new Vector();
                names.add("用户名");
                names.add("标示码");
                names.add("店面地址");
                names.add("联系方式");
                names.add("教育领域");
                names.add("教育适龄");
                names.add("介绍");
                for (EduOrg org : OrgRegApplyList) {
                    Vector rowData = new Vector();
                    rowData.add(org.getUsername());
                    rowData.add(org.getOrgCode());
                    rowData.add(org.getOrgAddress());
                    rowData.add(org.getOrgContact());
                    rowData.add(org.getOrgEduField().toString());
                    rowData.add(org.getOrgEduAge());
                    rowData.add(org.getOrgIntroduction());
                    rowDataSet.add(rowData);
                }
                DefaultTableModel model = new DefaultTableModel(rowDataSet, names) {
                    public boolean isCellEditable(int row, int column) {
                        return false;
                    }
                };
                OrgRegApplyTable.setModel(model);
                OrgRegApplyTable.getColumnModel().getColumn(6).setPreferredWidth(300);
                OrgRegApplyTable.setRowHeight(28);
                OrgRegApplyTable.getTableHeader().setPreferredSize(new Dimension(OrgRegApplyTable.getTableHeader().getWidth(), 28));
            }
        });
        OrgRegApplyTable.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                super.mouseClicked(e);
                currentRow = ((JTable) e.getSource()).rowAtPoint(e.getPoint());
            }
        });
        OrgRegApplyAgreeButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                EduOrg temp = OrgRegApplyList.get(currentRow);
                temp.setQualified(Account.Qualified.YES);
                MySQLDAO.getInstance().updateEduOrg(temp);
                OrgRegApplyButton.doClick();
                JOptionPane.showMessageDialog(null, "已同意！");
            }
        });
        OrgRegApplyRejectButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                EduOrg temp = OrgRegApplyList.get(currentRow);
                temp.setQualified(Account.Qualified.NO);
                MySQLDAO.getInstance().updateEduOrg(temp);
                OrgRegApplyButton.doClick();
                JOptionPane.showMessageDialog(null, "已拒绝！");
            }
        });
        TeacherRegApplyButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                cl.show(CardPanel, "TeacherRegApply");

                currentRow = 1;
                TeacherRegApplyList.clear();
                TeacherRegApplyList = MySQLDAO.getInstance().getReviewTeacher();

                Vector rowDataSet = new Vector();
                Vector names = new Vector();
                names.add("用户名");
                names.add("姓名");
                names.add("年龄");
                names.add("性别");
                names.add("身份证号");
                names.add("联系方式");
                names.add("教育领域");
                names.add("教育适龄");
                names.add("从教年限");
                names.add("介绍");
                for (Teacher tea : TeacherRegApplyList) {
                    Vector rowData = new Vector();
                    rowData.add(tea.getUsername());
                    rowData.add(tea.getmTeacherName());
                    rowData.add(tea.getTeaAge());
                    rowData.add(tea.getmTeacherGender().toString());
                    rowData.add(tea.getmTeacherIdNumber());
                    rowData.add(tea.getmTeacherContact());
                    rowData.add(tea.getmCourseField().toString());
                    rowData.add(tea.getmEduAge());
                    rowData.add(tea.getmEduYear());
                    rowData.add(tea.getmTeacherIntroduction());
                    rowDataSet.add(rowData);
                }
                DefaultTableModel model = new DefaultTableModel(rowDataSet, names) {
                    public boolean isCellEditable(int row, int column) {
                        return false;
                    }
                };
                TeacherRegApplyTable.setModel(model);
                TeacherRegApplyTable.getColumnModel().getColumn(9).setPreferredWidth(200);
                TeacherRegApplyTable.setRowHeight(28);
                TeacherRegApplyTable.getTableHeader().setPreferredSize(new Dimension(TeacherRegApplyTable.getTableHeader().getWidth(), 28));
            }
        });
        TeacherRegApplyTable.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                super.mouseClicked(e);
                currentRow = ((JTable) e.getSource()).rowAtPoint(e.getPoint());
            }
        });
        TeacherRegApplyAgreeButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                Teacher temp = TeacherRegApplyList.get(currentRow);
                temp.setmQualified(Account.Qualified.YES);
                MySQLDAO.getInstance().updateTeacher(temp);
                TeacherRegApplyButton.doClick();
                JOptionPane.showMessageDialog(null, "已同意！");
            }
        });
        TeacherRegApplyRejectButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                Teacher temp = TeacherRegApplyList.get(currentRow);
                temp.setmQualified(Account.Qualified.NO);
                MySQLDAO.getInstance().updateTeacher(temp);
                TeacherRegApplyButton.doClick();
                JOptionPane.showMessageDialog(null, "已拒绝！");
            }
        });
        mCommentButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                int row = mMyPreviewTable.getSelectedRow();
                String course_id = mMyPreviewTable.getValueAt(row, 0).toString();
                String parent_id = User.getUsername();
                PreviewApp previewApp = MySQLDAO.getInstance().getPreviewAppByPrimaryKey(course_id, parent_id);
                if (previewApp.ismAgreement()) {
                    CourseCommentWindow courseCommentWindow = new CourseCommentWindow((Parent) User, MySQLDAO.getInstance().getCourseById(course_id));

                } else {
                    JOptionPane.showMessageDialog(null, "尚未允许试听，无法打分！");
                }
            }
        });
        mCourseQueryTable.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                super.mouseClicked(e);

                if (e.getClickCount() == 2) {
                    int row = ((JTable) e.getSource()).rowAtPoint(e.getPoint());
                    String course_id = mCourseQueryTable.getValueAt(row, 0).toString();

                    //List<CourseComment> courseComments = MySQLDAO.getInstance().getCourseComment(course_id);
                    new CourseWindow(MySQLDAO.getInstance().getCourseById(course_id));
                }
            }
        });
        EditCourseCommentButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                cl.show(CardPanel, "EditCourseCommentPanel");

                List<CourseComment> comments = MySQLDAO.getInstance().getAllCourseComment();
                //System.out.println(field.toString() + place + String.valueOf(age) + minPrice + maxPrice);
                Vector rowDataSet = new Vector();
                Vector names = new Vector();
                names.add("课程ID");
                names.add("发布人ID");
                names.add("内容");
                names.add("分数");
                names.add("图片ID");
                for (CourseComment comment : comments){
                    Vector rowData = new Vector();

                    rowData.add(comment.getCourseId());
                    rowData.add(comment.getPublisher());
                    rowData.add(comment.getContent());
                    rowData.add(comment.getScore());
                    rowData.add(comment.getPicId());
                    rowDataSet.add(rowData);
                }
                DefaultTableModel model = new DefaultTableModel(rowDataSet, names) {
                    public boolean isCellEditable(int row, int column) {
                        return false;
                    }
                };
                mParentCourseCommentTable.setModel(model);
                mParentCourseCommentTable.setRowHeight(28);
            }
        });
        EditTeachCommentButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                cl.show(CardPanel, "EditTeachCommentPanel");

                List<TeachComment> comments = MySQLDAO.getInstance().getAllTeachComment();
                //System.out.println(field.toString() + place + String.valueOf(age) + minPrice + maxPrice);
                Vector rowDataSet = new Vector();
                Vector names = new Vector();
                names.add("教师ID");
                names.add("课程ID");
                names.add("发布人ID");
                names.add("内容");
                names.add("分数");
                names.add("图片ID");
                for (TeachComment comment : comments){
                    Vector rowData = new Vector();

                    rowData.add(comment.getTeachId());
                    rowData.add(comment.getCourseId());
                    rowData.add(comment.getPublisher());
                    rowData.add(comment.getContent());
                    rowData.add(comment.getScore());
                    rowData.add(comment.getPicId());
                    rowDataSet.add(rowData);
                }
                DefaultTableModel model = new DefaultTableModel(rowDataSet, names) {
                    public boolean isCellEditable(int row, int column) {
                        return false;
                    }
                };
                mParentTeachCommentTable.setModel(model);
                mParentTeachCommentTable.setRowHeight(28);
            }
        });
        mParentCourseCommentTable.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                super.mouseClicked(e);

                if (e.getClickCount() == 2) {
                    int row = ((JTable) e.getSource()).rowAtPoint(e.getPoint());
                    String course_id = mParentCourseCommentTable.getValueAt(row, 0).toString();
                    String publisher = mParentCourseCommentTable.getValueAt(row, 1).toString();
                    //List<CourseComment> courseComments = MySQLDAO.getInstance().getCourseComment(course_id);
                    CourseCommentWindow window = new CourseCommentWindow(MySQLDAO.getInstance().getParentByUsername(publisher), MySQLDAO.getInstance().getCourseById(course_id));
                    window.getCommentToComboBox().setSelectedIndex(1);
                    window.getCommentToComboBox().setEnabled(false);
                }
            }
        });

        mParentTeachCommentTable.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                super.mouseClicked(e);

                if (e.getClickCount() == 2) {
                    int row = ((JTable) e.getSource()).rowAtPoint(e.getPoint());
                    String teach_id = mParentTeachCommentTable.getValueAt(row, 0).toString();
                    String course_id = mParentTeachCommentTable.getValueAt(row, 1).toString();
                    String publisher = mParentTeachCommentTable.getValueAt(row, 2).toString();
                    //List<CourseComment> courseComments = MySQLDAO.getInstance().getCourseComment(course_id);
                    Course course = new Course();
                    course.setTeachId(teach_id);
                    CourseCommentWindow window = new CourseCommentWindow(MySQLDAO.getInstance().getParentByUsername(publisher), MySQLDAO.getInstance().getCourseById(course_id));
                    window.getCommentToComboBox().setSelectedIndex(0);
                    window.getCommentToComboBox().setEnabled(false);
                }
            }
        });
        initUI();
    }

    private void initUI() {
        // 卡片布局
        cl = (CardLayout) CardPanel.getLayout();

        // 各个用户界面
        switch (User.getUserType()) {
            case SYSADMIN:
                OrgRegApplyButton.setVisible(true);
                TeacherRegApplyButton.setVisible(true);
                EditCourseCommentButton.setVisible(true);
                EditTeachCommentButton.setVisible(true);
                break;
            case EDUORG:
                CourseInsertButton.setVisible(true);
                PreviewAppButton.setVisible(true);
                break;
            case TEACHER:
                CourseInsertButton.setVisible(true);
                PreviewAppButton.setVisible(true);
                break;
            case PARENT:
                CourseQueryButton.setVisible(true);
                ShoppingCartButton.setVisible(true);
                MyPreviewButton.setVisible(true);
                break;
        }

        // 复选框初始化
        for (Course.CourseField field : Course.CourseField.values()) {
            mCourseFieldComboBox.addItem(field.toString());
            mInsertCourseFieldComboBox.addItem(field.toString());
        }

        mPriceRangeComboBox.addItem("0-200");
        mPriceRangeComboBox.addItem("201-500");
        mPriceRangeComboBox.addItem("501-750");
        mPriceRangeComboBox.addItem("751-1000");
        mPriceRangeComboBox.addItem("1001-2000");
        mPriceRangeComboBox.addItem("2000以上");


        // Spinner 数值范围
        SpinnerNumberModel spinnerAge = new SpinnerNumberModel(0, 0, 100, 1);
        SpinnerNumberModel spinnerPrice = new SpinnerNumberModel(0, 0, Integer.MAX_VALUE, 1);

        mCourseAgeSpinner.setModel(spinnerAge);
        mAgeSpin.setModel(spinnerAge);


        mCoursePriceSpinner.setModel(spinnerPrice);

        // 初始事件
        NotificationButton.doClick();

        // JFrame界面
        JFrame frame = new JFrame("课程中介系统");
        frame.setContentPane(MainWindowPanel);
        frame.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        frame.pack();
        frame.setVisible(true);
    }
}
