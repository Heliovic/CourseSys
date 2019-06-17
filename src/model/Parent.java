package model;

import utils.Constants;

import javax.xml.crypto.Data;
import java.text.ParseException;
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

    public int getChildAge() {
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        try {
            Date date = format.parse(mChildBirthday);
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(date);
            int year = calendar.get(Calendar.YEAR);
            Calendar curc = Calendar.getInstance();
            curc.setTime(new Date());
            return curc.get(Calendar.YEAR) - year;
        } catch (ParseException e) {
            e.printStackTrace();
        }

        return 0;
    }

    public void setChildBirthday(String childBirthday) {
        mChildBirthday = childBirthday;
    }

    public void setChildAge(String age) {
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        mChildBirthday = format.format(new Date());

        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Date());

        try {
            calendar.add(Calendar.YEAR, -Integer.parseInt(age));
        } catch (NumberFormatException e) {
            calendar.add(Calendar.YEAR, 0);
        }

        format = new SimpleDateFormat("yyyy-MM-dd");
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
