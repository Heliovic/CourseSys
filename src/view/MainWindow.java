package view;

import model.Account;

import javax.swing.*;

public class MainWindow {
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
    }

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
}
