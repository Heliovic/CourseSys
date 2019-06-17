package view;

import model.Account;
import model.EduOrg;

import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class LogOrRegWindow {
    public LogOrRegWindow() {
        LogButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                Account test = new EduOrg();
                test.setUserType(Account.UserType.EDUORG);
                new MainWindow(test);
            }
        });
    }

    public static void main(String[] args) {
        JFrame frame = new JFrame("LogOrRegWindow");
        frame.setContentPane(new LogOrRegWindow().MainPanel);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.pack();
        frame.setVisible(true);
    }

    private JPanel MainPanel;
    private JButton LogButton;
}
