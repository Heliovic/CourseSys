package view.teacher;

import DAO.MySQLDAO;
import model.Account;
import model.Teacher;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class TeacherEditInfoView extends JFrame {

    private static final int LOCATION_X = 600;
    private static final int LOCATION_Y = 300;
    private static final int FRAME_X = 600;
    private static final int FRAME_Y = 400;


    static final String LABEL_TEXT_USERNAME = "用户名";
    static final String LABEL_TEXT_PASSWORD = "密    码";
    static final String LABEL_TEXT_EMAIL = "Email";
    static final String LABEL_TEXT_TEL = "电    话";

    static final String BUTTON_TEXT_EDIT = "修改";

    static final String LABEL_TEXT_TEA_NAME = "姓名";
    static final String LABEL_TEXT_TEA_GENDER = "性别";
    static final String LABEL_TEXT_TEA_BIRTHDAY = "年龄";
    static final String LABEL_TEXT_TEA_EDU_FIELD = "教育领域";
    static final String LABEL_TEXT_TEA_EDU_YEAR = "从教年限";
    static final String LABEL_TEXT_TEA_EDU_AGE = "教育适合年龄";
    static final String LABEL_TEXT_TEA_ID_NUMBER = "身份证号";
    static final String LABEL_TEXT_TEA_CONTACT = "联系方式";
    static final String LABEL_TEXT_TEA_INTRODUCTION = "简介";

    private JTextField
            mTeacherNameTextField = new JTextField(10),
            mTeacherBirthdayTextField = new JTextField(10),
            mEduField = new JTextField(10),
            mEduYear = new JTextField(10),
            mEduAge = new JTextField(10),
            mTeacherIdNumber = new JTextField(10),
            mTeacherContact = new JTextField(10),
            mTeacherIntroduction = new JTextField(10);
    private JComboBox mTeacherGenderCombox = new JComboBox();

    private JLabel mUsernameLabel = new JLabel(LABEL_TEXT_USERNAME);
    private JLabel mPasswordLabel = new JLabel(LABEL_TEXT_PASSWORD);
    private JLabel mTelLabel = new JLabel(LABEL_TEXT_TEL);
    private JLabel mEmailLabel = new JLabel(LABEL_TEXT_EMAIL);

    private JTextField mUsernameTextField = new JTextField(10);
    private JPasswordField mPasswordTextField = new JPasswordField(10);
    private JTextField mTelTextField = new JTextField(10);
    private JTextField mEmailTextField = new JTextField(10);

    private JPanel mUserNamePanel, mPasswordPanel, mTelPanel, mEmailPanel;

    private JButton mEditButton = new JButton(BUTTON_TEXT_EDIT);

    private Teacher mTeacherAccount;

    public TeacherEditInfoView(Teacher teacher) {
        JPanel topPanel = new JPanel();
        topPanel.setLayout(new GridLayout(10, 1));

        this.mTeacherAccount = teacher;

        mUsernameTextField.setText(mTeacherAccount.getUsername());
        mUsernameTextField.setEditable(false);
        mPasswordTextField.setText(mTeacherAccount.getPassword());
        mTelTextField.setText(mTeacherAccount.getTel());
        mEmailTextField.setText(mTeacherAccount.getEmail());
        mTeacherIdNumber.setText(mTeacherAccount.getmTeacherIdNumber());
        mTeacherIdNumber.setEditable(false);
        mTeacherNameTextField.setText(mTeacherAccount.getmTeacherName());
        mTeacherBirthdayTextField.setText(Integer.toString(mTeacherAccount.getTeaAge()));
        mTeacherContact.setText(mTeacherAccount.getmTeacherContact());
        mTeacherIntroduction.setText(mTeacherAccount.getmTeacherIntroduction());
        mEduField.setText(mTeacherAccount.getmCourseField().toString());
        mEduYear.setText(String.valueOf(mTeacherAccount.getmEduYear()));
        mEduAge.setText(String.valueOf(mTeacherAccount.getmEduAge()));


        mUserNamePanel = new JPanel();
        mUserNamePanel.add(mUsernameLabel);
        mUserNamePanel.add(mUsernameTextField);

        mPasswordPanel = new JPanel();
        mPasswordPanel.add(mPasswordLabel);
        mPasswordPanel.add(mPasswordTextField);

        mTelPanel = new JPanel();
        mTelPanel.add(mTelLabel);
        mTelPanel.add(mTelTextField);

        mEmailPanel = new JPanel();
        mEmailPanel.add(mEmailLabel);
        mEmailPanel.add(mEmailTextField);

        JPanel teaNamePanel = new JPanel();
        teaNamePanel.add(new JLabel(LABEL_TEXT_TEA_NAME));
        teaNamePanel.add(mTeacherNameTextField);


        JPanel teaGenderPanel = new JPanel();
        mTeacherGenderCombox.addItem("男");
        mTeacherGenderCombox.addItem("女");
        teaGenderPanel.add(new JLabel(LABEL_TEXT_TEA_GENDER));
        teaGenderPanel.add(mTeacherGenderCombox);
        mTeacherGenderCombox.setSelectedIndex((mTeacherAccount.getmTeacherGender().toString().equals("FEMALE") ? 1 : 0));
        JPanel teaBirthdayPanel = new JPanel();
        teaBirthdayPanel.add(new JLabel(LABEL_TEXT_TEA_BIRTHDAY));
        teaBirthdayPanel.add(mTeacherBirthdayTextField);

        JPanel teaFieldPanel = new JPanel();
        teaFieldPanel.add(new JLabel(LABEL_TEXT_TEA_EDU_FIELD));
        teaFieldPanel.add(mEduField);

        JPanel eduYearPanel = new JPanel();
        eduYearPanel.add(new JLabel(LABEL_TEXT_TEA_EDU_YEAR));
        eduYearPanel.add(mEduYear);

        JPanel eduAgePanel = new JPanel();
        eduAgePanel.add(new JLabel(LABEL_TEXT_TEA_EDU_AGE));
        eduAgePanel.add(mEduAge);

        JPanel idNumberPanel = new JPanel();
        idNumberPanel.add(new JLabel(LABEL_TEXT_TEA_ID_NUMBER));
        idNumberPanel.add(mTeacherIdNumber);

        JPanel contactPanel = new JPanel();
        contactPanel.add(new JLabel(LABEL_TEXT_TEA_CONTACT));
        contactPanel.add(mTeacherContact);

        JPanel introPanel = new JPanel();
        introPanel.add(new JLabel(LABEL_TEXT_TEA_INTRODUCTION));
        introPanel.add(mTeacherIntroduction);

        topPanel.add(mUserNamePanel);
        topPanel.add(mPasswordPanel);
        topPanel.add(mTelPanel);
        topPanel.add(mEmailPanel);

        topPanel.add(teaNamePanel);
        topPanel.add(teaGenderPanel);
        topPanel.add(teaBirthdayPanel);
        topPanel.add(teaFieldPanel);
        topPanel.add(eduYearPanel);
        topPanel.add(eduAgePanel);
        topPanel.add(idNumberPanel);
        topPanel.add(contactPanel);
        topPanel.add(introPanel);

        this.setLayout(new BorderLayout());

        this.add(topPanel, BorderLayout.CENTER);
        this.add(mEditButton, BorderLayout.SOUTH);

        this.setLocation(LOCATION_X, LOCATION_Y);
        this.setSize(FRAME_X, FRAME_Y);
        this.setVisible(true);

        this.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);

        mEditButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                mTeacherAccount.setUsername(mUsernameTextField.getText());
                mTeacherAccount.setPassword(new String(mPasswordTextField.getPassword()));
                mTeacherAccount.setTel(mTelTextField.getText());
                mTeacherAccount.setEmail(mEmailTextField.getText());
                mTeacherAccount.setUserType(Account.UserType.TEACHER);
                mTeacherAccount.setmTeacherName(mTeacherNameTextField.getText());
                mTeacherAccount.setmTeacherGender(mTeacherGenderCombox.getSelectedItem().equals("男") ? Account.Gender.MALE: Account.Gender.FEMALE);
                mTeacherAccount.setTeaAge(mTeacherBirthdayTextField.getText());
                mTeacherAccount.setmTeacherIdNumber(mTeacherIdNumber.getText());
                mTeacherAccount.setmTeacherContact(mTeacherContact.getText());
                mTeacherAccount.setmTeacherIntroduction(mTeacherIntroduction.getText());
                mTeacherAccount.setmEduAge(Integer.parseInt(mEduAge.getText()));
                mTeacherAccount.setmEduYear(Integer.parseInt(mEduYear.getText()));
                mTeacherAccount.setmTeacherIntroduction(mTeacherIntroduction.getText());
                MySQLDAO.getInstance().updateTeacher(mTeacherAccount);
            }
        });
    }
}
