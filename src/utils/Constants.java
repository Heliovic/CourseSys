package utils;

import model.Course;

import javax.swing.*;

public class Constants {
    public static JComboBox getCourseFieldCombo() {
        JComboBox comboBox = new JComboBox();
        for (Course.CourseField field : Course.CourseField.values()) {
            comboBox.addItem(field.toString());
        }
        return comboBox;
    }

    public static JComboBox getGenderCombo() {
        JComboBox comboBox = new JComboBox();
        comboBox.addItem("MALE");
        comboBox.addItem("FEMALE");
        return comboBox;
    }
}
