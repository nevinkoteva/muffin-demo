// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.musala.muffinshop.domain;

import com.musala.muffinshop.domain.MuffinOrder;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect MuffinOrder_Roo_Jpa_Entity {
    
    declare @type: MuffinOrder: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long MuffinOrder.id;
    
    @Version
    @Column(name = "version")
    private Integer MuffinOrder.version;
    
    public Long MuffinOrder.getId() {
        return this.id;
    }
    
    public void MuffinOrder.setId(Long id) {
        this.id = id;
    }
    
    public Integer MuffinOrder.getVersion() {
        return this.version;
    }
    
    public void MuffinOrder.setVersion(Integer version) {
        this.version = version;
    }
    
}