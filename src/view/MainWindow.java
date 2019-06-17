package view;

import model.account.Account;
import utils.Constants;

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
    private JButton CourseQueryButton;
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
    private JPanel CourseQueryPanel;
    private JTable mCourseQueryTable;
    private JComboBox mCourseFieldComboBox;
    private JTextField mTextField1;
    private JSpinner mSpinner1;
    private JComboBox mPriceRangeComboBox;
    private JLabel FieldLabel;
    private JLabel PlaceLabel;
    private JLabel EduAgeLabel;
    private JLabel PriceRangeLabel;
    private JButton mCourseQueryButton;
    private CardLayout cl;

    public MainWindow(Account user) {
        cl = (CardLayout) CardPanel.getLayout();

        switch (user.getUserType()) {
            case SYSADMIN:
                break;
            case EDUORG:
                //CourseQueryButton.setVisible(true);
                break;
            case TEACHER:
                break;
            case PARENT:
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
