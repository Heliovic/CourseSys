package view;

import DAO.MySQLDAO;
import model.Course;
import model.News;
import model.Purchase;
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
import javax.swing.text.MaskFormatter;
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

    private JPanel MainWindowPanel;
    private JPanel ButtonPanel;
    private JPanel CardPanel;
    private JButton NotificationButton;
    private JButton AccountInfoButton;
    private JButton CourseListButton;
    private JButton CourseQueryButton;
    private JButton CourseSearch;
    private JButton button6Button;
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
    private CardLayout cl;

    public MainWindow(Account user) {
        User = user;
        newsList = MySQLDAO.getInstance().getNewsInfo();

        NotificationButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                cl.show(CardPanel, "Notification");

                if (User.getUserType() != Account.UserType.PARENT) {
                    AddButton.setVisible(true);
                    DeleteButton.setVisible(true);
                }

                newsList.clear();
                newsList = MySQLDAO.getInstance().getNewsInfo();

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
                if (e.getClickCount() == 2) {
                    int row = ((JTable) e.getSource()).rowAtPoint(e.getPoint());
                    new NewsBulletinWindow(User, newsList.get(row));
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
                DateFormatter dateform = new DateFormatter(new SimpleDateFormat("yyyy-MM-dd")); // 日期
                try {
                    MaskFormatter phoneform = new MaskFormatter("###########");     // 电话
                    MaskFormatter yearform = new MaskFormatter("####");             // 年
                    MaskFormatter IDform = new MaskFormatter("#################*"); // 身份证号
                    ChildBirField.setValue(dateform);
                    ChildAgeField.setValue(NumberFormat.getIntegerInstance());      // 数字
                    TelephoneField.setValue(phoneform);
                    OrgEduAgeField.setValue(NumberFormat.getIntegerInstance());
                    TeacherYearLabelField.setValue(yearform);
                    TeacherEduAgeField.setValue(NumberFormat.getIntegerInstance());
                    TeacherAgeField.setValue(NumberFormat.getIntegerInstance());
                    TeacherIDField.setValue(IDform);
                } catch (Exception exce) {
                    exce.printStackTrace();
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
                        ParentContactField.setText(((Parent) User).getCoursePlace());
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
        mCourseQueryButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                Course.CourseField field = Course.CourseField.valueOf(mCourseFieldComboBox.getSelectedItem().toString());
                String place = mPlaceField.getText();
                int age = Integer.parseInt(mAgeSpin.getValue().toString());
                int minprice[] = {1, 201, 501, 751, 1001, 2000};
                int maxprice[] = {200, 500, 750, 1000, 2000, Integer.MAX_VALUE};
                int index = mPriceRangeComboBox.getSelectedIndex();
                int minPrice = minprice[index];
                int maxPrice = maxprice[index];
                List<Course> courses = MySQLDAO.getInstance().getCourseInfo(field, place, age, minPrice, maxPrice);
                //System.out.println(field.toString() + place + String.valueOf(age) + minPrice + maxPrice);
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
                DefaultTableModel model = new DefaultTableModel(rowDataSet, names);
                mCourseQueryTable.setModel(model);
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

                    JComboBox box = Constants.getCourseFieldCombo();
                    TableColumn column = mCourseTable.getColumn("课程类别");
                    TableCellEditor editor = new DefaultCellEditor(box);
                    column.setCellEditor(editor);
                } else {
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


        initUI();
    }

    private void initUI() {
        // 卡片布局
        cl = (CardLayout) CardPanel.getLayout();

        // JFormattedTextField 限制
        DateFormatter dateform = new DateFormatter(new SimpleDateFormat("yyyy-MM-dd")); // 日期
        try {
            MaskFormatter phoneform = new MaskFormatter("###########");     // 电话
            MaskFormatter yearform = new MaskFormatter("####");             // 年
            MaskFormatter IDform = new MaskFormatter("#################*"); // 身份证号
            ChildBirField.setValue(dateform);
            ChildAgeField.setValue(NumberFormat.getIntegerInstance());      // 数字
            TelephoneField.setValue(phoneform);
            OrgEduAgeField.setValue(NumberFormat.getIntegerInstance());
            TeacherYearLabelField.setValue(yearform);
            TeacherEduAgeField.setValue(NumberFormat.getIntegerInstance());
            TeacherAgeField.setValue(NumberFormat.getIntegerInstance());
            TeacherIDField.setValue(IDform);
        } catch (Exception e) {
            e.printStackTrace();
        }

        // 各个用户界面
        switch (User.getUserType()) {
            case SYSADMIN:
                break;
            case EDUORG:
                CourseInsertButton.setVisible(true);
                // 信息
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
                CourseInsertButton.setVisible(true);
                // 信息
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
                CourseQueryButton.setVisible(true);
                // 信息
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

        // 复选框初始化
        for (Course.CourseField field : Course.CourseField.values()) {
            mCourseFieldComboBox.addItem(field.toString());
            TeacherCourseComboBox.addItem(field.toString());
            OrgCourseComboBox.addItem(field.toString());
            mInsertCourseFieldComboBox.addItem(field.toString());
        }

        TeacherGenderComboBox.addItem("MALE");
        TeacherGenderComboBox.addItem("FEMALE");
        ChildGenderComboBox.addItem("MALE");
        ChildGenderComboBox.addItem("FEMALE");

        mPriceRangeComboBox.addItem("1-200");
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
