// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.musala.muffinshop.domain;

import com.musala.muffinshop.domain.Muffin;
import com.musala.muffinshop.domain.MuffinOrder;
import java.util.Date;
import java.util.Set;

privileged aspect MuffinOrder_Roo_JavaBean {
    
    public String MuffinOrder.getName() {
        return this.name;
    }
    
    public void MuffinOrder.setName(String name) {
        this.name = name;
    }
    
    public String MuffinOrder.getAddress() {
        return this.address;
    }
    
    public void MuffinOrder.setAddress(String address) {
        this.address = address;
    }
    
    public Float MuffinOrder.getTotal() {
        return this.total;
    }
    
    public void MuffinOrder.setTotal(Float total) {
        this.total = total;
    }
    
    public Date MuffinOrder.getDeliveryDate() {
        return this.deliveryDate;
    }
    
    public void MuffinOrder.setDeliveryDate(Date deliveryDate) {
        this.deliveryDate = deliveryDate;
    }
    
    public Set<Muffin> MuffinOrder.getMuffins() {
        return this.muffins;
    }
    
    public void MuffinOrder.setMuffins(Set<Muffin> muffins) {
        this.muffins = muffins;
    }
    
}