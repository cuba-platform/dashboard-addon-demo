/*
 * Copyright (c) 2016-2018 Haulmont. All rights reserved.
 */

package com.haulmont.demo.dashboard.web.widget.sample.online;

import com.haulmont.addon.dashboard.web.annotation.DashboardWidget;
import com.haulmont.charts.gui.components.charts.SerialChart;
import com.haulmont.charts.gui.data.ListDataProvider;
import com.haulmont.charts.gui.data.MapDataItem;
import com.haulmont.cuba.gui.components.AbstractFrame;

import javax.inject.Inject;
import java.util.Map;

import static com.haulmont.demo.dashboard.web.widget.sample.online.OnlineWidget.CAPTION;


@DashboardWidget(name = CAPTION)
public class OnlineWidget extends AbstractFrame {

    public static final String CAPTION = "Online";

    @Inject
    private SerialChart blueSerialChart;

    @Override
    public void init(Map<String, Object> params) {
        super.init(params);

        ListDataProvider topBlueSerialDataProvider = new ListDataProvider();

        int[] blueSerialChartData = {
                5, 4, 9, 8, 1, 9, 3, 5, 8, 8,
                5, 4, 9, 8, 1, 9, 3, 5, 3, 6,
                3, 9, 8, 9, 3, 5, 8, 2, 3, 6};
        int[] blueSerialChartDataBack = {
                8, 8, 5, 9, 7, 9, 7, 9, 9, 6,
                7, 9, 8, 9, 3, 5, 6, 8, 7, 9,
                7, 9, 3, 6, 1, 3, 6, 5, 9, 7};
        for (int i = 0; i < blueSerialChartData.length; i++) {
            topBlueSerialDataProvider.addItem(graphDataBack(blueSerialChartData[i], blueSerialChartDataBack[i]));
        }

        blueSerialChart.setDataProvider(topBlueSerialDataProvider);
    }

    private MapDataItem graphDataBack(int value, int backValue) {
        MapDataItem item = new MapDataItem();
        item.add("value", value);
        item.add("backValue", backValue);
        return item;
    }
}
