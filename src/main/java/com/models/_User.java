/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.models;

/**
 *
 * @author cuongseven
 */
public class _User {
    private String user_id;
    private String user_fullName;
    private String email;
    private String user_role;
    private String user_phone;
    private String username;
    private String password;

    public _User(String user_fullName, String email, String user_phone) {
        this.user_fullName = user_fullName;
        this.email = email;
        this.user_phone = user_phone;
    }

    
    public _User(String user_id, String user_fullName, String email, String user_role, String user_phone, String username, String password) {
        this.user_id = user_id;
        this.user_fullName = user_fullName;
        this.email = email;
        this.user_role = user_role;
        this.user_phone = user_phone;
        this.username = username;
        this.password = password;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public String getUser_fullName() {
        return user_fullName;
    }

    public void setUser_fullName(String user_fullName) {
        this.user_fullName = user_fullName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUser_role() {
        return user_role;
    }

    public void setUser_role(String user_role) {
        this.user_role = user_role;
    }

    public String getUser_phone() {
        return user_phone;
    }

    public void setUser_phone(String user_phone) {
        this.user_phone = user_phone;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    
}
