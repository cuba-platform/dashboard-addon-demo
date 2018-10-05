package com.haulmont.demo.dashboard.web.assistant;

import com.haulmont.addon.dashboard.web.dashboard.assistant.DashboardViewAssistant;
import com.haulmont.addon.dashboard.web.dashboard.frames.uicomponent.WebDashboardFrame;
import com.haulmont.addon.dashboard.web.events.DashboardUpdatedEvent;
import com.haulmont.cuba.gui.components.AbstractFrame;
import com.haulmont.cuba.gui.components.TextField;
import com.haulmont.demo.dashboard.web.widget.clock.ClockWidget;
import org.springframework.context.annotation.Scope;
import org.springframework.context.event.EventListener;
import org.springframework.stereotype.Component;

import java.text.SimpleDateFormat;
import java.util.Date;

import static com.haulmont.cuba.core.sys.jpql.InferredType.Date;

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
        AbstractFrame wb = webDashboardFrame.getWidget("clock");
        if (wb instanceof ClockWidget) {
            ClockWidget clockWidget = (ClockWidget) wb;
            TextField clockField = clockWidget.getClockField();
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            clockField.setValue(sdf.format(new Date()));
        }
    }
}
