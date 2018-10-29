/*
 * Copyright (c) 2016-2018 Haulmont. All rights reserved.
 */

package com.haulmont.demo.dashboard.web.widget.sample.cardelivery;

import com.haulmont.addon.dashboard.web.annotation.DashboardWidget;
import com.haulmont.charts.gui.components.charts.PieChart;
import com.haulmont.charts.gui.data.ListDataProvider;
import com.haulmont.charts.gui.data.MapDataItem;
import com.haulmont.cuba.gui.components.AbstractFrame;

import javax.inject.Inject;
import java.util.Map;

import static com.haulmont.demo.dashboard.web.widget.sample.cardelivery.CarDeliveryWidget.CAPTION;

@DashboardWidget(name = CAPTION)
public class CarDeliveryWidget extends AbstractFrame {

    public static final String CAPTION = "Car delivery";

    @Inject
    private PieChart pieChart;

    @Override
    public void init(Map<String, Object> params) {
        super.init(params);
        setPieChartData();
    }

    private void setPieChartData() {
        ListDataProvider dataProvider = new ListDataProvider();

        dataProvider.addItem(pieCount(27, getMessage("late"), "#FDD400"));
        dataProvider.addItem(pieCount(61, getMessage("inTime"), "#84B761"));
        dataProvider.addItem(pieCount(12, getMessage("early"), "#67B7DC"));

        pieChart.setDataProvider(dataProvider);
    }

    private MapDataItem pieCount(int carClassCount, String carClassName, String carColor) {
        MapDataItem item = new MapDataItem();
        item.add("class", carClassCount);
        item.add("type", carClassName);
        item.add("color", carColor);
        return item;
    }
}
