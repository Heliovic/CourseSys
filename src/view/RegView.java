package view;

import DAO.MySQLDAO;
import model.Account;
import model.Parent;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

abstract class RegPanel extends JPanel{
    static final String BUTTON_TEXT_LOGIN = "登录";
    static final String LABEL_TEXT_USERNAME = "用户名";
    static final String LABEL_TEXT_PASSWORD = "密    码";
    static final String LABEL_TEXT_EMAIL = "Email";
    static final String LABEL_TEXT_TEL = "电    话";

    static final String LABEL_TEXT_CHILD_NAME = "孩子姓名";
    static final String LABEL_TEXT_CHILD_BIRTHDAY = "孩子年龄";
    static final String LABEL_TEXT_CHILD_GENDER = "性别";
    static final String LABEL_TEXT_PAR_NAME = "家长姓名";
    static final String LABEL_TEXT_PAR_CONTACT = "联系方式";

    static final String LABEL_TEXT_TEA_NAME = "姓名";
    static final String LABEL_TEXT_TEA_GENDER = "性别";
    static final String LABEL_TEXT_TEA_BIRTHDAY = "年龄";
    static final String LABEL_TEXT_TEA_EDU_FIELD = "教育领域";
    static final String LABEL_TEXT_TEA_EDU_YEAR = "从教年限";
    static final String LABEL_TEXT_TEA_EDU_AGE = "教育适合年龄";
    static final String LABEL_TEXT_TEA_ID_NUMBER = "身份证号";
    static final String LABEL_TEXT_TEA_CONTACT = "联系方式";
    static final String LABEL_TEXT_TEA_INTRODUCTION = "简介";

    static final String LABEL_TEXT_ORG_EDU_FIELD = "教育领域";
    static final String LABEL_TEXT_ORG_CODE = "标识码";
    static final String LABEL_TEXT_ORG_ADDRESS = "店面地址";
    static final String LABEL_TEXT_ORG_EDU_AGE = "教育适合年龄";
    static final String LABEL_TEXT_ORG_CONTACT = "联系方式";
    static final String LABEL_TEXT_ORG_INTRODUCTION = "简介";

    abstract boolean checkValid();
    abstract void updateDatabase();

    protected JLabel mUsernameLabel = new JLabel(LABEL_TEXT_USERNAME);
    protected JLabel mPasswordLabel = new JLabel(LABEL_TEXT_PASSWORD);
    protected JLabel mTelLabel = new JLabel(LABEL_TEXT_TEL);
    protected JLabel mEmailLabel = new JLabel(LABEL_TEXT_EMAIL);

    protected JTextField mUsernameTextField = new JTextField(10);
    protected JPasswordField mPasswordTextField = new JPasswordField(10);
    protected JTextField mTelTextField = new JTextField(10);
    protected JTextField mEmailTextField = new JTextField(10);

    protected JPanel mUserNamePanel, mPasswordPanel, mTelPanel, mEmailPanel;

    protected RegPanel() {
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
    }

}

class EduOrgPanel extends RegPanel {
    public EduOrgPanel() {
        setLayout(new GridLayout(10, 1));

        JPanel eduFieldPanel = new JPanel();
        eduFieldPanel.add(new JLabel(LABEL_TEXT_ORG_EDU_FIELD));
        eduFieldPanel.add(new JTextField(10));

        JPanel codePanel = new JPanel();
        codePanel.add(new JLabel(LABEL_TEXT_ORG_CODE));
        codePanel.add(new JTextField(10));

        JPanel addressPanel = new JPanel();
        addressPanel.add(new JLabel(LABEL_TEXT_ORG_ADDRESS));
        addressPanel.add(new JTextField(10));

        JPanel eduAgePanel = new JPanel();
        eduAgePanel.add(new JLabel(LABEL_TEXT_ORG_EDU_AGE));
        eduAgePanel.add(new JTextField(10));

        JPanel contactPanel = new JPanel();
        contactPanel.add(new JLabel(LABEL_TEXT_ORG_CONTACT));
        contactPanel.add(new JTextField(10));

        JPanel introPanel = new JPanel();
        introPanel.add(new JLabel(LABEL_TEXT_ORG_INTRODUCTION));
        introPanel.add(new JTextField(10));

        this.add(mUserNamePanel);
        this.add(mPasswordPanel);
        this.add(mTelPanel);
        this.add(mEmailPanel);

        this.add(eduFieldPanel);
        this.add(codePanel);
        this.add(addressPanel);
        this.add(eduAgePanel);
        this.add(contactPanel);
        this.add(introPanel);
    }

