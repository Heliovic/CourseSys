package view;

import model.account.Account;
import model.account.EduOrg;
import model.account.Parent;
import model.account.Teacher;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

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
    private JFormattedTextField TelField;
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
    private JComboBox TeacherComboBox;
    private JFormattedTextField TeacherIDField;
    private JComboBox TeacherCourseComboBox;
    private JFormattedTextField TeacherYearField;
    private JFormattedTextField TeacherAgeField;
    private JTextField TeacherIntroductionField;
    private JFormattedTextField EduOrgAgeField;
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
                switch (User.getUserType()) {
                    case PARENT:

                        break;
                    case TEACHER:

                        break;
                    case EDUORG:

                        break;
                    default:
                        JOptionPane.showMessageDialog(null, "用户类型错误!");
                        return;
                }
            }
        });

        // 卡片布局
        cl = (CardLayout) CardPanel.getLayout();

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
