/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.models;

/**
 *
 * @author cuongseven
 */
public class Food {

    private String food_id;
    private String food_name;
    private String food_image;
    private String food_desc;
    private String food_status;
    private float food_price;
    private String category_id;

    public Food(String food_id, String food_name, String food_image, String food_desc, String food_status, float food_price, String category_id) {
        this.food_id = food_id;
        this.food_name = food_name;
        this.food_image = food_image;
        this.food_desc = food_desc;
        this.food_status = food_status;
        this.food_price = food_price;
        this.category_id = category_id;
    }

    public String getFood_id() {
        return food_id;
    }

    public void setFood_id(String food_id) {
        this.food_id = food_id;
    }

    public String getFood_name() {
        return food_name;
    }

    public void setFood_name(String food_name) {
        this.food_name = food_name;
    }

    public String getFood_image() {
        return food_image;
    }

    public void setFood_image(String food_image) {
        this.food_image = food_image;
    }

    public String getFood_desc() {
        return food_desc;
    }

    public void setFood_desc(String food_desc) {
        this.food_desc = food_desc;
    }

    public String getFood_status() {
        return food_status;
    }

    public void setFood_status(String food_status) {
        this.food_status = food_status;
    }

    public float getFood_price() {
        return food_price;
    }

    public void setFood_price(float food_price) {
        this.food_price = food_price;
    }

    public String getCategory_id() {
        return category_id;
    }

    public void setCategory_id(String category_id) {
        this.category_id = category_id;
    }

}
