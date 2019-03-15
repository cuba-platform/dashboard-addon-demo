package com.haulmont.demo.dashboard.web.mainscreen;

import com.haulmont.addon.dashboard.gui.components.DashboardFrame;
import com.haulmont.cuba.gui.UiComponents;
import com.haulmont.cuba.gui.screen.Subscribe;
import com.haulmont.cuba.web.app.mainwindow.AppMainWindow;

import javax.inject.Inject;

public class ReferenceDashboardController extends AppMainWindow {

    @Inject
    private DashboardFrame test;

    @Inject
    private UiComponents uiComponents;

    @Subscribe
    private void onInit(InitEvent event) {
    }

    @Subscribe
    private void onAfterInit(AfterInitEvent event) {

    }


}