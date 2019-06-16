package view;

import javax.swing.*;

public class LoginView extends JFrame {

    private static final String FRAME_NAME = "登录";
    private static final int LOCATION_X = 600;
    private static final int LOCATION_Y = 300;
    private static final int FRAME_X = 800;
    private static final int FRAME_Y = 600;

    public LoginView() {




        this.setLocation(LOCATION_X, LOCATION_Y);
        this.setSize(FRAME_X, FRAME_Y);
        this.setVisible(true);
        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    }
}