    @Override
    public boolean checkValid() {
        return false;
    }

    @Override
    public void updateDatabase() {

    }
}

class TeaPanel extends RegPanel {
    public TeaPanel() {
        setLayout(new GridLayout(12, 1));

        JPanel teaNamePanel = new JPanel();
        teaNamePanel.add(new JLabel(LABEL_TEXT_TEA_NAME));
        teaNamePanel.add(new JTextField(10));


        JPanel teaGenderPanel = new JPanel();
        JComboBox comboBox = new JComboBox();
        comboBox.addItem("男");
        comboBox.addItem("女");
        teaGenderPanel.add(new JLabel(LABEL_TEXT_TEA_GENDER));
        teaGenderPanel.add(comboBox);

        JPanel teaBirthdayPanel = new JPanel();
        teaBirthdayPanel.add(new JLabel(LABEL_TEXT_TEA_BIRTHDAY));
        teaBirthdayPanel.add(new JTextField(10));

        JPanel teaFieldPanel = new JPanel();
        teaFieldPanel.add(new JLabel(LABEL_TEXT_TEA_EDU_FIELD));
        teaFieldPanel.add(new JTextField(10));

        JPanel eduYearPanel = new JPanel();
        eduYearPanel.add(new JLabel(LABEL_TEXT_TEA_EDU_YEAR));
        eduYearPanel.add(new JTextField(10));

        JPanel eduAgePanel = new JPanel();
        eduAgePanel.add(new JLabel(LABEL_TEXT_TEA_EDU_AGE));
        eduAgePanel.add(new JTextField(10));

        JPanel idNumberPanel = new JPanel();
        idNumberPanel.add(new JLabel(LABEL_TEXT_TEA_ID_NUMBER));
        idNumberPanel.add(new JTextField(10));

        JPanel contactPanel = new JPanel();
        contactPanel.add(new JLabel(LABEL_TEXT_TEA_CONTACT));
        contactPanel.add(new JTextField(10));

        JPanel introPanel = new JPanel();
        introPanel.add(new JLabel(LABEL_TEXT_TEA_INTRODUCTION));
        introPanel.add(new JTextField(10));

        this.add(mUserNamePanel);
        this.add(mPasswordPanel);
        this.add(mTelPanel);
        this.add(mEmailPanel);

        this.add(teaNamePanel);
        this.add(teaGenderPanel);
        this.add(teaBirthdayPanel);
        this.add(teaFieldPanel);
        this.add(eduYearPanel);
        this.add(eduAgePanel);
        this.add(idNumberPanel);
        this.add(contactPanel);
        this.add(introPanel);
    }

    @Override
    public boolean checkValid() {
        return false;
    }

    @Override
    public void updateDatabase() {

    }
}

class ParPanel extends RegPanel {

    private JTextField
            mChildNameTextField = new JTextField(10),
            mChildBirthdayTextField = new JTextField(10),
            mParentNameTextField = new JTextField(10),
            mParentContactTextField = new JTextField(10);
    private JComboBox mChildGenderCombox = new JComboBox();

    public ParPanel() {
        setLayout(new GridLayout(9, 1));

        JPanel childNamePanel = new JPanel();
        childNamePanel.add(new JLabel(LABEL_TEXT_CHILD_NAME));
        childNamePanel.add(mChildNameTextField);

        JPanel childBirthdayPanel = new JPanel();
        childBirthdayPanel.add(new JLabel(LABEL_TEXT_CHILD_BIRTHDAY));
        childBirthdayPanel.add(mChildBirthdayTextField);

        JPanel childGenderPanel = new JPanel();
        mChildGenderCombox.addItem("男");
        mChildGenderCombox.addItem("女");
        childGenderPanel.add(new JLabel(LABEL_TEXT_CHILD_GENDER));
        childGenderPanel.add(mChildGenderCombox);

        JPanel parnamePanel = new JPanel();
        parnamePanel.add(new JLabel(LABEL_TEXT_PAR_NAME));
        parnamePanel.add(mParentNameTextField);

        JPanel parcontactPanel = new JPanel();
        parcontactPanel.add(new JLabel(LABEL_TEXT_PAR_CONTACT));
        parcontactPanel.add(mParentContactTextField);

        this.add(mUserNamePanel);
        this.add(mPasswordPanel);
        this.add(mTelPanel);
        this.add(mEmailPanel);
        this.add(childNamePanel);
        this.add(childBirthdayPanel);
        this.add(childGenderPanel);
        this.add(parnamePanel);
        this.add(parcontactPanel);
    }

