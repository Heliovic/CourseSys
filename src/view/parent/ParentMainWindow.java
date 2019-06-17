package view.parent;

import model.Parent;
import view.teacher.TeacherEditInfoView;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class ParentMainWindow extends JFrame {
    private static final String FRAME_NAME = "学生家长用户";
    private static final int LOCATION_X = 600;
    private static final int LOCATION_Y = 300;
    private static final int FRAME_X = 600;
    private static final int FRAME_Y = 400;

    private static final String LABEL_TEXT_HINT1 = "你想要做些什么？";
    private static final String BUTTON_TEXT_CHOOSE_ADDR = "查询课程信息";
    private static final String BUTTON_TEXT_ADDR_COURSE_LIST = "个人课程表";
    //private static final String BUTTON_TEXT_PREVIEW_APPLICATION = "付费";
    private static final String BUTTON_TEXT_INFO_EDIT = "信息修改";
    private static final String BUTTON_TEXT_NOTIFICATION = "通知公告";
    private static final String BUTTON_TEXT_PERSONAL_INFO = "个人信息";

    private JLabel mHintLabel1 = new JLabel(LABEL_TEXT_HINT1);
    private JButton
            mChooseAddrButton = new JButton(BUTTON_TEXT_CHOOSE_ADDR),
            mCourseButton = new JButton(BUTTON_TEXT_ADDR_COURSE_LIST),
            //mPreviewAppButton = new JButton(BUTTON_TEXT_PREVIEW_APPLICATION),
            mInfoEditButton = new JButton(BUTTON_TEXT_INFO_EDIT),
            mNotiButton = new JButton(BUTTON_TEXT_NOTIFICATION),
            mPersonalInfoButton = new JButton(BUTTON_TEXT_PERSONAL_INFO);
    private  Parent mParentAccount;
    public ParentMainWindow(Parent parent) {
        super(FRAME_NAME);
        this.mParentAccount = parent;
        mInfoEditButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                new ParentEditInfoView(mParentAccount);
            }
        });
        JPanel buttonPanel = new JPanel();
        buttonPanel.setLayout(new GridLayout(3, 2));
        buttonPanel.add(mChooseAddrButton);
        buttonPanel.add(mCourseButton);
        //buttonPanel.add(mPreviewAppButton);
        buttonPanel.add(mInfoEditButton);
        buttonPanel.add(mNotiButton);
        buttonPanel.add(mPersonalInfoButton);

        this.setLayout(new BorderLayout());
        this.getContentPane().add(mHintLabel1, BorderLayout.NORTH);
        this.getContentPane().add(buttonPanel, BorderLayout.CENTER);

        this.setLocation(LOCATION_X, LOCATION_Y);
        this.setSize(FRAME_X, FRAME_Y);
        this.setVisible(true);

        this.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
    }
}
