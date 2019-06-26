package view;

import DAO.MySQLDAO;
import model.account.*;

import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class LogWindow {
    private JPanel LogWindowPanel;
    private JTextField UserField;
    private JPasswordField passwordField;
    private JButton LogButton;
    private JLabel TitleLable;
    private JLabel UserLabel;
    private JLabel PasswdLabel;
    private JButton RegButton;

    public LogWindow() {
        LogButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                String username = UserField.getText();
                String password = new String(passwordField.getPassword());
                Account a = MySQLDAO.getInstance().getAccountByUsername(username);
                if (a == null) {
                    JOptionPane.showMessageDialog(null, "用户名不存在!");
                    return;
                }

                if (a.getUserType() == Account.UserType.EDUORG) {
                    EduOrg org = MySQLDAO.getInstance().getEduOrgByUsername(a.getUsername());
                    org.setUserType(Account.UserType.EDUORG);
                    if (org.getPassword().equals(password)) {
                        if (org.isQualified().toString().equals("YES")) {
                            new MainWindow(org);
                        } else if (org.isQualified().toString().equals("CHECK")){
                            JOptionPane.showMessageDialog(null, "正在审核中!");
                        } else if (org.isQualified().toString().equals("NO")) {
                            JOptionPane.showMessageDialog(null, "未通过申请!");
                        }
                        return;
                    }
                } else if (a.getUserType() == Account.UserType.PARENT) {
                    Parent par = MySQLDAO.getInstance().getParentByUsername(a.getUsername());
                    par.setUserType(Account.UserType.PARENT);
                    if (par.getPassword().equals(password)) {
                        new MainWindow(par);
                        return;
                    }
                } else if (a.getUserType() == Account.UserType.TEACHER) {
                    Teacher teacher = MySQLDAO.getInstance().getTeacherByUsername(a.getUsername());
                    teacher.setUserType(Account.UserType.TEACHER);
                    if (teacher.getPassword().equals(password)){
                        if (teacher.isQualified().toString().equals("YES")) {
                            new MainWindow(teacher);
                        } else if (teacher.isQualified().toString().equals("CHECK")){
                            JOptionPane.showMessageDialog(null, "正在审核中!");
                        } else if (teacher.isQualified().toString().equals("NO")) {
                            JOptionPane.showMessageDialog(null, "未通过申请!");
                        }
                        return;
                    }
                } else if (a.getUserType() == Account.UserType.SYSADMIN) {
                    Sysadmin sysadmin = MySQLDAO.getInstance().getSyaadminByUsername(a.getUsername());
                    sysadmin.setUserType(Account.UserType.SYSADMIN);
                    if (sysadmin.getPassword().equals(password)) {
                        new MainWindow(sysadmin);
                        return;
                    }
                }

                JOptionPane.showMessageDialog(null, "密码错误!");
            }
        });
        RegButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                new RegView();
            }
        });
    }

    public static void main(String[] args) {
        JFrame frame = new JFrame("课程中介系统");
        frame.setContentPane(new LogWindow().LogWindowPanel);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.pack();
        frame.setVisible(true);
    }

}
