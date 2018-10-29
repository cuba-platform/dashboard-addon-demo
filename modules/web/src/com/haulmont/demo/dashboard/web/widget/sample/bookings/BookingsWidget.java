/*
 * Copyright (c) 2016-2018 Haulmont. All rights reserved.
 */

package com.haulmont.demo.dashboard.web.widget.sample.bookings;

import com.haulmont.addon.dashboard.web.annotation.DashboardWidget;
import com.haulmont.charts.gui.components.charts.SerialChart;
import com.haulmont.charts.gui.data.ListDataProvider;
import com.haulmont.charts.gui.data.MapDataItem;
import com.haulmont.cuba.gui.components.AbstractFrame;

import javax.inject.Inject;
import java.util.Map;

import static com.haulmont.demo.dashboard.web.widget.sample.bookings.BookingsWidget.CAPTION;

@DashboardWidget(name = CAPTION)
public class BookingsWidget extends AbstractFrame {

    public static final String CAPTION = "Bookings";

    @Inject
    private SerialChart greenSerialChart;

    @Override
    public void init(Map<String, Object> params) {
        super.init(params);

        ListDataProvider topGreenSerialDataProvider = new ListDataProvider();

        int[] greenSerialChartData = {
                3, 2, 5, 4, 3, 2, 1, 3, 3, 5,
                3, 3, 2, 3, 3, 5, 2, 2, 3, 1,
                5, 4, 3, 2, 1, 3, 3, 5, 3, 1};
        int[] greenSerialChartDataBack = {
                8, 8, 5, 9, 7, 9, 7, 9, 9, 6,
                7, 9, 8, 9, 3, 5, 6, 8, 7, 9,
                7, 9, 3, 6, 1, 3, 6, 5, 9, 7};
        for (int i = 0; i < greenSerialChartData.length; i++) {
            topGreenSerialDataProvider.addItem(graphDataBack(greenSerialChartData[i], greenSerialChartDataBack[i]));
        }

        greenSerialChart.setDataProvider(topGreenSerialDataProvider);
    }

    private MapDataItem graphDataBack(int value, int backValue) {
        MapDataItem item = new MapDataItem();
        item.add("value", value);
        item.add("backValue", backValue);
        return item;
    }
}
