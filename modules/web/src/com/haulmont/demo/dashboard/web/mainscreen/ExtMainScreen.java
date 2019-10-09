package com.haulmont.demo.dashboard.web.mainscreen;

import com.haulmont.cuba.gui.Notifications;
import com.haulmont.cuba.gui.Screens;
import com.haulmont.cuba.gui.components.mainwindow.SideMenu;
import com.haulmont.cuba.gui.screen.OpenMode;
import com.haulmont.cuba.gui.screen.Subscribe;
import com.haulmont.cuba.gui.screen.UiController;
import com.haulmont.cuba.gui.screen.UiDescriptor;
import com.haulmont.cuba.web.app.main.MainScreen;

import javax.inject.Inject;

@UiController("extMainScreen")
@UiDescriptor("ext-main-screen.xml")
public class ExtMainScreen extends MainScreen {

    @Inject
    protected Notifications notifications;

    @Inject
    protected SideMenu sideMenu;
    @Inject
    protected Screens screens;

    @Subscribe
    public void onInit(InitEvent event) {
        initSideMenu();
    }

    protected void initSideMenu() {
        SideMenu.MenuItem dashboardDemo = sideMenu.createMenuItem("dashboardDemo",
                "Dashboard",
                "icons/dashboard.png",
                menuItem -> screens.create("extMainScreen", OpenMode.ROOT)
                        .show());
        dashboardDemo.setStyleName("menubutton-selected");
        sideMenu.addMenuItem(dashboardDemo);

        sideMenu.addMenuItem(
                sideMenu.createMenuItem("carsDemo",
                        "Cars",
                        "icons/car.png",
                        menuItem -> showNotification())
        );
        sideMenu.addMenuItem(
                sideMenu.createMenuItem("ordersDemo",
                        "Orders",
                        "icons/list.png",
                        menuItem -> showNotification())
        );
        sideMenu.addMenuItem(
                sideMenu.createMenuItem("reportsDemo",
                        "Reports",
                        "icons/report.png",
                        menuItem -> showNotification())
        );
        sideMenu.addMenuItem(
                sideMenu.createMenuItem("settingsDemo",
                        "Settings",
                        "icons/settings.png",
                        menuItem -> showNotification())
        );
    }

    protected void showNotification() {
        notifications.create()
                .withCaption("Not implemented in this demo")
                .show();
    }
}
