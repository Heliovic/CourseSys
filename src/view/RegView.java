package view;

import javax.swing.*;
import java.awt.*;

abstract class RegPanel extends JPanel{
    static final String BUTTON_TEXT_LOGIN = "登录";
    static final String LABEL_TEXT_USERNAME = "用户名";
    static final String LABEL_TEXT_PASSWORD = "密    码";
    static final String LABEL_TEXT_EMAIL = "Email";
    static final String LABEL_TEXT_TEL = "电    话";

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

class EduPanel extends RegPanel {
    public EduPanel() {
        setLayout(new GridLayout(5, 1));

        this.add(mUserNamePanel);
        this.add(mPasswordPanel);
        this.add(mTelPanel);
        this.add(mEmailPanel);
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
        setLayout(new GridLayout(5, 1));

        this.add(mUserNamePanel);
        this.add(mPasswordPanel);
        this.add(mTelPanel);
        this.add(mEmailPanel);
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
    public ParPanel() {
        setLayout(new GridLayout(5, 1));

        this.add(mUserNamePanel);
        this.add(mPasswordPanel);
        this.add(mTelPanel);
        this.add(mEmailPanel);
    }

    @Override
    public boolean checkValid() {
        return false;
    }

    @Override
    public void updateDatabase() {

    }
}

public class RegView extends JFrame {
    private static final String FRAME_NAME = "注册";
    private static final int LOCATION_X = 600;
    private static final int LOCATION_Y = 300;
    private static final int FRAME_X = 400;
    private static final int FRAME_Y = 200;

    private RegPanel mRegPanel;

    public RegView() {
       super(FRAME_NAME);

        this.setLayout(new BorderLayout());

        this.add(new EduPanel());

        this.setLocation(LOCATION_X, LOCATION_Y);
        this.setSize(FRAME_X, FRAME_Y);

        this.setVisible(true);
        this.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
    }
}
