/*
 * Copyright (c) 2016-2018 Haulmont. All rights reserved.
 */

package com.haulmont.demo.dashboard.web.widget.clock;

import com.haulmont.addon.dashboard.web.annotation.DashboardWidget;
import com.haulmont.cuba.gui.components.AbstractFrame;
import com.haulmont.cuba.gui.components.TextField;
import javax.inject.Named;
import java.util.Map;

import static com.haulmont.demo.dashboard.web.widget.clock.ClockWidget.CAPTION;


@DashboardWidget(name = CAPTION)
public class ClockWidget extends AbstractFrame {

    public static final String CAPTION = "Clock";

    @Named("clockField")
    protected TextField clockField;

    @Override
    public void init(Map<String, Object> params) {
        super.init(params);
    }

    public TextField getClockField() {
        return clockField;
    }
}
