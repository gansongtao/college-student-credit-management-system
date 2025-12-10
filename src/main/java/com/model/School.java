package com.model;

import java.io.Serializable;

public class School implements Serializable {
    private int stuid;
    private float column;
    public School(int stuid, int column) {
        this.stuid = stuid;
        this.column = column;
    }
    public School() {}

    public float getColumn() {
        return column;
    }
    public void setColumn(float column) {
        this.column = column;
    }

    public int getStuid() {
        return stuid;
    }
    public void setStuid(int stuid) {
        this.stuid = stuid;
    }
}
