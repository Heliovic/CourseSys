package view;

import DAO.MySQLDAO;
import model.Course;
import model.CourseComment;
import model.TeachComment;
import model.account.Account;
import model.account.Parent;
import utils.GeneralGenerator;

import javax.swing.*;
import javax.swing.filechooser.FileNameExtensionFilter;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.ItemEvent;
import java.awt.event.ItemListener;
import java.io.File;

public class CourseCommentWindow {

    private Parent mParent;
    private Course mCourse;

    private JPanel CourseCommentPanel;
    private JComboBox mCommentToComboBox;
    private JComboBox mScoreComboBox;
    private JTextArea mCommentContentTextArea;
    private JTextField mPicPathTextField;
    private JButton mGetPathButton;
    private JButton mSubmitCommentButton;
    private JButton mCommentEditButton;
    private JButton mUndoCommentButton;


    public CourseCommentWindow(Parent p, Course c) {

        mParent = p;
        mCourse = c;


        JFrame frame = new JFrame("评论打分");
        frame.setContentPane(CourseCommentPanel);
        frame.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        frame.pack();
        frame.setVisible(true);
        mGetPathButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                JFileChooser chooser = new JFileChooser(".");
                FileNameExtensionFilter filter = new FileNameExtensionFilter("JPEG file", "jpg");
                chooser.addChoosableFileFilter(filter);
                if (chooser.showDialog(frame, "选择图片") == JFileChooser.APPROVE_OPTION &&
                    chooser.getSelectedFile().getPath().endsWith(".jpg")) {
                    mPicPathTextField.setText(chooser.getSelectedFile().getPath());
                }
            }
        });
        mSubmitCommentButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {

                if (mCommentToComboBox.getSelectedIndex() == 0) {
                    TeachComment comment = new TeachComment();
                    comment.setTeachId(mCourse.getTeachId());
                    comment.setPublisher(mParent.getUsername());
                    comment.setScore(mScoreComboBox.getSelectedIndex());
                    comment.setPicId(GeneralGenerator.getPicId(mParent.getUsername()));
                    comment.setContent(mCommentContentTextArea.getText());

                    File file = new File(mPicPathTextField.getText());
                    if (file.exists())
                        MySQLDAO.getInstance().insertPicture(comment.getPicId(), mPicPathTextField.getText());
                    else
                        comment.setPicId("NO_PIC");
                    MySQLDAO.getInstance().insertTeachComment(comment);
                } else {
                    CourseComment comment = new CourseComment();
                    comment.setCourseId(mCourse.getCourseId());
                    comment.setPublisher(mParent.getUsername());
                    comment.setScore(mScoreComboBox.getSelectedIndex());
                    comment.setPicId(GeneralGenerator.getPicId(mParent.getUsername()));
                    comment.setContent(mCommentContentTextArea.getText());

                    File file = new File(mPicPathTextField.getText());
                    if (file.exists())
                        MySQLDAO.getInstance().insertPicture(comment.getPicId(), mPicPathTextField.getText());
                    else
                        comment.setPicId("NO_PIC");
                    MySQLDAO.getInstance().insertCourseComment(comment);
                }
                updateButtonEnable();
            }

        });
        mCommentToComboBox.addItemListener(new ItemListener() {
            @Override
            public void itemStateChanged(ItemEvent e) {
                if (mCommentToComboBox.getSelectedIndex() == 0) {
                    TeachComment teachComment = MySQLDAO.getInstance().getTeachCommentByPrimaryKey(mCourse.getTeachId(), mParent.getUsername());
                    mCommentContentTextArea.setText(teachComment.getContent());
                } else {
                    CourseComment courseComment = MySQLDAO.getInstance().getCourseCommentByPrimaryKey(mCourse.getCourseId(), mParent.getUsername());
                    mCommentContentTextArea.setText(courseComment.getContent());
                }
                updateButtonEnable();
            }
        });

        mCommentEditButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                if (mCommentToComboBox.getSelectedIndex() == 0) {
                    TeachComment comment = MySQLDAO.getInstance().getTeachCommentByPrimaryKey(mCourse.getTeachId(), mParent.getUsername());
                    comment.setTeachId(mCourse.getTeachId());
                    comment.setPublisher(mParent.getUsername());
                    comment.setScore(mScoreComboBox.getSelectedIndex());

                    String oldPicId = comment.getPicId();

                    comment.setPicId(GeneralGenerator.getPicId(mParent.getUsername()));
                    comment.setContent(mCommentContentTextArea.getText());

                    File file = new File(mPicPathTextField.getText());
                    if (file.exists())
                        MySQLDAO.getInstance().insertPicture(comment.getPicId(), mPicPathTextField.getText());
                    else
                        comment.setPicId("NO_PIC");
                    MySQLDAO.getInstance().updateTeachComment(comment);
                    if (!oldPicId.equals("NO_PIC"))
                        MySQLDAO.getInstance().deletePicture(oldPicId);
                } else {
                    CourseComment comment = MySQLDAO.getInstance().getCourseCommentByPrimaryKey(mCourse.getCourseId(), mParent.getUsername());
                    comment.setCourseId(mCourse.getCourseId());
                    comment.setPublisher(mParent.getUsername());
                    comment.setScore(mScoreComboBox.getSelectedIndex());

                    String oldPicId = comment.getPicId();

                    comment.setPicId(GeneralGenerator.getPicId(mParent.getUsername()));
                    comment.setContent(mCommentContentTextArea.getText());

                    File file = new File(mPicPathTextField.getText());
                    if (file.exists())
                        MySQLDAO.getInstance().insertPicture(comment.getPicId(), mPicPathTextField.getText());
                    else
                        comment.setPicId("NO_PIC");
                    MySQLDAO.getInstance().updateCourseComment(comment);
                    if (!oldPicId.equals("NO_PIC"))
                        MySQLDAO.getInstance().deletePicture(oldPicId);
                }
                updateButtonEnable();
            }
        });

        mUndoCommentButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                if (mCommentToComboBox.getSelectedIndex() == 0) {
                    TeachComment comment = new TeachComment();
                    comment.setTeachId(mCourse.getTeachId());
                    comment.setPublisher(mParent.getUsername());
                    comment.setScore(mScoreComboBox.getSelectedIndex());
                    comment.setPicId(GeneralGenerator.getPicId(mParent.getUsername()));
                    comment.setContent(mCommentContentTextArea.getText());

                    MySQLDAO.getInstance().deleteTeachComment(comment.getTeachId(), comment.getPublisher());
                } else {
                    CourseComment comment = new CourseComment();
                    comment.setCourseId(mCourse.getCourseId());
                    comment.setPublisher(mParent.getUsername());
                    comment.setScore(mScoreComboBox.getSelectedIndex());
                    comment.setPicId(GeneralGenerator.getPicId(mParent.getUsername()));
                    comment.setContent(mCommentContentTextArea.getText());

                    MySQLDAO.getInstance().deleteCourseComment(comment.getCourseId(), comment.getPublisher());
                }
                updateButtonEnable();
            }
        });

        mScoreComboBox.addItem("不打分");
        mScoreComboBox.addItem("1");
        mScoreComboBox.addItem("2");
        mScoreComboBox.addItem("3");
        mScoreComboBox.addItem("4");
        mScoreComboBox.addItem("5");
        mCommentToComboBox.addItem("机构/教师");
        mCommentToComboBox.addItem("课程");


    }

    private void updateButtonEnable() {
        if (mCommentToComboBox.getSelectedIndex() == 0) {
            TeachComment teachComment = MySQLDAO.getInstance().getTeachCommentByPrimaryKey(mCourse.getTeachId(), mParent.getUsername());
            if (teachComment.getTeachId() != null && teachComment.getTeachId().equals(mCourse.getTeachId()) && teachComment.getPublisher() != null && teachComment.getPublisher().equals(mParent.getUsername())) {
                mCommentEditButton.setEnabled(true);
                mUndoCommentButton.setEnabled(true);
                mSubmitCommentButton.setEnabled(false);
            } else {
                mCommentEditButton.setEnabled(false);
                mUndoCommentButton.setEnabled(false);
                mSubmitCommentButton.setEnabled(true);
            }
        } else {
            CourseComment courseComment = MySQLDAO.getInstance().getCourseCommentByPrimaryKey(mCourse.getCourseId(), mParent.getUsername());
            if (courseComment.getCourseId() != null && courseComment.getCourseId().equals(mCourse.getCourseId()) && courseComment.getPublisher() != null && courseComment.getPublisher().equals(mParent.getUsername())) {
                mCommentEditButton.setEnabled(true);
                mUndoCommentButton.setEnabled(true);
                mSubmitCommentButton.setEnabled(false);
            } else {
                mCommentEditButton.setEnabled(false);
                mUndoCommentButton.setEnabled(false);
                mSubmitCommentButton.setEnabled(true);
            }
        }
    }
}
