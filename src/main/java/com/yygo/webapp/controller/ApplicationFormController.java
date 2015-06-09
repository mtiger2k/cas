package com.yygo.webapp.controller;

import com.yygo.Constants;
import com.yygo.model.LabelValue;
import org.apache.commons.lang.StringUtils;
import org.appfuse.service.GenericManager;
import com.yygo.model.Application;
import com.yygo.webapp.controller.BaseFormController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

@Controller
@RequestMapping("/applicationform*")
public class ApplicationFormController extends BaseFormController {
    private GenericManager<Application, Long> applicationManager = null;

    @Autowired
    public void setApplicationManager(@Qualifier("applicationManager") GenericManager<Application, Long> applicationManager) {
        this.applicationManager = applicationManager;
    }

    public ApplicationFormController() {
        setCancelView("redirect:applications");
        setSuccessView("redirect:applications");
    }

    @Override
    @InitBinder
    protected void initBinder(final HttpServletRequest request, final ServletRequestDataBinder binder) {
        super.initBinder(request, binder);
        binder.registerCustomEditor(Date.class, new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), true));

    }

    @ModelAttribute
    @RequestMapping(method = RequestMethod.GET)
    protected Application showForm(HttpServletRequest request)
    throws Exception {
        String id = request.getParameter("id");

        if (!StringUtils.isBlank(id)) {
            return applicationManager.get(new Long(id));
        }

        return new Application();
    }

    @RequestMapping(method = RequestMethod.POST)
    public String onSubmit(Application application, BindingResult errors, HttpServletRequest request,
                           HttpServletResponse response)
    throws Exception {
        if (request.getParameter("cancel") != null) {
            return getCancelView();
        }

        if (validator != null) { // validator is null during testing
            validator.validate(application, errors);

            if (errors.hasErrors() && request.getParameter("delete") == null) { // don't validate when deleting
                return "applicationform";
            }
        }

        log.debug("entering 'onSubmit' method...");

        boolean isNew = (application.getId() == null);
        String success = getSuccessView();
        Locale locale = request.getLocale();

        if (request.getParameter("delete") != null) {
            applicationManager.remove(application.getId());
            saveMessage(request, getText("application.deleted", locale));
        } else {
            applicationManager.save(application);
            String key = (isNew) ? "application.added" : "application.updated";
            saveMessage(request, getText(key, locale));

            if (!isNew) {
                success = "redirect:applicationform?id=" + application.getId();
            }
        }

        return success;
    }

    @ModelAttribute("availableGenders")
    protected List<LabelValue> loadAvailableGenders() {
        return getList(Constants.GENDER);
    }

    @ModelAttribute("availableMaritalStatus")
    protected List<LabelValue> loadAvailableMaritalStatus() {
        return getList(Constants.MARITAL_STATUS);
    }

    @ModelAttribute("availableApplicationStatus")
    protected List<LabelValue> loadAvailableApplicationStatus() {
        return getList(Constants.APPLICATION_STATUS);
    }

    @ModelAttribute("availableCompanyNatures")
    protected List<LabelValue> loadAvailableCompanyNatures() {
        return getList(Constants.COMPANY_NATURE);
    }

    @ModelAttribute("availableIdTypes")
    protected List<LabelValue> loadAvailableIdTypes() {
        return getList(Constants.ID_TYPE);
    }

    @ModelAttribute("availableLoanTypes")
    protected List<LabelValue> loadAvailableLoanTypes() {
        return getList(Constants.LOAN_TYPE);
    }

    @ModelAttribute("availableLoanYears")
    protected List<LabelValue> loadAvailableLoanYears() {
        return getList(Constants.LOAN_YEARS);
    }

    @ModelAttribute("availableMailTypes")
    protected List<LabelValue> loadAvailableMailTypes() {
        return getList(Constants.MAIL_TYPE);
    }

    @ModelAttribute("availablePropertyTypes")
    protected List<LabelValue> loadAvailablePropertyTypes() {
        return getList(Constants.PROPERTY_TYPE);
    }

    @ModelAttribute("availableWorkPositions")
    protected List<LabelValue> loadAvailableWorkPositions() {
        return getList(Constants.WORK_POSITION);
    }

    private List<LabelValue> getList(String pre) {
        String text = getText(pre, Locale.ENGLISH);
        List<LabelValue> list = new ArrayList<LabelValue>();
        String[] values = text.split("(\\s)*,(\\s)*");
        for (String value: values) {
            list.add(new LabelValue(getText(pre + "_" + value, LocaleContextHolder.getLocale()), value));
        }

        return list;
    }
}
