/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.models;

import java.sql.Date;

/**
 *
 * @author cuongseven
 */
public class Invoice {

    private String invoice_id;
    private float invoice_total;
    private Date invoice_timePayment;

    public Invoice(String invoice_id, float invoice_total, Date invoice_timePayment) {
        this.invoice_id = invoice_id;
        this.invoice_total = invoice_total;
        this.invoice_timePayment = invoice_timePayment;
    }

    public String getInvoice_id() {
        return invoice_id;
    }

    public void setInvoice_id(String invoice_id) {
        this.invoice_id = invoice_id;
    }

    public float getInvoice_total() {
        return invoice_total;
    }

    public void setInvoice_total(float invoice_total) {
        this.invoice_total = invoice_total;
    }

    public Date getInvoice_timePayment() {
        return invoice_timePayment;
    }

    public void setInvoice_timePayment(Date invoice_timePayment) {
        this.invoice_timePayment = invoice_timePayment;
    }

    
}
