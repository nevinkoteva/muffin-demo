// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.musala.muffinshop.domain;

import com.musala.muffinshop.domain.Muffin;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect Muffin_Roo_Jpa_Entity {
    
    declare @type: Muffin: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Muffin.id;
    
    @Version
    @Column(name = "version")
    private Integer Muffin.version;
    
    public Long Muffin.getId() {
        return this.id;
    }
    
    public void Muffin.setId(Long id) {
        this.id = id;
    }
    
    public Integer Muffin.getVersion() {
        return this.version;
    }
    
    public void Muffin.setVersion(Integer version) {
        this.version = version;
    }
    
}
