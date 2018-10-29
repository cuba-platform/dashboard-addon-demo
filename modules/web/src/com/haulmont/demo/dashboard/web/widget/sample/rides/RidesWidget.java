/*
 * Copyright (c) 2016-2018 Haulmont. All rights reserved.
 */

package com.haulmont.demo.dashboard.web.widget.sample.rides;

import com.haulmont.addon.dashboard.web.annotation.DashboardWidget;
import com.haulmont.cuba.gui.components.AbstractFrame;
import com.haulmont.cuba.gui.components.Label;
import com.haulmont.cuba.gui.components.Table;
import com.haulmont.cuba.gui.data.CollectionDatasource;
import com.haulmont.cuba.gui.xml.layout.ComponentsFactory;
import com.haulmont.demo.dashboard.route.Route;

import javax.inject.Inject;
import java.util.Map;
import java.util.UUID;

import static com.haulmont.demo.dashboard.web.widget.sample.rides.RidesWidget.CAPTION;

@DashboardWidget(name = CAPTION)
public class RidesWidget extends AbstractFrame {

    public static final String CAPTION = "Rides";

    @Inject
    private Table<Route> routesTable;

    @Inject
    private CollectionDatasource<Route, UUID> routeDs;

    @Inject
    private ComponentsFactory componentsFactory;

    @Override
    public void init(Map<String, Object> params) {
        super.init(params);
        initTable();
    }

    private void initTable() {
        routeDs.addItem(new Route("00:11", "149 S 4th St", "202 S 14th St"));
        routeDs.addItem(new Route("00:32", "1192 Fremont St", "1252 Randol Ave"));
        routeDs.addItem(new Route("00:46", "760 Chapman St", "905 Morse St"));
        routeDs.addItem(new Route("01:03", "986 Silicon Dr", "1042 Newhall St"));
        routeDs.addItem(new Route("01:52", "1080 Portola Ave", "790 Locust St"));
        routeDs.addItem(new Route("02:27", "1098 Lexington St", "1313 Franklin St"));

        routesTable.addGeneratedColumn("direction", routes -> {
            Label dataTypeLabel = componentsFactory.createComponent(Label.class);
            dataTypeLabel.setValue("\u2192");
            dataTypeLabel.setStyleName("direction");
            return dataTypeLabel;
        });

        routesTable.setSettingsEnabled(false);
    }
}
