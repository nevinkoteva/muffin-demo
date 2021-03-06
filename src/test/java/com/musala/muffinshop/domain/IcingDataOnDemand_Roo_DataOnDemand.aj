// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.musala.muffinshop.domain;

import com.musala.muffinshop.domain.Icing;
import com.musala.muffinshop.domain.IcingDataOnDemand;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.stereotype.Component;

privileged aspect IcingDataOnDemand_Roo_DataOnDemand {
    
    declare @type: IcingDataOnDemand: @Component;
    
    private Random IcingDataOnDemand.rnd = new SecureRandom();
    
    private List<Icing> IcingDataOnDemand.data;
    
    public Icing IcingDataOnDemand.getNewTransientIcing(int index) {
        Icing obj = new Icing();
        setName(obj, index);
        return obj;
    }
    
    public void IcingDataOnDemand.setName(Icing obj, int index) {
        String name = "name_" + index;
        obj.setName(name);
    }
    
    public Icing IcingDataOnDemand.getSpecificIcing(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        Icing obj = data.get(index);
        Long id = obj.getId();
        return Icing.findIcing(id);
    }
    
    public Icing IcingDataOnDemand.getRandomIcing() {
        init();
        Icing obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return Icing.findIcing(id);
    }
    
    public boolean IcingDataOnDemand.modifyIcing(Icing obj) {
        return false;
    }
    
    public void IcingDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = Icing.findIcingEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'Icing' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<Icing>();
        for (int i = 0; i < 10; i++) {
            Icing obj = getNewTransientIcing(i);
            try {
                obj.persist();
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            obj.flush();
            data.add(obj);
        }
    }
    
}
