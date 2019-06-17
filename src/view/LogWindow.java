package view;

import model.account.Account;
import model.account.Parent;

import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class LogWindow {
    private JPanel MainPanel;
    private JTextField UserField;
    private JPasswordField passwordField1;
    private JButton LogButton;
    private JLabel TitleLable;
    private JLabel UserLabel;
    private JLabel PasswdLabel;
    private JButton RegButton;

    public LogWindow() {

        LogButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                Account t = new Parent();
                t.setUserType(Account.UserType.PARENT);
                new MainWindow(t);
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
        frame.setContentPane(new LogWindow().MainPanel);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.pack();
        frame.setVisible(true);
    }

}
