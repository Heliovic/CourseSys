package model;

public class Account {

    public static enum UserType {
        PARENT,
        EDUORG,
        TEACHER,
        SYSADMIN
    }

    public static enum Gender {
        MALE,
        FEMALE
    }

    private String mUsername;
    private String mPassword;
    private String mTel;
    private String mEmail;
    private UserType mUserType;

    public String getUsername() {
        return mUsername;
    }

    public void setUsername(String username) {
        mUsername = username;
    }

    public String getPassword() {
        return mPassword;
    }

    public void setPassword(String password) {
        mPassword = password;
    }

    public String getTel() {
        return mTel;
    }

    public void setTel(String tel) {
        mTel = tel;
    }

    public String getEmail() {
        return mEmail;
    }

    public void setEmail(String email) {
        mEmail = email;
    }

    public UserType getUserType() {
        return mUserType;
    }

    public void setUserType(UserType userType) {
        mUserType = userType;
    }
}
