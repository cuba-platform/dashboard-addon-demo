/*
 * Copyright (c) 2016-2018 Haulmont. All rights reserved.
 */

package com.haulmont.demo.dashboard.web.widget.sample.carmap;

import com.haulmont.addon.dashboard.web.annotation.DashboardWidget;
import com.haulmont.charts.gui.components.map.MapViewer;
import com.haulmont.charts.gui.map.model.GeoPoint;
import com.haulmont.charts.gui.map.model.InfoWindow;
import com.haulmont.charts.gui.map.model.Marker;
import com.haulmont.charts.gui.map.model.base.MarkerImage;
import com.haulmont.cuba.gui.components.AbstractFrame;

import javax.inject.Inject;
import java.util.Map;

import static com.haulmont.demo.dashboard.web.widget.sample.carmap.CarMapWidget.CAPTION;

@DashboardWidget(name = CAPTION)
public class CarMapWidget extends AbstractFrame {

    public static final String CAPTION = "Car map";

    @Inject
    private MapViewer map;

    private InfoWindow openedCarTooltip = null;

    @Override
    public void init(Map<String, Object> params) {
        super.init(params);
        initMap();
    }

    private void initMap() {
        GeoPoint center = map.createGeoPoint(37.3359782, -121.924535);
        map.setCenter(center);
        map.setScrollWheelEnabled(false);
        map.setDraggable(false);
        map.setZoom(14);

        Marker marker = map.createMarker("3C4PDCAB9FT553312\nPadillac Fanta Se", map.createGeoPoint(37.340380, -121.961185), true);
        MarkerImage icon = map.createMarkerImage("VAADIN/themes/halo/car/taxi_60.svg");
        marker.setIcon(icon);
        marker.setClickable(true);
        marker.setDraggable(false);
        map.addMarker(marker);

        marker = map.createMarker("1GCGK29R2XF085887\nDMW GP", map.createGeoPoint(37.334988, -121.915265), true);
        icon = map.createMarkerImage("VAADIN/themes/halo/car/taxi_90.svg");
        marker.setIcon(icon);
        marker.setClickable(true);
        marker.setDraggable(false);
        map.addMarker(marker);

        marker = map.createMarker("1FMCU4K32BKC11669\nFevrolet Fishdorado", map.createGeoPoint(37.333078, -121.961786), true);
        icon = map.createMarkerImage("VAADIN/themes/halo/car/taxi_210.svg");
        marker.setIcon(icon);
        marker.setClickable(true);
        marker.setDraggable(false);
        map.addMarker(marker);

        marker = map.createMarker("1GCHK34F6VE179779\nPulmmer P3", map.createGeoPoint(37.338332, -121.879474), true);
        icon = map.createMarkerImage("VAADIN/themes/halo/car/taxi_300.svg");
        marker.setIcon(icon);
        marker.setClickable(true);
        marker.setDraggable(false);
        map.addMarker(marker);

        marker = map.createMarker("1GCEK14T22Z280951\nPulmmer P3", map.createGeoPoint(37.330552, -121.929256), true);
        marker.setIcon(icon);
        marker.setClickable(true);
        marker.setDraggable(false);
        map.addMarker(marker);

        map.addMarkerClickListener(e -> {
            Marker clickedMarker = e.getMarker();
            String caption = clickedMarker.getCaption();
            caption = caption.replaceAll("\n", "<br>");
            InfoWindow w = map.createInfoWindow(caption, clickedMarker);
            if (this.openedCarTooltip != null) {
                map.closeInfoWindow(this.openedCarTooltip);
            }
            map.openInfoWindow(w);
            this.openedCarTooltip = w;
        });

        map.addInfoWindowClosedListener(e ->
                this.openedCarTooltip = null);
    }
}
