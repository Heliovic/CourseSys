package view;

import DAO.MySQLDAO;
import model.Course;
import model.account.Account;
import model.account.EduOrg;
import model.account.Parent;
import model.account.Teacher;
import utils.GeneralGenerator;

import javax.swing.*;
import javax.swing.text.DateFormatter;
import javax.swing.text.DefaultFormatterFactory;
import javax.swing.text.MaskFormatter;
import javax.swing.text.NumberFormatter;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;

public class RegWindow {
    private Account User;

    private JPanel RegWindowPanel;
    private JButton ParentButton;
    private JButton TeacherButton;
    private JButton EduOrgButton;
    private JPanel ParentPanel;
    private JPanel TeacherPanel;
    private JPanel EduOrgPanel;
    private JPanel ButtonPanel;
    private JPanel CardPanel;
    private JPanel InformationPanel;
    private JButton ConfirmButton;
    private JTextField UserField;
    private JPasswordField PasswdField;
    private JFormattedTextField TelephoneField;
    private JTextField EmailField;
    private JTextField ContactField;
    private JTextField ParentNameField;
    private JTextField ChildNameField;
    private JFormattedTextField ChildBirthdayField;
    private JComboBox ChildGenderComboBox;
    private JComboBox ChildCourseComboBox;
    private JFormattedTextField ParentCostField;
    private JTextField ParentPlaceField;
    private JTextField TeacherNameField;
    private JFormattedTextField TeacherBirthdayField;
    private JComboBox TeacherGenderComboBox;
    private JFormattedTextField TeacherIDField;
    private JComboBox TeacherCourseComboBox;
    private JFormattedTextField TeacherEduYearField;
    private JFormattedTextField TeacherEduAgeField;
    private JTextField TeacherIntroductionField;
    private JFormattedTextField EduOrgEduAgeField;
    private JComboBox EduOrgCourseComboBox;
    private JTextField EduOrgPlaceField;
    private JTextField EduOrgIntroductionField;
    private CardLayout cl;

