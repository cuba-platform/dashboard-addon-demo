package com.haulmont.demo.dashboard.web.sys.navigation;

import com.haulmont.cuba.core.global.UserSessionSource;
import com.haulmont.cuba.gui.navigation.NavigationState;
import com.haulmont.cuba.security.entity.User;
import com.haulmont.cuba.web.sys.navigation.accessfilter.NavigationFilter;
import org.springframework.stereotype.Component;

import javax.inject.Inject;

@Component(DemoNavigationFilter.NAME)
public class DemoNavigationFilter implements NavigationFilter {

    public static final String NAME = "dashboards_DemoNavigationFilter";

    @Inject
    private UserSessionSource userSessionSource;

    @Override
    public AccessCheckResult allowed(NavigationState fromState, NavigationState toState) {
        User user = userSessionSource.getUserSession()
                .getCurrentOrSubstitutedUser();

        return "demo".equals(user.getLogin())
                ? AccessCheckResult.rejected()
                : AccessCheckResult.allowed();
    }
}
