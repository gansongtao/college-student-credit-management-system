package com.model;

import java.io.Serializable;

public class Curriculum implements Serializable {
    private String gst_course;
    private float column;
    public Curriculum() {}

    public float getColumn() {
        return column;
    }
    public void setColumn(float column) {
        this.column = column;
    }
    public String getGst_course() {
        return gst_course;
    }
    public void setGst_course(String gst_course) {
        this.gst_course = gst_course;
    }
}
