package model;

public class PreviewApp {
    private String mParentId;
    private String mCourseId;
    private boolean mAgreement = false;

    public String getmParentId() {
        return mParentId;
    }

    public void setmParentId(String mParentId) {
        this.mParentId = mParentId;
    }

    public String getmCourseId() {
        return mCourseId;
    }

    public void setmCourseId(String mCourseId) {
        this.mCourseId = mCourseId;
    }

    public boolean ismAgreement() {
        return mAgreement;
    }

    public void setmAgreement(boolean mAgreement) {
        this.mAgreement = mAgreement;
    }

}
