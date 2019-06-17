package model;

import utils.Constants;

public class Course {
    private String mCourseId;
    private String mCourseName;
    private String mTime;
    private String mPlace;
    private String mContent;
    private String mTeachId;
    private int mAgeRecommend;
    private int mPrice;
    private Constants.CourseField mCourseField;
    private String mHomeWork;

    public String getCourseId() {
        return mCourseId;
    }

    public void setCourseId(String courseId) {
        mCourseId = courseId;
    }

    public String getCourseName() {
        return mCourseName;
    }

    public void setCourseName(String courseName) {
        mCourseName = courseName;
    }

    public String getTime() {
        return mTime;
    }

    public void setTime(String time) {
        mTime = time;
    }

    public String getPlace() {
        return mPlace;
    }

    public void setPlace(String place) {
        mPlace = place;
    }

    public String getContent() {
        return mContent;
    }

    public void setContent(String content) {
        mContent = content;
    }

    public String getTeachId() {
        return mTeachId;
    }

    public void setTeachId(String teachId) {
        mTeachId = teachId;
    }

    public int getAgeRecommend() {
        return mAgeRecommend;
    }

    public void setAgeRecommend(int ageRecommend) {
        mAgeRecommend = ageRecommend;
    }

    public int getPrice() {
        return mPrice;
    }

    public void setPrice(int price) {
        mPrice = price;
    }

    public Constants.CourseField getCourseField() {
        return mCourseField;
    }

    public void setCourseField(Constants.CourseField courseField) {
        mCourseField = courseField;
    }

    public String getHomeWork() {
        return mHomeWork;
    }

    public void setHomeWork(String homeWork) {
        mHomeWork = homeWork;
    }
}