    @Override
    public boolean checkValid() {
        return false;
    }

    @Override
    public void updateDatabase() {
        Parent p = new Parent();
        p.setUsername(mUsernameTextField.getText());
        p.setPassword(new String(mPasswordTextField.getPassword()));
        p.setEmail(mEmailTextField.getText());
        p.setTel(mTelTextField.getText());
        p.setUserType(Account.UserType.PARENT);
        p.setChildName(mChildNameTextField.getText());
        p.setChildBirthday(mChildBirthdayTextField.getText());
        p.setChildGender(mChildGenderCombox.getSelectedItem().equals("男") ? Account.Gender.MALE: Account.Gender.FEMALE);
        p.setParentName(mParentNameTextField.getText());
        p.setParentContact(mParentContactTextField.getText());
        MySQLDAO.getInstance().insertParent(p);
    }
}

public class RegView extends JFrame implements ActionListener {
    private static final String FRAME_NAME = "注册";

    private static final String BUTTON_TEXT_REG_PARENT = "学生家长注册";
    private static final String BUTTON_TEXT_REG_EDU_ORG = "教育机构注册";
    private static final String BUTTON_TEXT_REG_TEACHER = "教师注册";

    private static final String BUTTON_TEXT_ONE_KEY_REGISTER = "一键注册";

    private static final int LOCATION_X = 600;
    private static final int LOCATION_Y = 300;
    private static final int FRAME_X = 500;
    private static final int FRAME_Y = 400;

    private RegPanel mRegPanel;
    private EduOrgPanel mEduPanel = new EduOrgPanel();
    private TeaPanel mTeaPanel = new TeaPanel();
    private ParPanel mParPanel = new ParPanel();

    private JButton mRegParentButton, mRegOrgButton, mRegTeaButton;
    private JButton mRegisterButton;

    public RegView() {
       super(FRAME_NAME);

        this.setLayout(new BorderLayout());

        mRegPanel = mEduPanel;

        mRegParentButton = new JButton(BUTTON_TEXT_REG_PARENT);
        mRegOrgButton = new JButton(BUTTON_TEXT_REG_EDU_ORG);
        mRegTeaButton = new JButton(BUTTON_TEXT_REG_TEACHER);

        mRegisterButton = new JButton(BUTTON_TEXT_ONE_KEY_REGISTER);

        mRegisterButton.addActionListener(this);

        mRegParentButton.addActionListener(e -> {
            remove(mRegPanel);
            mRegPanel = mParPanel;
            add(mRegPanel, BorderLayout.CENTER);
            mRegPanel.updateUI();
            repaint();
        });

        mRegOrgButton.addActionListener(e -> {
            remove(mRegPanel);
            mRegPanel = mEduPanel;
            add(mRegPanel, BorderLayout.CENTER);
            mRegPanel.updateUI();
            repaint();
        });

        mRegTeaButton.addActionListener(e -> {
            remove(mRegPanel);
            mRegPanel = mTeaPanel;
            add(mRegPanel, BorderLayout.CENTER);
            mRegPanel.updateUI();
            repaint();
        });

        JPanel buttonPanel = new JPanel();
        buttonPanel.add(mRegParentButton);
        buttonPanel.add(mRegOrgButton);
        buttonPanel.add(mRegTeaButton);
        buttonPanel.add(mRegisterButton);

        //this.add(mParPanel, BorderLayout.CENTER);
        /*this.add(mEduPanel, BorderLayout.CENTER);
        this.add(mTeaPanel, BorderLayout.CENTER);*/
        this.add(buttonPanel, BorderLayout.SOUTH);


        this.setLocation(LOCATION_X, LOCATION_Y);
        this.setSize(FRAME_X, FRAME_Y);

        this.setVisible(true);
        this.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        /*if (mRegPanel == mParPanel) {

        } else if (mRegPanel == mEduPanel) {

        } else {

        }*/

        //if (mRegPanel.checkValid()) {
            mRegPanel.updateDatabase();
        //}
    }
}
