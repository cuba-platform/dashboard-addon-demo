/*
 * Copyright (c) 2016-2018 Haulmont. All rights reserved.
 */

package com.company.testdashboard.web.widget.displayer;

import com.haulmont.addon.dashboard.web.annotation.DashboardWidget;
import com.haulmont.addon.dashboard.web.events.ItemsSelectedEvent;
import com.haulmont.cuba.gui.components.AbstractFrame;
import com.haulmont.cuba.gui.components.TextField;
import com.haulmont.cuba.gui.data.Datasource;
import com.haulmont.cuba.security.entity.User;
import org.springframework.context.event.EventListener;

import javax.inject.Named;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

import static com.company.testdashboard.web.widget.displayer.UserDisplayWidget.CAPTION;


@DashboardWidget(name = CAPTION)
public class UserDisplayWidget extends AbstractFrame {

    public static final String CAPTION = "UserDisp";

    @Named("userDs")
    protected Datasource<User> userDs;

    @Named("clockField")
    protected TextField clockField;

    @Override
    public void init(Map<String, Object> params) {
        super.init(params);
    }

    @EventListener
    public void showUserName(ItemsSelectedEvent event) {
        Collection col = event.getSelected();
        Iterator iterator = col.iterator();
        Object userobj = iterator.next();

        if (userobj instanceof User) {
            User user = (User) userobj;
            userDs.setItem(user);
            userDs.refresh();
            
        }
    }

    public TextField getClockField() {
        return clockField;
    }
}
