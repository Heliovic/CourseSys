package view;

import DAO.MySQLDAO;
import model.CourseComment;

import javax.swing.*;
import java.util.List;

public class CommentWindow {
    private JPanel CommentWindowPanel;
    private JTextArea ContentTextArea;
    private JLabel AuthorLabel;
    private JLabel ScoreLabel;
    private JLabel mAuthorLabel;
    private JLabel mScoreLabel;
    private JLabel mImageLabel;

    private CourseComment mCourseComment;

    public CommentWindow(CourseComment comment) {
        mCourseComment = comment;

        mAuthorLabel.setText(MySQLDAO.getInstance().getParentByUsername(comment.getPublisher()).getParentName());
        mScoreLabel.setText(Integer.toString(comment.getScore()));
        if (!comment.getPicId().equals("NO_PIC"))
            mImageLabel.setText("");
        mImageLabel.setIcon(MySQLDAO.getInstance().getPictureById(comment.getPicId()));
        ContentTextArea.setText(comment.getContent());

        // JFrame界面
        JFrame frame = new JFrame("课程中介系统");
        frame.setContentPane(CommentWindowPanel);
        frame.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        frame.pack();
        frame.setVisible(true);
    }
}
