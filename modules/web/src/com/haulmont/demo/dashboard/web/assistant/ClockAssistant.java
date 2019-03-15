package com.haulmont.demo.dashboard.web.assistant;

import com.haulmont.addon.dashboard.web.dashboard.assistant.DashboardViewAssistant;
import com.haulmont.addon.dashboard.web.dashboard.frames.uicomponent.WebDashboardFrame;
import com.haulmont.addon.dashboard.web.events.DashboardUpdatedEvent;
import com.haulmont.cuba.gui.components.AbstractFrame;
import com.haulmont.cuba.gui.screen.ScreenFragment;
import com.haulmont.demo.dashboard.web.widget.clock.ClockWidget;
import org.springframework.context.annotation.Scope;
import org.springframework.context.event.EventListener;
import org.springframework.stereotype.Component;

@Component
@Scope("prototype")
public class ClockAssistant implements DashboardViewAssistant {
    private WebDashboardFrame webDashboardFrame;

    @Override
    public void init(WebDashboardFrame webDashboardFrame) {
        this.webDashboardFrame = webDashboardFrame;
    }

    @EventListener
    public void dashboardEventListener(DashboardUpdatedEvent event) {
        ScreenFragment wb = webDashboardFrame.getWidget("clock");
        if (wb instanceof ClockWidget) {
            ClockWidget clockWidget = (ClockWidget) wb;
            clockWidget.updateTime();
        }
    }
}
