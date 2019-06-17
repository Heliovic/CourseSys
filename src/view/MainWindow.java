package view;

import model.Course;
import model.account.Account;
import utils.Constants;
import DAO.MySQLDAO;

import javax.swing.*;
import javax.swing.table.DefaultTableModel;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.Date;
import java.util.zip.DataFormatException;
import java.text.*;
import javax.swing.text.*;

import java.util.List;
import java.util.Vector;

public class MainWindow {
    private Account User;
    private JPanel MainWindowPanel;
    private JPanel ButtonPanel;
    private JPanel CardPanel;
    private JButton NotificationButton;
    private JButton AccountInfoButton;
    private JButton CourseListButton;
    private JButton CourseQueryButton;
    private JButton button5Button;
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
    private JComboBox ChildGenderComboBox;
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
    private JLabel OrgEduFieldLabel;
    private JTextField OrgEduFieldField;
    private JLabel OrgEduAgeLabel;
    private JFormattedTextField OrgEduAgeField;
    private JLabel OrgContactLabel;
    private JTextField OrgContactField;
    private JLabel OrgIntroductionLabel;
    private JTextField OrgIntroductionField;
    private JTextField TeacherNameField;
    private JComboBox TeacherGenderComboBox;
    private JFormattedTextField TeacherYearLabelField;
    private JFormattedTextField TeacherEduAgeField;
    private JTextField TeacherContactField;
    private JTextField TeacherIntroductionField;
    private JLabel TeacherIntroductionLabel;
    private JLabel TeacherEduAgeLabel;
    private JLabel TeacherEduFieldLabel;
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
    private CardLayout cl;

