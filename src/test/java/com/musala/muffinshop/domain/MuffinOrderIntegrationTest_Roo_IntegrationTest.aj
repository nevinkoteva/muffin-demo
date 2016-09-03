// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.musala.muffinshop.domain;

import com.musala.muffinshop.domain.MuffinOrder;
import com.musala.muffinshop.domain.MuffinOrderDataOnDemand;
import com.musala.muffinshop.domain.MuffinOrderIntegrationTest;
import java.util.Iterator;
import java.util.List;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect MuffinOrderIntegrationTest_Roo_IntegrationTest {
    
    declare @type: MuffinOrderIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: MuffinOrderIntegrationTest: @ContextConfiguration(locations = "classpath*:/META-INF/spring/applicationContext*.xml");
    
    declare @type: MuffinOrderIntegrationTest: @Transactional;
    
    @Autowired
    MuffinOrderDataOnDemand MuffinOrderIntegrationTest.dod;
    
    @Test
    public void MuffinOrderIntegrationTest.testCountMuffinOrders() {
        Assert.assertNotNull("Data on demand for 'MuffinOrder' failed to initialize correctly", dod.getRandomMuffinOrder());
        long count = MuffinOrder.countMuffinOrders();
        Assert.assertTrue("Counter for 'MuffinOrder' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void MuffinOrderIntegrationTest.testFindMuffinOrder() {
        MuffinOrder obj = dod.getRandomMuffinOrder();
        Assert.assertNotNull("Data on demand for 'MuffinOrder' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'MuffinOrder' failed to provide an identifier", id);
        obj = MuffinOrder.findMuffinOrder(id);
        Assert.assertNotNull("Find method for 'MuffinOrder' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'MuffinOrder' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void MuffinOrderIntegrationTest.testFindAllMuffinOrders() {
        Assert.assertNotNull("Data on demand for 'MuffinOrder' failed to initialize correctly", dod.getRandomMuffinOrder());
        long count = MuffinOrder.countMuffinOrders();
        Assert.assertTrue("Too expensive to perform a find all test for 'MuffinOrder', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<MuffinOrder> result = MuffinOrder.findAllMuffinOrders();
        Assert.assertNotNull("Find all method for 'MuffinOrder' illegally returned null", result);
        Assert.assertTrue("Find all method for 'MuffinOrder' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void MuffinOrderIntegrationTest.testFindMuffinOrderEntries() {
        Assert.assertNotNull("Data on demand for 'MuffinOrder' failed to initialize correctly", dod.getRandomMuffinOrder());
        long count = MuffinOrder.countMuffinOrders();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<MuffinOrder> result = MuffinOrder.findMuffinOrderEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'MuffinOrder' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'MuffinOrder' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void MuffinOrderIntegrationTest.testFlush() {
        MuffinOrder obj = dod.getRandomMuffinOrder();
        Assert.assertNotNull("Data on demand for 'MuffinOrder' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'MuffinOrder' failed to provide an identifier", id);
        obj = MuffinOrder.findMuffinOrder(id);
        Assert.assertNotNull("Find method for 'MuffinOrder' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyMuffinOrder(obj);
        Integer currentVersion = obj.getVersion();
        obj.flush();
        Assert.assertTrue("Version for 'MuffinOrder' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void MuffinOrderIntegrationTest.testMergeUpdate() {
        MuffinOrder obj = dod.getRandomMuffinOrder();
        Assert.assertNotNull("Data on demand for 'MuffinOrder' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'MuffinOrder' failed to provide an identifier", id);
        obj = MuffinOrder.findMuffinOrder(id);
        boolean modified =  dod.modifyMuffinOrder(obj);
        Integer currentVersion = obj.getVersion();
        MuffinOrder merged = obj.merge();
        obj.flush();
        Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        Assert.assertTrue("Version for 'MuffinOrder' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void MuffinOrderIntegrationTest.testPersist() {
        Assert.assertNotNull("Data on demand for 'MuffinOrder' failed to initialize correctly", dod.getRandomMuffinOrder());
        MuffinOrder obj = dod.getNewTransientMuffinOrder(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'MuffinOrder' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'MuffinOrder' identifier to be null", obj.getId());
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
        Assert.assertNotNull("Expected 'MuffinOrder' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void MuffinOrderIntegrationTest.testRemove() {
        MuffinOrder obj = dod.getRandomMuffinOrder();
        Assert.assertNotNull("Data on demand for 'MuffinOrder' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'MuffinOrder' failed to provide an identifier", id);
        obj = MuffinOrder.findMuffinOrder(id);
        obj.remove();
        obj.flush();
        Assert.assertNull("Failed to remove 'MuffinOrder' with identifier '" + id + "'", MuffinOrder.findMuffinOrder(id));
    }
    
}