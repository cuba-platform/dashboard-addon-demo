package com.company.testdashboard.web.assistant;

import com.company.testdashboard.web.widget.displayer.UserDisplayWidget;
import com.haulmont.addon.dashboard.web.dashboard.assistant.DashboardViewAssistant;
import com.haulmont.addon.dashboard.web.dashboard.frames.uicomponent.WebDashboardFrame;
import com.haulmont.addon.dashboard.web.events.DashboardUpdatedEvent;
import com.haulmont.cuba.gui.components.AbstractFrame;
import com.haulmont.cuba.gui.components.Button;
import com.haulmont.cuba.gui.components.TextField;
import com.haulmont.cuba.gui.xml.layout.ComponentsFactory;
import org.springframework.context.annotation.Scope;
import org.springframework.context.event.EventListener;
import org.springframework.stereotype.Component;

import javax.inject.Inject;
import java.text.SimpleDateFormat;
import java.util.Date;

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
        AbstractFrame wb = webDashboardFrame.getWidget("userDisp");
        if (wb instanceof UserDisplayWidget) {
            UserDisplayWidget uDispWid = (UserDisplayWidget) wb;
            TextField clockField = uDispWid.getClockField();
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            clockField.setValue(sdf.format(new Date()));
        }
    }
}
