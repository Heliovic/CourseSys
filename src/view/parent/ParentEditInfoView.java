package view.parent;

import DAO.MySQLDAO;
import model.account.Account;
import model.account.Parent;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class ParentEditInfoView extends JFrame {

    private static final int LOCATION_X = 600;
    private static final int LOCATION_Y = 300;
    private static final int FRAME_X = 600;
    private static final int FRAME_Y = 400;

    static final String BUTTON_TEXT_LOGIN = "登录";
    static final String LABEL_TEXT_USERNAME = "用户名";
    static final String LABEL_TEXT_PASSWORD = "密    码";
    static final String LABEL_TEXT_EMAIL = "Email";
    static final String LABEL_TEXT_TEL = "电    话";

    static final String BUTTON_TEXT_EDIT = "修改";

    static final String LABEL_TEXT_CHILD_NAME = "孩子姓名";
    static final String LABEL_TEXT_CHILD_BIRTHDAY = "孩子年龄";
    static final String LABEL_TEXT_CHILD_GENDER = "性别";
    static final String LABEL_TEXT_PAR_NAME = "家长姓名";
    static final String LABEL_TEXT_PAR_CONTACT = "联系方式";

    protected JLabel mUsernameLabel = new JLabel(LABEL_TEXT_USERNAME);
    protected JLabel mPasswordLabel = new JLabel(LABEL_TEXT_PASSWORD);
    protected JLabel mTelLabel = new JLabel(LABEL_TEXT_TEL);
    protected JLabel mEmailLabel = new JLabel(LABEL_TEXT_EMAIL);

    protected JTextField mUsernameTextField = new JTextField(10);
    protected JPasswordField mPasswordTextField = new JPasswordField(10);
    protected JTextField mTelTextField = new JTextField(10);
    protected JTextField mEmailTextField = new JTextField(10);
    protected JPanel mUserNamePanel, mPasswordPanel, mTelPanel, mEmailPanel;
    private JTextField
            mChildNameTextField = new JTextField(10),
            mChildBirthdayTextField = new JTextField(10),
            mParentNameTextField = new JTextField(10),
            mParentContactTextField = new JTextField(10);
    private JButton mEditButton = new JButton(BUTTON_TEXT_EDIT);
    private JComboBox mChildGenderCombox = new JComboBox();
    private Parent mParentAccount;
    public ParentEditInfoView(Parent parent) {
        JPanel topPanel = new JPanel();
        topPanel.setLayout(new GridLayout(10, 1));

        this.mParentAccount = parent;

        mUsernameTextField.setText(mParentAccount.getUsername());
        mUsernameTextField.setEditable(false);
        mPasswordTextField.setText(mParentAccount.getPassword());
        mTelTextField.setText(mParentAccount.getTel());
        mEmailTextField.setText(mParentAccount.getEmail());
        mChildGenderCombox.setSelectedItem(mParentAccount.getChildGender().toString());
        mChildNameTextField.setText(mParentAccount.getChildName());
        mChildBirthdayTextField.setText(Integer.toString(mParentAccount.getChildAge()));
        mParentContactTextField.setText(mParentAccount.getParentContact());
        mParentNameTextField.setText(mParentAccount.getParentName());

        this.mParentAccount = parent;
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
        mChildGenderCombox.setSelectedIndex((mParentAccount.getChildGender().toString().equals("FEMALE") ? 1 : 0));

        JPanel parnamePanel = new JPanel();
        parnamePanel.add(new JLabel(LABEL_TEXT_PAR_NAME));
        parnamePanel.add(mParentNameTextField);

        JPanel parcontactPanel = new JPanel();
        parcontactPanel.add(new JLabel(LABEL_TEXT_PAR_CONTACT));
        parcontactPanel.add(mParentContactTextField);


        topPanel.add(mUserNamePanel);
        topPanel.add(mPasswordPanel);
        topPanel.add(mTelPanel);
        topPanel.add(mEmailPanel);
        topPanel.add(childNamePanel);
        topPanel.add(childBirthdayPanel);
        topPanel.add(childGenderPanel);
        topPanel.add(parnamePanel);
        topPanel.add(parcontactPanel);

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
                mParentAccount.setUsername(mUsernameTextField.getText());
                mParentAccount.setPassword(new String(mPasswordTextField.getPassword()));
                mParentAccount.setEmail(mEmailTextField.getText());
                mParentAccount.setTel(mTelTextField.getText());
                mParentAccount.setUserType(Account.UserType.PARENT);
                mParentAccount.setChildName(mChildNameTextField.getText());
                mParentAccount.setChildAge(mChildBirthdayTextField.getText());
                mParentAccount.setChildGender(mChildGenderCombox.getSelectedItem().equals("男") ? Account.Gender.MALE: Account.Gender.FEMALE);
                mParentAccount.setParentName(mParentNameTextField.getText());
                mParentAccount.setParentContact(mParentContactTextField.getText());
                MySQLDAO.getInstance().updateParent(mParentAccount);
            }
        });

    }
}