    public MainWindow(Account user) {
        User = user;

        // 卡片布局
        cl = (CardLayout) CardPanel.getLayout();

        // JFormattedTextField 限制
        DateFormatter dateform = new DateFormatter(new SimpleDateFormat("yyyy-MM-dd")); // 日期
        try {
            MaskFormatter phoneform = new MaskFormatter("###########");     // 电话
            MaskFormatter yearform = new MaskFormatter("####");             // 年
            MaskFormatter IDform = new MaskFormatter("#################*"); // 身份证号
            ChildBirField.setValue(dateform);
            TelephoneField.setValue(phoneform);
            OrgEduAgeField.setValue(NumberFormat.getIntegerInstance());     // 数字
            TeacherYearLabelField.setValue(yearform);
            TeacherEduAgeField.setValue(NumberFormat.getIntegerInstance());
            TeacherAgeField.setValue(NumberFormat.getIntegerInstance());
            TeacherIDField.setValue(IDform);
        } catch (Exception e) {
            e.printStackTrace();
        }

        // 各个用户界面
        switch (user.getUserType()) {
            case SYSADMIN:
                break;
            case EDUORG:
                // 信息
                OrgCodeLabel.setVisible(true);
                OrgCodeField.setVisible(true);
                OrgAddressLabel.setVisible(true);
                OrgAddressField.setVisible(true);
                OrgEduFieldLabel.setVisible(true);
                OrgEduFieldField.setVisible(true);
                OrgEduAgeLabel.setVisible(true);
                OrgEduAgeField.setVisible(true);
                OrgContactLabel.setVisible(true);
                OrgContactField.setVisible(true);
                OrgIntroductionLabel.setVisible(true);
                OrgIntroductionField.setVisible(true);
                break;
            case TEACHER:
                // 信息
                TeacherNameField.setVisible(true);
                TeacherGenderComboBox.setVisible(true);
                TeacherYearLabelField.setVisible(true);
                TeacherEduAgeField.setVisible(true);
                TeacherContactField.setVisible(true);
                TeacherIntroductionField.setVisible(true);
                TeacherIntroductionLabel.setVisible(true);
                TeacherEduAgeLabel.setVisible(true);
                TeacherEduFieldLabel.setVisible(true);
                TeacherAgeLabel.setVisible(true);
                TeacherNameLabel.setVisible(true);
                TeacherGenderLabel.setVisible(true);
                TeacherIDLabel.setVisible(true);
                TeacherAgeField.setVisible(true);
                TeacherIDField.setVisible(true);
                TeacherEduFieldField.setVisible(true);
                TeacherYearLabel.setVisible(true);
                TeacherContactLabel.setVisible(true);
                break;
            case PARENT:
                CourseQueryButton.setVisible(true);

                // 信息
                ChildNameLabel.setVisible(true);
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

        JFrame frame = new JFrame("课程中介系统");
        frame.setContentPane(MainWindowPanel);
        frame.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        frame.pack();
        frame.setVisible(true);
        NotificationButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                cl.show(CardPanel, "Notification");
            }
        });
        AccountInfoButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                cl.show(CardPanel, "AccountInfo");
                SaveButton.setEnabled(false);
                // 各个用户界面
                switch (user.getUserType()) {
                    case SYSADMIN:
                        break;
                    case EDUORG:
                        OrgCodeField.setVisible(true);
                        OrgAddressField.setVisible(true);
                        OrgEduFieldField.setVisible(true);
                        OrgEduAgeField.setVisible(true);
                        OrgContactField.setVisible(true);
                        OrgIntroductionField.setVisible(true);
                        break;
                    case TEACHER:
                        TeacherNameField.setVisible(true);
                        TeacherGenderComboBox.setVisible(true);
                        TeacherYearLabelField.setVisible(true);
                        TeacherEduAgeField.setVisible(true);
                        TeacherContactField.setVisible(true);
                        TeacherIntroductionField.setVisible(true);
                        TeacherAgeField.setVisible(true);
                        TeacherIDField.setVisible(true);
                        TeacherEduFieldField.setVisible(true);
                        TeacherContactLabel.setVisible(true);
                        break;
                    case PARENT:
                        ChildBirField.setVisible(true);
                        ChildNameField.setText("");
                        ChildGenderComboBox.setVisible(true);
                        ParentNameField.setVisible(true);
                        ParentContactField.setVisible(true);
                        break;
                }
            }
        });
        CourseListButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                cl.show(CardPanel, "CourseList");
            }
        });
        CourseQueryButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                cl.show(CardPanel, "CourseQuery");
            }
        });


        initUI();
        mCourseQueryButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                Constants.CourseField field = Constants.CourseField.valueOf(mCourseFieldComboBox.getSelectedItem().toString());
                String place = mPlaceField.getText();
                int age = Integer.parseInt(mAgeSpin.getValue().toString());
                int minprice[] = {1, 201, 501, 751, 1001, 2000};
                int maxprice[] = {200, 500, 750, 1000, 2000, Integer.MAX_VALUE};
                int index = mPriceRangeComboBox.getSelectedIndex();
                int minPrice = minprice[index];
                int maxPrice = maxprice[index];
                List<Course> courses = MySQLDAO.getInstance().getCourseInfo(field, place, age, minPrice, maxPrice);
                //System.out.println(field.toString() + place + String.valueOf(age) + minPrice + maxPrice);
                Vector rowData = new Vector();
                Vector rowDataSet = new Vector();
                Vector names = new Vector();
                names.add("course_id");
                names.add("course_name");
                names.add("course_time");
                names.add("teach_id");
                names.add("content");
                for (Course course : courses){
                    System.out.println(course.getCourseId() + course.getCourseName());
                    rowData.clear();
                    rowData.add(course.getCourseId());
                    rowData.add(course.getCourseName());
                    rowData.add(course.getTime());
                    rowData.add(course.getTeachId());
                    rowData.add(course.getContent());
                    rowDataSet.add(rowData);
                }
                DefaultTableModel model = new DefaultTableModel(rowDataSet, names);
                mCourseQueryTable.setModel(model);
            }
        });
        ChangeButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                SaveButton.setEnabled(true);
            }
        });
        SaveButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {

            }
        });
    }

    private void initUI() {
        for (Constants.CourseField field : Constants.CourseField.values()) {
            mCourseFieldComboBox.addItem(field.toString());
        }

        mPriceRangeComboBox.addItem("1-200");
        mPriceRangeComboBox.addItem("201-500");
        mPriceRangeComboBox.addItem("501-750");
        mPriceRangeComboBox.addItem("751-1000");
        mPriceRangeComboBox.addItem("1001-2000");
        mPriceRangeComboBox.addItem("2000以上");
    }

}
