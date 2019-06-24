package view;

import DAO.MySQLDAO;
import model.News;
import model.account.Account;

import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.text.SimpleDateFormat;

public class NewsBulletinWindow {
    private JPanel NewsBulletinWindowPanel;
    private JTextArea MainTextArea;
    private JButton ChangeButton;
    private JButton SaveButton;
    private JLabel TimeLabel;
    private JLabel AuthorLabel;
    private JTextField TitleField;

    public NewsBulletinWindow(Account user) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String currentTime = sdf.format(System.currentTimeMillis());

        News newsBulletin = new News();
        newsBulletin.setmPublisher(user.getUsername());
        newsBulletin.setmTime(currentTime);
        newsBulletin.setmNewsId(currentTime + " " + user.getUsername());

        SaveButton.setEnabled(true);
        TitleField.setEditable(true);
        MainTextArea.setEditable(true);

        SaveButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                ChangeButton.setEnabled(true);
                SaveButton.setEnabled(false);
                TitleField.setEditable(false);
                MainTextArea.setEditable(false);
                newsBulletin.setmTitle(TitleField.getText());
                newsBulletin.setmContent(MainTextArea.getText());
                MySQLDAO.getInstance().insertNews(newsBulletin);
                JOptionPane.showMessageDialog(null, "添加成功！");
            }
        });

        TitleField.setText(newsBulletin.getmTitle());
        TimeLabel.setText("时间：" + newsBulletin.getmTime());
        AuthorLabel.setText("作者：" + newsBulletin.getmPublisher());
        MainTextArea.setText(newsBulletin.getmContent());

        if (user.getUserType() == Account.UserType.SYSADMIN || user.getUsername() == newsBulletin.getmPublisher()) {
            SaveButton.setVisible(true);
        }

        // JFrame界面
        JFrame frame = new JFrame("课程中介系统");
        frame.setContentPane(NewsBulletinWindowPanel);
        frame.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        frame.pack();
        frame.setVisible(true);
    }

    public NewsBulletinWindow(Account user, News newsBulletin) {
        ChangeButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                ChangeButton.setEnabled(false);
                SaveButton.setEnabled(true);
                TitleField.setEditable(true);
                MainTextArea.setEditable(true);
            }
        });
        SaveButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                ChangeButton.setEnabled(true);
                SaveButton.setEnabled(false);
                TitleField.setEditable(false);
                MainTextArea.setEditable(false);
                newsBulletin.setmTitle(TitleField.getText());
                newsBulletin.setmContent(MainTextArea.getText());
                MySQLDAO.getInstance().updateNews(newsBulletin);
            }
        });

        TitleField.setText(newsBulletin.getmTitle());
        TimeLabel.setText("时间：" + newsBulletin.getmTime());
        AuthorLabel.setText("作者：" + newsBulletin.getmPublisher());
        MainTextArea.setText(newsBulletin.getmContent());

        if (user.getUserType() == Account.UserType.SYSADMIN || user.getUsername() == newsBulletin.getmPublisher()) {
            ChangeButton.setVisible(true);
            SaveButton.setVisible(true);
        }

        // JFrame界面
        JFrame frame = new JFrame("课程中介系统");
        frame.setContentPane(NewsBulletinWindowPanel);
        frame.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        frame.pack();
        frame.setVisible(true);
    }
}
