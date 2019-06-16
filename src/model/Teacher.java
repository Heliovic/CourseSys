package model;

import utils.Constants;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class Teacher extends Account{


    private String mTeacherName;
    private String mTeacherBirthday;
    private Gender mTeacherGender;
    private String mTeacherIdNumber;
    private String mTeacherContact;
    private Constants.CourseField mCourseField = Constants.CourseField.DEFAULT;
    private int mEduYear;
    private int mEduAge;
    private boolean mQualified;
    private String mTeacherIntroduction;

    public String getmTeacherName() {
        return mTeacherName;
    }

    public void setmTeacherName(String mTeacherName) {
        this.mTeacherName = mTeacherName;
    }

    public String getmTeacherBirthday() {
        return mTeacherBirthday;
    }

    public void setmTeacherBirthday(String TeacherBirthday) {
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        mTeacherBirthday = format.format(new Date());

        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Date());

        try {
            calendar.add(Calendar.YEAR, -Integer.parseInt(TeacherBirthday));
        } catch (NumberFormatException e) {
            calendar.add(Calendar.YEAR, 0);
        }

        mTeacherBirthday = format.format(calendar.getTime());
    }

    public Gender getmTeacherGender() {
        return mTeacherGender;
    }

    public void setmTeacherGender(Gender mTeacherGender) {
        this.mTeacherGender = mTeacherGender;
    }

    public String getmTeacherIdNumber() {
        return mTeacherIdNumber;
    }

    public void setmTeacherIdNumber(String mTeacherIdNumber) {
        this.mTeacherIdNumber = mTeacherIdNumber;
    }

    public String getmTeacherContact() {
        return mTeacherContact;
    }

    public void setmTeacherContact(String mTeacherContact) {
        this.mTeacherContact = mTeacherContact;
    }

    public Constants.CourseField getmCourseField() {
        return mCourseField;
    }

    public void setmCourseField(Constants.CourseField mCourseField) {
        this.mCourseField = mCourseField;
    }

    public int getmEduYear() {
        return mEduYear;
    }

    public void setmEduYear(int mEduYear) {
        this.mEduYear = mEduYear;
    }

    public int getmEduAge() {
        return mEduAge;
    }

    public void setmEduAge(int mEduAge) {
        this.mEduAge = mEduAge;
    }

    public boolean getmQualified() {
        return mQualified;
    }

    public void setmQualified(boolean mQualified) {
        this.mQualified = mQualified;
    }

    public String getmTeacherIntroduction() {
        return mTeacherIntroduction;
    }

    public void setmTeacherIntroduction(String mTeacherIntroduction) {
        this.mTeacherIntroduction = mTeacherIntroduction;
    }
}
