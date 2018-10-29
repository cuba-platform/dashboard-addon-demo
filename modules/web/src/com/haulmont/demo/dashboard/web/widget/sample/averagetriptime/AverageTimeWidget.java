/*
 * Copyright (c) 2016-2018 Haulmont. All rights reserved.
 */

package com.haulmont.demo.dashboard.web.widget.sample.averagetriptime;

import com.haulmont.addon.dashboard.web.annotation.DashboardWidget;
import com.haulmont.charts.gui.components.charts.SerialChart;
import com.haulmont.charts.gui.data.ListDataProvider;
import com.haulmont.charts.gui.data.MapDataItem;
import com.haulmont.cuba.gui.components.AbstractFrame;

import javax.inject.Inject;
import java.util.Map;

import static com.haulmont.demo.dashboard.web.widget.sample.averagetriptime.AverageTimeWidget.CAPTION;

@DashboardWidget(name = CAPTION)
public class AverageTimeWidget extends AbstractFrame {

    public static final String CAPTION = "Average trip time";

    @Inject
    private SerialChart greenLineChart;

    @Override
    public void init(Map<String, Object> params) {
        super.init(params);

        ListDataProvider topGreenLineDataProvider = new ListDataProvider();

        int[] greenLineChartData = {10, 8, 15, 28, 15, 18, 15, 23, 18, 12, 16, 10, 18};
        for (int aGreenLineChartData : greenLineChartData) {
            topGreenLineDataProvider.addItem(graphData(aGreenLineChartData));
        }

        greenLineChart.setDataProvider(topGreenLineDataProvider);
    }

    private MapDataItem graphData(int value) {
        MapDataItem item = new MapDataItem();
        item.add("value", value);
        return item;
    }
}
