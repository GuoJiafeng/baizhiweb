package com.baizhi.entity;

import java.io.Serializable;

public class BaiZhiResource implements Serializable {
    private String phone;
    private String email;
    private String address;


    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
