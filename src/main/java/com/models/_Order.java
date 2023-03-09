package com.models;

/**
 *
 * @author cuongseven
 */
public class _Order {

    private String order_id;
    private String order_status;
    private int order_tableNumber;
    private int order_tablePeople;
    private String order_tableDate;
    private String order_tableTimeCheckin;
    private String order_tableNote;
    private String invoice_id;
    private String user_id;
    private String table_id;

    public _Order(String order_id) {
        this.order_id = order_id;
    }

    public _Order(String order_id, String order_status, int order_tableNumber, String user_id, String table_id) {
        this.order_id = order_id;
        this.order_status = order_status;
        this.order_tableNumber = order_tableNumber;
        this.user_id = user_id;
        this.table_id = table_id;
    }

    public _Order(String order_id, String order_status, int order_tableNumber, int order_tablePeople, String order_tableDate, String order_tableTimeCheckin, String order_tableNote, String invoice_id, String user_id, String table_id) {
        this.order_id = order_id;
        this.order_status = order_status;
        this.order_tableNumber = order_tableNumber;
        this.order_tablePeople = order_tablePeople;
        this.order_tableDate = order_tableDate;
        this.order_tableTimeCheckin = order_tableTimeCheckin;
        this.order_tableNote = order_tableNote;
        this.invoice_id = invoice_id;
        this.user_id = user_id;
        this.table_id = table_id;
    }

    public String getOrder_id() {
        return order_id;
    }

    public void setOrder_id(String order_id) {
        this.order_id = order_id;
    }

    public String getOrder_status() {
        return order_status;
    }

    public void setOrder_status(String order_status) {
        this.order_status = order_status;
    }

    public int getOrder_tableNumber() {
        return order_tableNumber;
    }

    public void setOrder_tableNumber(int order_tableNumber) {
        this.order_tableNumber = order_tableNumber;
    }

    public int getOrder_tablePeople() {
        return order_tablePeople;
    }

    public void setOrder_tablePeople(int order_tablePeople) {
        this.order_tablePeople = order_tablePeople;
    }

    public String getOrder_tableDate() {
        return order_tableDate;
    }

    public void setOrder_tableDate(String order_tableDate) {
        this.order_tableDate = order_tableDate;
    }

    public String getOrder_tableTimeCheckin() {
        return order_tableTimeCheckin;
    }

    public void setOrder_tableTimeCheckin(String order_tableTimeCheckin) {
        this.order_tableTimeCheckin = order_tableTimeCheckin;
    }

    public String getOrder_tableNote() {
        return order_tableNote;
    }

    public void setOrder_tableNote(String order_tableNote) {
        this.order_tableNote = order_tableNote;
    }

    public String getInvoice_id() {
        return invoice_id;
    }

    public void setInvoice_id(String invoice_id) {
        this.invoice_id = invoice_id;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public String getTable_id() {
        return table_id;
    }

    public void setTable_id(String table_id) {
        this.table_id = table_id;
    }

}
