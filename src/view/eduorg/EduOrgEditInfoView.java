package view.eduorg;

import DAO.MySQLDAO;
import model.account.Account;
import model.account.EduOrg;
import utils.Constants;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class EduOrgEditInfoView extends JFrame {

    private static final int LOCATION_X = 600;
    private static final int LOCATION_Y = 300;
    private static final int FRAME_X = 600;
    private static final int FRAME_Y = 400;

    static final String FRAME_NAME = "修改信息";
    static final String LABEL_TEXT_USERNAME = "用户名";
    static final String LABEL_TEXT_PASSWORD = "密    码";
    static final String LABEL_TEXT_EMAIL = "Email";
    static final String LABEL_TEXT_TEL = "电    话";

    static final String BUTTON_TEXT_EDIT = "修改";

    static final String LABEL_TEXT_ORG_EDU_FIELD = "教育领域";
    static final String LABEL_TEXT_ORG_CODE = "标识码";
    static final String LABEL_TEXT_ORG_ADDRESS = "店面地址";
    static final String LABEL_TEXT_ORG_EDU_AGE = "教育适合年龄";
    static final String LABEL_TEXT_ORG_CONTACT = "联系方式";
    static final String LABEL_TEXT_ORG_INTRODUCTION = "简介";

    private JTextField mUsernameTextField = new JTextField(10);
    private JPasswordField mPasswordTextField = new JPasswordField(10);
    private JTextField mTelTextField = new JTextField(10);
    private JTextField mEmailTextField = new JTextField(10);

    private JTextField
            mEduFieldTextField = new JTextField(10),
            mCodeTextField = new JTextField(10),
            mAddressTextField = new JTextField(10),
            mEduAgeTextField = new JTextField(10),
            mContactTextField = new JTextField(10),
            mIntroTextField = new JTextField(10);

    private JButton mEditButton = new JButton(BUTTON_TEXT_EDIT);

    private EduOrg mEduOrgAccount;

    public EduOrgEditInfoView(EduOrg org) {
        super(FRAME_NAME);

        this.mEduOrgAccount = org;

        JPanel topPanel = new JPanel();
        topPanel.setLayout(new GridLayout(10, 1));

        mUsernameTextField.setText(mEduOrgAccount.getUsername());
        mUsernameTextField.setEditable(false);
        mPasswordTextField.setText(mEduOrgAccount.getPassword());
        mTelTextField.setText(mEduOrgAccount.getTel());
        mEmailTextField.setText(mEduOrgAccount.getEmail());
        mCodeTextField.setText(mEduOrgAccount.getOrgCode());
        mCodeTextField.setEditable(false);
        mEduFieldTextField.setText(mEduOrgAccount.getOrgEduField().toString());
        mEduAgeTextField.setText(Integer.toString(mEduOrgAccount.getOrgEduAge()));
        mContactTextField.setText(mEduOrgAccount.getOrgContact());
        mAddressTextField.setText(mEduOrgAccount.getOrgAddress());
        mIntroTextField.setText(mEduOrgAccount.getOrgIntroduction());

        setLayout(new GridLayout(10, 1));

        JPanel mUserNamePanel = new JPanel();
        mUserNamePanel.add(new JLabel(LABEL_TEXT_USERNAME));
        mUserNamePanel.add(mUsernameTextField);

        JPanel mPasswordPanel = new JPanel();
        mPasswordPanel.add(new JLabel(LABEL_TEXT_PASSWORD));
        mPasswordPanel.add(mPasswordTextField);

        JPanel mTelPanel = new JPanel();
        mTelPanel.add(new JLabel(LABEL_TEXT_TEL));
        mTelPanel.add(mTelTextField);

        JPanel mEmailPanel = new JPanel();
        mEmailPanel.add(new JLabel(LABEL_TEXT_EMAIL));
        mEmailPanel.add(mEmailTextField);

        JPanel eduFieldPanel = new JPanel();
        eduFieldPanel.add(new JLabel(LABEL_TEXT_ORG_EDU_FIELD));
        eduFieldPanel.add(mEduFieldTextField);

        JPanel codePanel = new JPanel();
        codePanel.add(new JLabel(LABEL_TEXT_ORG_CODE));
        codePanel.add(mCodeTextField);

        JPanel addressPanel = new JPanel();
        addressPanel.add(new JLabel(LABEL_TEXT_ORG_ADDRESS));
        addressPanel.add(mAddressTextField);

        JPanel eduAgePanel = new JPanel();
        eduAgePanel.add(new JLabel(LABEL_TEXT_ORG_EDU_AGE));
        eduAgePanel.add(mEduAgeTextField);

        JPanel contactPanel = new JPanel();
        contactPanel.add(new JLabel(LABEL_TEXT_ORG_CONTACT));
        contactPanel.add(mContactTextField);

        JPanel introPanel = new JPanel();
        introPanel.add(new JLabel(LABEL_TEXT_ORG_INTRODUCTION));
        introPanel.add(mIntroTextField);

        topPanel.add(mUserNamePanel);
        topPanel.add(mPasswordPanel);
        topPanel.add(mTelPanel);
        topPanel.add(mEmailPanel);

        topPanel.add(eduFieldPanel);
        topPanel.add(codePanel);
        topPanel.add(addressPanel);
        topPanel.add(eduAgePanel);
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
                mEduOrgAccount.setUsername(mUsernameTextField.getText());
                mEduOrgAccount.setPassword(new String(mPasswordTextField.getPassword()));
                mEduOrgAccount.setTel(mTelTextField.getText());
                mEduOrgAccount.setEmail(mEmailTextField.getText());
                mEduOrgAccount.setUserType(Account.UserType.EDUORG);
                mEduOrgAccount.setOrgCode(mCodeTextField.getText());
                mEduOrgAccount.setOrgAddress(mAddressTextField.getText());
                mEduOrgAccount.setOrgContact(mContactTextField.getText());
                mEduOrgAccount.setOrgIntroduction(mIntroTextField.getText());
                mEduOrgAccount.setOrgEduField(Constants.CourseField.DEFAULT);
                mEduOrgAccount.setOrgEduAge(Integer.parseInt(mEduAgeTextField.getText()));
                MySQLDAO.getInstance().updateEduOrg(mEduOrgAccount);
            }
        });
    }
}
