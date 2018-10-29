/*
 * Copyright (c) 2016-2018 Haulmont. All rights reserved.
 */

package com.haulmont.demo.dashboard.web.widget.sample.inprogress;

import com.haulmont.addon.dashboard.web.annotation.DashboardWidget;
import com.haulmont.charts.gui.components.charts.SerialChart;
import com.haulmont.charts.gui.data.ListDataProvider;
import com.haulmont.charts.gui.data.MapDataItem;
import com.haulmont.cuba.gui.components.AbstractFrame;

import javax.inject.Inject;
import java.util.Map;

import static com.haulmont.demo.dashboard.web.widget.sample.inprogress.InProgressWidget.CAPTION;

@DashboardWidget(name = CAPTION)
public class InProgressWidget extends AbstractFrame {

    public static final String CAPTION = "In progress";

    @Inject
    private SerialChart redLineChart;

    @Override
    public void init(Map<String, Object> params) {
        super.init(params);

        ListDataProvider topRedLineDataProvider = new ListDataProvider();
        int[] redLineChartData = {5, 7, 6, 9, 7, 8, 5, 6, 4, 6, 5, 7, 4, 5, 3, 4, 2, 0};
        for (int aRedLineChartData : redLineChartData) {
            topRedLineDataProvider.addItem(graphData(aRedLineChartData));
        }

        redLineChart.setDataProvider(topRedLineDataProvider);
    }

    private MapDataItem graphData(int value) {
        MapDataItem item = new MapDataItem();
        item.add("value", value);
        return item;
    }
}
