package model;

public class Purchase {
    private String mParentId;
    private String mCourseId;
    private boolean mPurchased = false;

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

    public boolean ismPurchased() {
        return mPurchased;
    }

    public void setmPurchased(boolean mPurchased) {
        this.mPurchased = mPurchased;
    }

}
