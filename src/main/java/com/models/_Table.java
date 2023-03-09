package com.models;

/**
 *
 * @author cuongseven
 */
public class _Table {

    private String table_id;
    private String table_status;
    private int table_number;

    public _Table(String table_id, String table_status, int table_number) {
        this.table_id = table_id;
        this.table_status = table_status;
        this.table_number = table_number;
    }

    public String getTable_id() {
        return table_id;
    }

    public void setTable_id(String table_id) {
        this.table_id = table_id;
    }

    public String getTable_status() {
        return table_status;
    }

    public void setTable_status(String table_status) {
        this.table_status = table_status;
    }

    public int getTable_number() {
        return table_number;
    }

    public void setTable_number(int table_number) {
        this.table_number = table_number;
    }

}