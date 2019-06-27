package model.account;

import model.Course;

public class EduOrg extends Account {
    private String mOrgCode;
    private String mOrgAddress;
    private String mOrgContact;
    private String mOrgIntroduction;
    private Course.CourseField mOrgEduField = Course.CourseField.DEFAULT;
    private int mOrgEduAge;
    private Account.Qualified qualified = Qualified.CHECK;

    public String getOrgCode() {
        return mOrgCode;
    }

    public void setOrgCode(String orgCode) {
        mOrgCode = orgCode;
    }

    public String getOrgAddress() {
        return mOrgAddress;
    }

    public void setOrgAddress(String orgAddress) {
        mOrgAddress = orgAddress;
    }

    public String getOrgContact() {
        return mOrgContact;
    }

    public void setOrgContact(String orgContact) {
        mOrgContact = orgContact;
    }

    public String getOrgIntroduction() {
        return mOrgIntroduction;
    }

    public void setOrgIntroduction(String orgIntroduction) {
        mOrgIntroduction = orgIntroduction;
    }

    public Course.CourseField getOrgEduField() {
        return mOrgEduField;
    }

    public void setOrgEduField(Course.CourseField orgEduField) {
        mOrgEduField = orgEduField;
    }

    public int getOrgEduAge() {
        return mOrgEduAge;
    }

    public void setOrgEduAge(int orgEduAge) {
        mOrgEduAge = orgEduAge;
    }

    public Account.Qualified isQualified() { return qualified; }

    public void setQualified(Account.Qualified qualified) {
        this.qualified = qualified;
    }

    public EduOrg() {
        super.setUserType(UserType.EDUORG);
    }
}
