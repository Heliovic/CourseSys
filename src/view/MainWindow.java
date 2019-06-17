package view;

import model.Account;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class MainWindow {
    private JPanel MainWindowPanel;
    private JPanel ButtonPanel;
    private JPanel CardPanel;
    private JButton NotificationButton;
    private JButton AccountInfoButton;
    private JButton CourseListButton;
    private JButton button4;
    private JButton button5Button;
    private JButton button6Button;
    private JPanel NotificationPanel;
    private JPanel AccountInfoPanel;
    private JPanel CourseListPanel;
    private JTextField UserField;
    private JTextField TelephoneField;
    private JTextField EmailField;
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
    private CardLayout cl;

    public MainWindow(Account user) {
        cl = new CardLayout(0, 0);

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

        JFrame frame = new JFrame("课程中介系统");
        frame.setContentPane(MainWindowPanel);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.pack();
        frame.setVisible(true);
        NotificationButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                cl = (CardLayout) CardPanel.getLayout();
                cl.show(CardPanel, "Notification");
            }
        });
        AccountInfoButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                cl.show(CardPanel, "AccountInfo");
            }
        });
        CourseListButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                cl.show(CardPanel, "CourseList");
            }
        });
    }


}
