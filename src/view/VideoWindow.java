package view;

import DAO.MySQLDAO;
import model.Video;
import model.account.Account;
import utils.GeneralGenerator;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.net.URI;
import java.text.SimpleDateFormat;

public class VideoWindow {
    private JPanel VideoWindowPanel;
    private JTextArea MainTextArea;
    private JLabel TimeLabel;
    private JButton ChangeButton;
    private JButton SaveButton;
    private JLabel AuthorLabel;
    private JButton PlayButton;
    private JTextField TitleField;
    private JPanel ButtonPanel;

    public VideoWindow(Account user) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String currentTime = sdf.format(System.currentTimeMillis());

        Video video = new Video();
        video.setmPublisher(user.getUsername());
        video.setmTime(currentTime);

        SaveButton.setVisible(true);
        SaveButton.setEnabled(true);
        PlayButton.setVisible(false);
        TitleField.setEditable(true);
        MainTextArea.setEditable(true);

        TimeLabel.setText("时间：" + video.getmTime());
        AuthorLabel.setText("作者：" + video.getmPublisher());

        // JFrame界面
        JFrame frame = new JFrame("课程中介系统");
        frame.setContentPane(VideoWindowPanel);
        frame.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        frame.pack();
        frame.setVisible(true);

        SaveButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                SaveButton.setEnabled(false);
                TitleField.setEditable(false);
                MainTextArea.setEditable(false);
                video.setmTitle(TitleField.getText());
                video.setmVideo_id(GeneralGenerator.getPicId(user.getUsername()));
                video.setmUrl(MainTextArea.getText());
                MySQLDAO.getInstance().insertVideo(video);
                JOptionPane.showMessageDialog(null, "添加成功！");
            }
        });
    }

    public VideoWindow(Account user, Video video) {
        if (user.getUserType() == Account.UserType.SYSADMIN) {
            ChangeButton.setVisible(true);
            SaveButton.setVisible(true);
        }

        TitleField.setText(video.getmTitle());
        TimeLabel.setText("时间：" + video.getmTime());
        AuthorLabel.setText("作者：" + video.getmPublisher());
        MainTextArea.setText(video.getmUrl());

        // JFrame界面
        JFrame frame = new JFrame("视频播放");
        frame.setContentPane(VideoWindowPanel);
        frame.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        frame.pack();
        frame.setVisible(true);

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
                video.setmTitle(TitleField.getText());
                video.setmUrl(MainTextArea.getText());
                MySQLDAO.getInstance().updateVideo(video);
            }
        });
        PlayButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                try {
                    Desktop desktop = Desktop.getDesktop();
                    desktop.browse(new URI(video.getmUrl()));
                } catch (Exception exce) {
                    exce.printStackTrace();
                }
            }
        });
    }
}