    public RegWindow() {
        ParentButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                cl.show(CardPanel, "ParentCard");
                User = new Parent();
            }
        });
        TeacherButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                cl.show(CardPanel, "TeacherCard");
                User = new Teacher();
            }
        });
        EduOrgButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                cl.show(CardPanel, "EduOrgCard");
                User = new EduOrg();
            }
        });
        ConfirmButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                User.setUsername(UserField.getText());
                User.setPassword(new String(PasswdField.getPassword()));
                User.setTel(TelephoneField.getText());
                User.setEmail(EmailField.getText());
                if (User.getUsername().length() < 6) {
                    JOptionPane.showMessageDialog(null, "用户名不足六位！");
                    return;
                }
                if (User.getPassword().length() < 6) {
                    JOptionPane.showMessageDialog(null, "密码不足六位！");
                    return;
                }
                switch (User.getUserType()) {
                    case PARENT:
                        ((Parent) User).setParentContact(ContactField.getText());
                        ((Parent) User).setParentName(ParentNameField.getText());
                        ((Parent) User).setChildName(ChildNameField.getText());
                        ((Parent) User).setChildBirthday(ChildBirthdayField.getText());
                        ((Parent) User).setChildGender(Account.Gender.valueOf(ChildGenderComboBox.getSelectedItem().toString()));
                        ((Parent) User).setCourseField(Course.CourseField.valueOf(ChildCourseComboBox.getSelectedItem().toString()));
                        ((Parent) User).setCourseCost(Integer.parseInt(ParentCostField.getText()));
                        ((Parent) User).setCoursePlace(ParentPlaceField.getText());
                        MySQLDAO.getInstance().insertParent((Parent) User);
                        JOptionPane.showMessageDialog(null, "注册成功！");
                        break;
                    case TEACHER:
                        ((Teacher) User).setmTeacherContact(ContactField.getText());
                        ((Teacher) User).setmTeacherName(TeacherNameField.getText());
                        ((Teacher) User).setmTeacherBirthday(TeacherBirthdayField.getText());
                        ((Teacher) User).setmTeacherGender(Account.Gender.valueOf(TeacherGenderComboBox.getSelectedItem().toString()));
                        ((Teacher) User).setmTeacherIdNumber(TeacherIDField.getText());
                        ((Teacher) User).setmCourseField(Course.CourseField.valueOf(TeacherCourseComboBox.getSelectedItem().toString()));
                        ((Teacher) User).setmEduYear(Integer.parseInt(TeacherEduYearField.getText()));
                        ((Teacher) User).setmEduAge(Integer.parseInt(TeacherEduAgeField.getText()));
                        ((Teacher) User).setmTeacherIntroduction(TeacherIntroductionField.getText());
                        MySQLDAO.getInstance().insertTeacher((Teacher) User);
                        JOptionPane.showMessageDialog(null, "已提交申请，请等待审核。");
                        break;
                    case EDUORG:
                        ((EduOrg) User).setOrgContact(ContactField.getText());
                        ((EduOrg) User).setOrgCode(GeneralGenerator.getPicId(User.getUsername()));
                        ((EduOrg) User).setOrgEduAge(Integer.parseInt(EduOrgEduAgeField.getText()));
                        ((EduOrg) User).setOrgEduField(Course.CourseField.valueOf(EduOrgCourseComboBox.getSelectedItem().toString()));
                        ((EduOrg) User).setOrgAddress(EduOrgPlaceField.getText());
                        ((EduOrg) User).setOrgIntroduction(EduOrgIntroductionField.getText());
                        MySQLDAO.getInstance().insertEduOrg((EduOrg) User);
                        JOptionPane.showMessageDialog(null, "已提交申请，请等待审核。");
                        break;
                    default:
                        JOptionPane.showMessageDialog(null, "用户类型有错误！");
                }
                ConfirmButton.setEnabled(false);
            }
        });

        // 卡片布局
        cl = (CardLayout) CardPanel.getLayout();

        // JFormattedTextField 限制
        try {
            DefaultFormatterFactory phoneform = new DefaultFormatterFactory(new MaskFormatter("###########"));     // 电话
            DefaultFormatterFactory Numform = new DefaultFormatterFactory(new NumberFormatter(NumberFormat.getIntegerInstance())); // 数字
            DefaultFormatterFactory dateform = new DefaultFormatterFactory(new DateFormatter(new SimpleDateFormat("yyyy-MM-dd"))); // 日期
            DefaultFormatterFactory IDform = new DefaultFormatterFactory(new MaskFormatter("#################*")); // 身份证号
            TelephoneField.setFormatterFactory(phoneform);
            ChildBirthdayField.setFormatterFactory(dateform);
            ParentCostField.setFormatterFactory(Numform);
            TeacherBirthdayField.setFormatterFactory(dateform);
            TeacherIDField.setFormatterFactory(IDform);
            TeacherEduYearField.setFormatterFactory(Numform);
            TeacherEduAgeField.setFormatterFactory(Numform);
            EduOrgEduAgeField.setFormatterFactory(Numform);
        } catch (Exception ex) {
            ex.printStackTrace();
            JOptionPane.showMessageDialog(null, ("信息有格式错误：" + ex.getMessage()));
        }

        // 复选框初始化
        for (Course.CourseField field : Course.CourseField.values()) {
            ChildCourseComboBox.addItem(field.toString());
            TeacherCourseComboBox.addItem(field.toString());
            EduOrgCourseComboBox.addItem(field.toString());
        }
        ChildGenderComboBox.addItem("MALE");
        ChildGenderComboBox.addItem("FEMALE");
        TeacherGenderComboBox.addItem("MALE");
        TeacherGenderComboBox.addItem("FEMALE");

        // 初始事件
        ParentButton.doClick();

        // JFrame界面
        JFrame frame = new JFrame("课程中介系统");
        frame.setContentPane(RegWindowPanel);
        frame.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        frame.pack();
        frame.setVisible(true);
    }
}
