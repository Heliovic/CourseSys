package model;

import utils.Constants;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class Parent extends Account {
    private String mChildName;
    private String mChildBirthday;
    private Gender mChildGender;
    private String mParentName;
    private String mParentContact;
    private Constants.CourseField mCourseField = Constants.CourseField.DEFAULT;
    private int mCourseCost = 1000;
    private String mCoursePlace;

    public String getChildName() {
        return mChildName;
    }

    public void setChildName(String childName) {
        mChildName = childName;
    }

    public String getChildBirthday() {
        return mChildBirthday;
    }

    public void setChildBirthday(String childBirthday) {

        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        mChildBirthday = format.format(new Date());

        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Date());

        try {
            calendar.add(Calendar.YEAR, -Integer.parseInt(childBirthday));
        } catch (NumberFormatException e) {
            calendar.add(Calendar.YEAR, 0);
        }


        mChildBirthday = format.format(calendar.getTime());
    }

    public Gender getChildGender() {
        return mChildGender;
    }

    public void setChildGender(Gender gender) {
        mChildGender = gender;
    }

    public String getParentName() {
        return mParentName;
    }

    public void setParentName(String parentName) {
        mParentName = parentName;
    }

    public String getParentContact() {
        return mParentContact;
    }

    public void setParentContact(String parentContact) {
        mParentContact = parentContact;
    }

    public Constants.CourseField getCourseField() {
        return mCourseField;
    }

    public void setCourseField(Constants.CourseField courseField) {
        mCourseField = courseField;
    }

    public int getCourseCost() {
        return mCourseCost;
    }

    public void setCourseCost(int courseCost) {
        mCourseCost = courseCost;
    }

    public String getCoursePlace() {
        return mCoursePlace;
    }

    public void setCoursePlace(String coursePlace) {
        mCoursePlace = coursePlace;
    }
}
