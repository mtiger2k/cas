package com.yygo.webapp.listener;

import org.springframework.context.ApplicationContext;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.web.context.support.WebApplicationContextUtils;

import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;

/**
 * Created by tiansha on 2015/6/7.
 */
public class LocaleConstantsInitializer implements ServletRequestListener {

    @Override
    public void requestInitialized(ServletRequestEvent requestEvent) {
        ApplicationContext ctx =
                WebApplicationContextUtils.getRequiredWebApplicationContext(requestEvent.getServletContext());

        System.out.println("ROLE_ADMIN: " + ctx.getMessage("ROLE_ADMIN", null, LocaleContextHolder.getLocale()));
    }

    @Override
    public void requestDestroyed(ServletRequestEvent requestEvent) {

    }

}
