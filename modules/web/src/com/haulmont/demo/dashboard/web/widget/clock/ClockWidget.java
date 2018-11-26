/*
 * Copyright (c) 2016-2018 Haulmont. All rights reserved.
 */

package com.haulmont.demo.dashboard.web.widget.clock;

import com.haulmont.addon.dashboard.web.annotation.DashboardWidget;
import com.haulmont.cuba.core.global.TimeSource;
import com.haulmont.cuba.gui.components.AbstractFrame;
import com.haulmont.cuba.gui.components.Label;

import javax.inject.Inject;
import javax.inject.Named;
import java.text.SimpleDateFormat;
import java.util.Map;

import static com.haulmont.demo.dashboard.web.widget.clock.ClockWidget.CAPTION;


@DashboardWidget(name = CAPTION)
public class ClockWidget extends AbstractFrame {

    public static final String CAPTION = "Clock";

    private static final SimpleDateFormat DATE_FORMAT = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    @Named("clockField")
    protected Label clockField;

    @Inject
    private TimeSource timeSource;

    @Override
    public void init(Map<String, Object> params) {
        super.init(params);
        updateTime();
    }

    public void updateTime(){
        clockField.setValue(DATE_FORMAT.format(timeSource.currentTimestamp()));
    }

    public Label getClockField() {
        return clockField;
    }
}
