package com.model;

import java.io.Serializable;

public class Ranking implements Serializable {
    private int id, row;
    private float column;
    public Ranking() {}

    public float getColumn() {
        return column;
    }
    public void setColumn(float column) {
        this.column = column;
    }
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public int getRow() {
        return row;
    }
    public void setRow(int row) {
        this.row = row;
    }
}
