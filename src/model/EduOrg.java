package model;

import utils.Constants;

public class EduOrg extends Account {
    private String mOrgCode;
    private String mOrgAddress;
    private String mOrgContact;
    private String mOrgIntroduction;
    private Constants.CourseField mOrgEduField = Constants.CourseField.DEFAULT;
    private int mOrgEduAge;
    private boolean qualified;

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

    public Constants.CourseField getOrgEduField() {
        return mOrgEduField;
    }

    public void setOrgEduField(Constants.CourseField orgEduField) {
        mOrgEduField = orgEduField;
    }

    public int getOrgEduAge() {
        return mOrgEduAge;
    }

    public void setOrgEduAge(int orgEduAge) {
        mOrgEduAge = orgEduAge;
    }

    public boolean isQualified() {
        return qualified;
    }

    public void setQualified(boolean qualified) {
        this.qualified = qualified;
    }
}