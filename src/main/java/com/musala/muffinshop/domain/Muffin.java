package com.musala.muffinshop.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Muffin {

    /**
     */
    @NotNull
    @Size(min = 2)
    private String name;

    /**
     */
    private Float price;

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Icing> icings = new HashSet<Icing>();

    /**
     */
    @ManyToOne
    private Base base;
}
