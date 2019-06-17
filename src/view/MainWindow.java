package view;

import model.Account;

import javax.management.Notification;
import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class MainWindow {
    private JPanel MainWindowPanel;
    private JPanel ButtonPanel;
    private JPanel CardPanel;
    private JButton NotificationButton;
    private JButton PersonalInfoButton;
    private JButton CourseListButton;
    private JButton button4;
    private JButton button5Button;
    private JButton button6Button;
    private JPanel NotificationPanel;
    private JPanel PersonalInfoPanel;
    private JPanel CourseListPanel;

    public MainWindow(Account user) {
        switch (user.getUserType()) {
            case SYSADMIN:
                break;
            case EDUORG:
                button4.setVisible(true);
                break;
            case TEACHER:
                break;
            case PARENT:
                break;
        }

        JFrame frame = new JFrame("MainWindow");
        frame.setContentPane(MainWindowPanel);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.pack();
        frame.setVisible(true);
        NotificationButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                NotificationPanel.setVisible(true);
            }
        });
        PersonalInfoButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {

            }
        });
        CourseListButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {

            }
        });
    }


}
