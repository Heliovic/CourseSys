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
                    JOptionPane.showMessageDialog(null, "用户名不存在");
                    return;
                }
                if (a.getUserType() == Account.UserType.EDUORG) {
                    EduOrg org = MySQLDAO.getInstance().getEduOrgByUsername(a.getUsername());
                    org.setUserType(Account.UserType.EDUORG);
                    if (org.getPassword().equals(password)) {
                        if (org.isQualified()) {
                            new MainWindow(org);
                            JOptionPane.showMessageDialog(null, "教育机构登录成功！");
                        } else {
                            JOptionPane.showMessageDialog(null, "等待审核");
                        }
                    } else {
                        JOptionPane.showMessageDialog(null, "用户名或密码错误！");
                    }

                }
                if (a.getUserType() == Account.UserType.PARENT) {
                    Parent par = MySQLDAO.getInstance().getParentByUsername(a.getUsername());
                    par.setUserType(Account.UserType.PARENT);
                    if (par.getPassword().equals(password)) {
                        new MainWindow(par);
                        JOptionPane.showMessageDialog(null, "学生家长登录成功！");
                    }
                    else {
                        JOptionPane.showMessageDialog(null, "用户名或密码错误！");
                    }
                }
                if (a.getUserType() == Account.UserType.TEACHER) {
                    Teacher teacher = MySQLDAO.getInstance().getTeacherByUsername(a.getUsername());
                    teacher.setUserType(Account.UserType.TEACHER);
                    if (teacher.getPassword().equals(password)){
                        if (teacher.isQualified()) {
                            new MainWindow(teacher);
                            JOptionPane.showMessageDialog(null, "个人教师登录成功！");
                        } else {
                            JOptionPane.showMessageDialog(null, "等待审核");
                        }
                    } else {
                        JOptionPane.showMessageDialog(null, "用户名或密码错误！");
                    }
                }
                if (a.getUserType() == Account.UserType.SYSADMIN) {
                    Sysadmin sysadmin = MySQLDAO.getInstance().getSyaadminByUsername(a.getUsername());
                    sysadmin.setUserType(Account.UserType.SYSADMIN);
                    if (sysadmin.getPassword().equals(password)) {
                        new MainWindow(sysadmin);
                        JOptionPane.showMessageDialog(null, "系统管理员登陆成功");
                    } else {
                        JOptionPane.showMessageDialog(null, "用户名或密码错误！");
                    }
                }
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
