package view;

import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class NewsBulletinWindow {
    private JPanel NewsBulletinWindowPanel;
    private JTextArea MainTextArea;
    private JButton ChangeButton;
    private JButton SaveButton;
    private JLabel DateLabel;
    private JLabel AuthorLabel;
    private JTextField TitleField;

    public NewsBulletinWindow() {
        // JFrame界面
        JFrame frame = new JFrame("课程中介系统");
        frame.setContentPane(NewsBulletinWindowPanel);
        frame.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        frame.pack();
        frame.setVisible(true);

        ChangeButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {

            }
        });
        SaveButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {

            }
        });
    }
}
