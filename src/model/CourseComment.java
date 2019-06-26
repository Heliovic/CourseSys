package model;

import model.account.Account;

public class CourseComment {

    String mCourseId;
    String mPublisher;
    String mContent;
    int mScore;
    String mPicId;

    public CourseComment() {
        mContent = "";
    }

    public String getCourseId() {
        return mCourseId;
    }

    public void setCourseId(String courseId) {
        mCourseId = courseId;
    }

    public String getPublisher() {
        return mPublisher;
    }

    public void setPublisher(String publisher) {
        mPublisher = publisher;
    }

    public String getContent() {
        return mContent;
    }

    public void setContent(String content) {
        mContent = content;
    }

    public int getScore() {
        return mScore;
    }

    public void setScore(int score) {
        mScore = score;
    }

    public String getPicId() {
        return mPicId;
    }

    public void setPicId(String picId) {
        mPicId = picId;
    }
}
