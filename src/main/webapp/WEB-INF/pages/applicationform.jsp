<%@ include file="/common/taglibs.jsp"%>

<head>
    <title><fmt:message key="applicationDetail.title"/></title>
    <meta name="menu" content="ApplicationMenu"/>
    <meta name="heading" content="<fmt:message key='applicationDetail.heading'/>"/>
    <style type="text/css">
        .container {padding-left:1px;padding-right:1px;}
        .row {margin-left:-1px;margin-right:-1px;}
        .row > div {padding-left:1px;padding-right:1px;}
        legend {color:blue;}
    </style>
</head>

<c:set var="delObject" scope="request"><fmt:message key="applicationList.application"/></c:set>
<script type="text/javascript">var msgDelConfirm =
   "<fmt:message key="delete.confirm"><fmt:param value="${delObject}"/></fmt:message>";
</script>

<div class="container">
    <h2><fmt:message key="applicationDetail.heading"/>: A00000001</h2>
    <fmt:message key="applicationDetail.message"/>

<form:errors path="*" cssClass="alert alert-danger alert-dismissable" element="div"/>
<form:form commandName="application" method="post" action="applicationform" cssClass="well"
           id="applicationForm" onsubmit="return validateApplication(this)">
    <form:hidden path="id"/>
    <legend><fmt:message key="application.mainApplicant"/></legend>
    <!--div class="row">
        <spring:bind path="application.applNo">
            <div class="col-md-6 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
        </spring:bind>
        <appfuse:label key="application.applNo" styleClass="control-label"/>
        <form:input cssClass="form-control" path="applNo" id="applNo"  maxlength="255"/>
        <form:errors path="applNo" cssClass="help-block"/>
        </div>
        <spring:bind path="application.applicationStatus">
            <div class="col-md-6 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
        </spring:bind>
        <appfuse:label key="application.applicationStatus" styleClass="control-label"/>
        <form:input cssClass="form-control" path="applicationStatus" id="applicationStatus"  maxlength="255"/>
        <form:errors path="applicationStatus" cssClass="help-block"/>
        </div>
    </div-->
    <div class="row">
        <spring:bind path="application.name">
            <div class="col-md-6 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
        </spring:bind>
        <appfuse:label key="application.name" styleClass="control-label"/>
        <form:input cssClass="form-control" path="name" id="name"  maxlength="255"/>
        <form:errors path="name" cssClass="help-block"/>
        </div>
        <spring:bind path="application.gender">
            <div class="col-md-3 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
        </spring:bind>
        <appfuse:label key="application.gender" styleClass="control-label"/>
        <form:select cssClass="form-control" path="gender" id="gender">
            <option value=""><fmt:message key="option.select"/></option>
            <form:options items="${availableGenders}" itemValue="value" itemLabel="label"/>
        </form:select>
        <form:errors path="gender" cssClass="help-block"/>
        </div>
        <spring:bind path="application.birthday">
            <div class="col-md-3 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
        </spring:bind>
        <appfuse:label key="application.birthday" styleClass="control-label"/>
        <form:input cssClass="form-control" path="birthday" id="birthday"  maxlength="255"/>
        <form:errors path="birthday" cssClass="help-block"/>
        </div>
    </div>
    <div class="row">
        <spring:bind path="application.idType">
            <div class="col-md-6 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
        </spring:bind>
        <appfuse:label key="application.idType" styleClass="control-label"/>
        <form:select cssClass="form-control" path="idType" id="idType">
            <option value=""><fmt:message key="option.select"/></option>
            <form:options items="${availableIdTypes}" itemValue="value" itemLabel="label"/>
        </form:select>
        <form:errors path="idType" cssClass="help-block"/>
        </div>
        <spring:bind path="application.idNo">
            <div class="col-md-6 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
        </spring:bind>
        <appfuse:label key="application.idNo" styleClass="control-label"/>
        <form:input cssClass="form-control" path="idNo" id="idNo"  maxlength="255"/>
        <form:errors path="idNo" cssClass="help-block"/>
        </div>
    </div>
    <div class="row">
        <spring:bind path="application.maritalStatus">
        <div class="col-sm-6 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
            </spring:bind>
            <appfuse:label key="application.maritalStatus" styleClass="control-label"/>
            <form:select cssClass="form-control" path="maritalStatus" id="maritalStatus">
                <option value=""><fmt:message key="option.select"/></option>
                <form:options items="${availableMaritalStatus}" itemValue="value" itemLabel="label"/>
            </form:select>
            <form:errors path="maritalStatus" cssClass="help-block"/>
        </div>
        <spring:bind path="application.propertyType">
        <div class="col-sm-6 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
            </spring:bind>
            <appfuse:label key="application.propertyType" styleClass="control-label"/>
            <form:select cssClass="form-control" path="propertyType" id="propertyType">
                <option value=""><fmt:message key="option.select"/></option>
                <form:options items="${availablePropertyTypes}" itemValue="value" itemLabel="label"/>
            </form:select>
            <form:errors path="propertyType" cssClass="help-block"/>
        </div>
    </div>
    <spring:bind path="application.address">
        <div class="form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
    </spring:bind>
    <appfuse:label key="application.address" styleClass="control-label"/>
    <form:input cssClass="form-control" path="address" id="address"  maxlength="255"/>
    <form:errors path="address" cssClass="help-block"/>
    </div>
    <div class="row">
        <spring:bind path="application.workCompany">
            <div class="col-sm-5 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
        </spring:bind>
        <appfuse:label key="application.workCompany" styleClass="control-label"/>
        <form:input cssClass="form-control" path="workCompany" id="workCompany"  maxlength="255"/>
        <form:errors path="workCompany" cssClass="help-block"/>
        </div>
        <spring:bind path="application.workPosition">
        <div class="col-sm-4 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
            </spring:bind>
            <appfuse:label key="application.workPosition" styleClass="control-label"/>
            <form:select cssClass="form-control" path="workPosition" id="workPosition">
                <option value=""><fmt:message key="option.select"/></option>
                <form:options items="${availableWorkPositions}" itemValue="value" itemLabel="label"/>
            </form:select>
            <form:errors path="workPosition" cssClass="help-block"/>
        </div>
        <spring:bind path="application.companyYears">
        <div class="col-sm-3 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
            </spring:bind>
            <appfuse:label key="application.companyYears" styleClass="control-label"/>
            <form:input cssClass="form-control" path="companyYears" id="companyYears"  maxlength="255"/>
            <form:errors path="companyYears" cssClass="help-block"/>
        </div>
    </div>
    <spring:bind path="application.companyAddress">
        <div class="form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
    </spring:bind>
    <appfuse:label key="application.companyAddress" styleClass="control-label"/>
    <form:input cssClass="form-control" path="companyAddress" id="companyAddress"  maxlength="255"/>
    <form:errors path="companyAddress" cssClass="help-block"/>
    </div>
    <div class="row">
        <spring:bind path="application.companyNature">
            <div class="col-sm-6 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
        </spring:bind>
        <appfuse:label key="application.companyNature" styleClass="control-label"/>
        <form:select cssClass="form-control" path="companyNature" id="companyNature">
            <option value=""><fmt:message key="option.select"/></option>
            <form:options items="${availableCompanyNatures}" itemValue="value" itemLabel="label"/>
        </form:select>
        <form:errors path="companyNature" cssClass="help-block"/>
        </div>
        <spring:bind path="application.companyType">
            <div class="col-sm-6 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
        </spring:bind>
        <appfuse:label key="application.companyType" styleClass="control-label"/>
        <form:input cssClass="form-control" path="companyType" id="companyType"  maxlength="255"/>
        <form:errors path="companyType" cssClass="help-block"/>
        </div>
    </div>
    <spring:bind path="application.annualIncome">
        <div class="form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
    </spring:bind>
    <appfuse:label key="application.annualIncome" styleClass="control-label"/>
    <form:input cssClass="form-control" path="annualIncome" id="annualIncome"  maxlength="255"/>
    <form:errors path="annualIncome" cssClass="help-block"/>
    </div>
    <div class="row">
        <spring:bind path="application.homeTelNo">
            <div class="col-sm-4 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
        </spring:bind>
        <appfuse:label key="application.homeTelNo" styleClass="control-label"/>
        <form:input cssClass="form-control" path="homeTelNo" id="homeTelNo"  maxlength="255"/>
        <form:errors path="homeTelNo" cssClass="help-block"/>
        </div>
        <spring:bind path="application.workTelNo">
            <div class="col-sm-4 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
        </spring:bind>
        <appfuse:label key="application.workTelNo" styleClass="control-label"/>
        <form:input cssClass="form-control" path="workTelNo" id="workTelNo"  maxlength="255"/>
        <form:errors path="workTelNo" cssClass="help-block"/>
        </div>
        <spring:bind path="application.mobileNo">
            <div class="col-sm-4 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
        </spring:bind>
        <appfuse:label key="application.mobileNo" styleClass="control-label"/>
        <form:input cssClass="form-control" path="mobileNo" id="mobileNo"  maxlength="255"/>
        <form:errors path="mobileNo" cssClass="help-block"/>
        </div>
    </div>
    <div class="row">
        <spring:bind path="application.email">
            <div class="col-sm-6 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
        </spring:bind>
        <appfuse:label key="application.email" styleClass="control-label"/>
        <form:input cssClass="form-control" path="email" id="email"  maxlength="255"/>
        <form:errors path="email" cssClass="help-block"/>
        </div>
        <spring:bind path="application.mailType">
            <div class="col-sm-6 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
        </spring:bind>
        <appfuse:label key="application.mailType" styleClass="control-label"/>
        <form:select cssClass="form-control" path="mailType" id="mailType">
            <option value=""><fmt:message key="option.select"/></option>
            <form:options items="${availableMailTypes}" itemValue="value" itemLabel="label"/>
        </form:select>
        <form:errors path="mailType" cssClass="help-block"/>
        </div>
    </div>
    <div>
        <legend class="accordion-heading">
            <a data-toggle="collapse" href="#collapse-urgent-person"><fmt:message key="application.urgentContact"/></a>
        </legend>
        <div id="collapse-urgent-person" class="accordion-body collapse">
            <div class="row">
                <spring:bind path="application.urgentContactName1">
                    <div class="col-md-4 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
                </spring:bind>
                <appfuse:label key="application.urgentContact1" styleClass="control-label"/>
                <form:input cssClass="form-control" path="urgentContactName1" id="urgentContactName1"  maxlength="255"/>
                <form:errors path="urgentContactName1" cssClass="help-block"/>
                </div>
                <spring:bind path="application.urgentContactTelNo1">
                    <div class="col-md-4 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
                </spring:bind>
                <appfuse:label key="application.contactNumber" styleClass="control-label"/>
                <form:input cssClass="form-control" path="urgentContactTelNo1" id="urgentContactTelNo1"  maxlength="255"/>
                <form:errors path="urgentContactTelNo1" cssClass="help-block"/>
                </div>
                <spring:bind path="application.urgentContactRelation1">
                    <div class="col-md-4 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
                </spring:bind>
                <appfuse:label key="application.relation" styleClass="control-label"/>
                <form:input cssClass="form-control" path="urgentContactRelation1" id="urgentContactRelation1"  maxlength="255"/>
                <form:errors path="urgentContactRelation1" cssClass="help-block"/>
                </div>
            </div>
            <div class="row">
                <spring:bind path="application.urgentContactName2">
                    <div class="col-md-4 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
                </spring:bind>
                <appfuse:label key="application.urgentContact2" styleClass="control-label"/>
                <form:input cssClass="form-control" path="urgentContactName2" id="urgentContactName2"  maxlength="255"/>
                <form:errors path="urgentContactName2" cssClass="help-block"/>
                </div>
                <spring:bind path="application.urgentContactTelNo2">
                    <div class="col-md-4 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
                </spring:bind>
                <appfuse:label key="application.contactNumber" styleClass="control-label"/>
                <form:input cssClass="form-control" path="urgentContactTelNo2" id="urgentContactTelNo2"  maxlength="255"/>
                <form:errors path="urgentContactTelNo2" cssClass="help-block"/>
                </div>
                <spring:bind path="application.urgentContactRelation2">
                    <div class="col-md-4 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
                </spring:bind>
                <appfuse:label key="application.relation" styleClass="control-label"/>
                <form:input cssClass="form-control" path="urgentContactRelation2" id="urgentContactRelation2"  maxlength="255"/>
                <form:errors path="urgentContactRelation2" cssClass="help-block"/>
                </div>
            </div>
            <div class="row">
                <spring:bind path="application.urgentContactName3">
                    <div class="col-md-4 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
                </spring:bind>
                <appfuse:label key="application.urgentContact3" styleClass="control-label"/>
                <form:input cssClass="form-control" path="urgentContactName3" id="urgentContactName3"  maxlength="255"/>
                <form:errors path="urgentContactName3" cssClass="help-block"/>
                </div>
                <spring:bind path="application.urgentContactTelNo3">
                    <div class="col-md-4 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
                </spring:bind>
                <appfuse:label key="application.contactNumber" styleClass="control-label"/>
                <form:input cssClass="form-control" path="urgentContactTelNo3" id="urgentContactTelNo3"  maxlength="255"/>
                <form:errors path="urgentContactTelNo3" cssClass="help-block"/>
                </div>
                <spring:bind path="application.urgentContactRelation3">
                    <div class="col-md-4 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
                </spring:bind>
                <appfuse:label key="application.relation" styleClass="control-label"/>
                <form:input cssClass="form-control" path="urgentContactRelation3" id="urgentContactRelation3"  maxlength="255"/>
                <form:errors path="urgentContactRelation3" cssClass="help-block"/>
                </div>
            </div>
        </div>
    </div>

    <div>
        <legend class="accordion-heading">
            <form:checkbox path="coLoaned" id="application.coLoaned"/>
            <a data-toggle="collapse" href="#collapse-co-person"><fmt:message key="application.coApplicant"/></a>
        </legend>
        <div id="collapse-co-person" class="accordion-body collapse">
            <div class="row">
                <spring:bind path="application.coName">
                <div class="col-md-4 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
                    </spring:bind>
                    <appfuse:label key="application.name" styleClass="control-label"/>
                    <form:input cssClass="form-control" path="coName" id="coName"  maxlength="255"/>
                    <form:errors path="coName" cssClass="help-block"/>
                </div>
                <spring:bind path="application.coGender">
                <div class="col-md-4 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
                    </spring:bind>
                    <appfuse:label key="application.gender" styleClass="control-label"/>
                    <form:select cssClass="form-control" path="coGender" id="coGender">
                        <option value=""><fmt:message key="option.select"/></option>
                        <form:options items="${availableGenders}" itemValue="value" itemLabel="label"/>
                    </form:select>
                    <form:errors path="coGender" cssClass="help-block"/>
                </div>
                <spring:bind path="application.coBirthday">
                <div class="col-md-4 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
                    </spring:bind>
                    <appfuse:label key="application.birthday" styleClass="control-label"/>
                    <form:input cssClass="form-control" path="coBirthday" id="coBirthday"  maxlength="255"/>
                    <form:errors path="coBirthday" cssClass="help-block"/>
                </div>
            </div>
            <div class="row">
            <spring:bind path="application.coIdType">
                <div class="col-md-6 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
                    </spring:bind>
                    <appfuse:label key="application.idType" styleClass="control-label"/>
                    <form:select cssClass="form-control" path="coIdType" id="coIdType">
                        <option value=""><fmt:message key="option.select"/></option>
                        <form:options items="${availableIdTypes}" itemValue="value" itemLabel="label"/>
                    </form:select>
                    <form:errors path="coIdType" cssClass="help-block"/>
                </div>
                <spring:bind path="application.coIdNo">
                <div class="col-md-6 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
                    </spring:bind>
                    <appfuse:label key="application.idNo" styleClass="control-label"/>
                    <form:input cssClass="form-control" path="coIdNo" id="coIdNo"  maxlength="255"/>
                    <form:errors path="coIdNo" cssClass="help-block"/>
                </div>
            </div>
            <spring:bind path="application.coAddress">
            <div class="row">
                <div class="col-md-6 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
                    </spring:bind>
                    <appfuse:label key="application.address" styleClass="control-label"/>
                    <form:input cssClass="form-control" path="coAddress" id="coAddress"  maxlength="255"/>
                    <form:errors path="coAddress" cssClass="help-block"/>
                </div>
                <spring:bind path="application.coPropertyType">
                <div class="col-md-6 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
                    </spring:bind>
                    <appfuse:label key="application.propertyType" styleClass="control-label"/>
                    <form:select cssClass="form-control" path="coPropertyType" id="coPropertyType">
                        <option value=""><fmt:message key="option.select"/></option>
                        <form:options items="${availablePropertyTypes}" itemValue="value" itemLabel="label"/>
                    </form:select>
                    <form:errors path="coPropertyType" cssClass="help-block"/>
                </div>
            </div>
            <div class="row">
                <spring:bind path="application.coWorkCompany">
                <div class="col-md-4 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
                    </spring:bind>
                    <appfuse:label key="application.workCompany" styleClass="control-label"/>
                    <form:input cssClass="form-control" path="coWorkCompany" id="coWorkCompany"  maxlength="255"/>
                    <form:errors path="coWorkCompany" cssClass="help-block"/>
                </div>
                <spring:bind path="application.coWorkPosition">
                <div class="col-md-4 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
                    </spring:bind>
                    <appfuse:label key="application.workPosition" styleClass="control-label"/>
                    <form:select cssClass="form-control" path="coWorkPosition" id="coWorkPosition">
                        <option value=""><fmt:message key="option.select"/></option>
                        <form:options items="${availableWorkPositions}" itemValue="value" itemLabel="label"/>
                    </form:select>
                    <form:errors path="coWorkPosition" cssClass="help-block"/>
                </div>
                <spring:bind path="application.coCompanyYears">
                <div class="col-md-4 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
                    </spring:bind>
                    <appfuse:label key="application.companyYears" styleClass="control-label"/>
                    <form:input cssClass="form-control" path="coCompanyYears" id="coCompanyYears"  maxlength="255"/>
                    <form:errors path="coCompanyYears" cssClass="help-block"/>
                </div>
            </div>
            <spring:bind path="application.coCompanyAddress">
            <div class="form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
                </spring:bind>
                <appfuse:label key="application.companyAddress" styleClass="control-label"/>
                <form:input cssClass="form-control" path="coCompanyAddress" id="coCompanyAddress"  maxlength="255"/>
                <form:errors path="coCompanyAddress" cssClass="help-block"/>
            </div>
            <div class="row">
                <spring:bind path="application.coCompanyNature">
                <div class="col-md-6 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
                    </spring:bind>
                    <appfuse:label key="application.companyNature" styleClass="control-label"/>
                    <form:select cssClass="form-control" path="coCompanyNature" id="coCompanyNature">
                        <option value=""><fmt:message key="option.select"/></option>
                        <form:options items="${availableCompanyNatures}" itemValue="value" itemLabel="label"/>
                    </form:select>
                    <form:errors path="coCompanyNature" cssClass="help-block"/>
                </div>
                <spring:bind path="application.coCompanyType">
                <div class="col-md-6 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
                    </spring:bind>
                    <appfuse:label key="application.companyType" styleClass="control-label"/>
                    <form:input cssClass="form-control" path="coCompanyType" id="coCompanyType"  maxlength="255"/>
                    <form:errors path="coCompanyType" cssClass="help-block"/>
                </div>
            </div>
            <div class="row">
                <spring:bind path="application.coHomeTelNo">
                <div class="col-md-4 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
                    </spring:bind>
                    <appfuse:label key="application.homeTelNo" styleClass="control-label"/>
                    <form:input cssClass="form-control" path="coHomeTelNo" id="coHomeTelNo"  maxlength="255"/>
                    <form:errors path="coHomeTelNo" cssClass="help-block"/>
                </div>
                <spring:bind path="application.coWorkTelNo">
                <div class="col-md-4 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
                    </spring:bind>
                    <appfuse:label key="application.workTelNo" styleClass="control-label"/>
                    <form:input cssClass="form-control" path="coWorkTelNo" id="coWorkTelNo"  maxlength="255"/>
                    <form:errors path="coWorkTelNo" cssClass="help-block"/>
                </div>
                <spring:bind path="application.coMobileNo">
                <div class="col-md-4 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
                    </spring:bind>
                    <appfuse:label key="application.mobileNo" styleClass="control-label"/>
                    <form:input cssClass="form-control" path="coMobileNo" id="coMobileNo"  maxlength="255"/>
                    <form:errors path="coMobileNo" cssClass="help-block"/>
                </div>
            </div>
            <spring:bind path="application.coEmail">
            <div class="form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
                </spring:bind>
                <appfuse:label key="application.email" styleClass="control-label"/>
                <form:input cssClass="form-control" path="coEmail" id="coEmail"  maxlength="255"/>
                <form:errors path="coEmail" cssClass="help-block"/>
            </div>
        </div>
    </div>

    <div>
        <legend class="accordion-heading">
            <form:checkbox path="guaranted" id="application.guaranted"/>
            <a data-toggle="collapse" href="#collapse-db-person"><fmt:message key="application.dbApplicant"/></a>
        </legend>
        <div id="collapse-db-person" class="accordion-body collapse">
            <div class="row">
                <spring:bind path="application.dbName">
                <div class="col-md-4 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
                    </spring:bind>
                    <appfuse:label key="application.name" styleClass="control-label"/>
                    <form:input cssClass="form-control" path="dbName" id="dbName"  maxlength="255"/>
                    <form:errors path="dbName" cssClass="help-block"/>
                </div>
                <spring:bind path="application.dbGender">
                <div class="col-md-4 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
                    </spring:bind>
                    <appfuse:label key="application.gender" styleClass="control-label"/>
                    <form:select cssClass="form-control" path="dbGender" id="dbGender">
                        <option value=""><fmt:message key="option.select"/></option>
                        <form:options items="${availableGenders}" itemValue="value" itemLabel="label"/>
                    </form:select>
                    <form:errors path="dbGender" cssClass="help-block"/>
                </div>
                <spring:bind path="application.dbBirthday">
                <div class="col-md-4 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
                    </spring:bind>
                    <appfuse:label key="application.birthday" styleClass="control-label"/>
                    <form:input cssClass="form-control" path="dbBirthday" id="dbBirthday"  maxlength="255"/>
                    <form:errors path="dbBirthday" cssClass="help-block"/>
                </div>
            </div>
            <div class="row">
                <spring:bind path="application.dbIdType">
                <div class="col-md-6 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
                    </spring:bind>
                    <appfuse:label key="application.idType" styleClass="control-label"/>
                    <form:select cssClass="form-control" path="dbIdType" id="dbIdType">
                        <option value=""><fmt:message key="option.select"/></option>
                        <form:options items="${availableIdTypes}" itemValue="value" itemLabel="label"/>
                    </form:select>
                    <form:errors path="dbIdType" cssClass="help-block"/>
                </div>
                <spring:bind path="application.dbIdNo">
                <div class="col-md-6 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
                    </spring:bind>
                    <appfuse:label key="application.idNo" styleClass="control-label"/>
                    <form:input cssClass="form-control" path="dbIdNo" id="dbIdNo"  maxlength="255"/>
                    <form:errors path="dbIdNo" cssClass="help-block"/>
                </div>
            </div>
            <div class="row">
                <spring:bind path="application.dbAddress">
                <div class="col-md-6 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
                    </spring:bind>
                    <appfuse:label key="application.address" styleClass="control-label"/>
                    <form:input cssClass="form-control" path="dbAddress" id="dbAddress"  maxlength="255"/>
                    <form:errors path="dbAddress" cssClass="help-block"/>
                </div>
                <spring:bind path="application.dbPropertyType">
                <div class="col-md-6 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
                    </spring:bind>
                    <appfuse:label key="application.propertyType" styleClass="control-label"/>
                    <form:select cssClass="form-control" path="dbPropertyType" id="dbPropertyType">
                        <option value=""><fmt:message key="option.select"/></option>
                        <form:options items="${availablePropertyTypes}" itemValue="value" itemLabel="label"/>
                    </form:select>
                    <form:errors path="dbPropertyType" cssClass="help-block"/>
                </div>
            </div>
            <div class="row">
                <spring:bind path="application.dbWorkCompany">
                <div class="col-md-4 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
                    </spring:bind>
                    <appfuse:label key="application.workCompany" styleClass="control-label"/>
                    <form:input cssClass="form-control" path="dbWorkCompany" id="dbWorkCompany"  maxlength="255"/>
                    <form:errors path="dbWorkCompany" cssClass="help-block"/>
                </div>
                <spring:bind path="application.dbCompanyYears">
                <div class="col-md-4 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
                    </spring:bind>
                    <appfuse:label key="application.companyYears" styleClass="control-label"/>
                    <form:input cssClass="form-control" path="dbCompanyYears" id="dbCompanyYears"  maxlength="255"/>
                    <form:errors path="dbCompanyYears" cssClass="help-block"/>
                </div>
                <spring:bind path="application.dbWorkPosition">
                <div class="col-md-4 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
                    </spring:bind>
                    <appfuse:label key="application.workPosition" styleClass="control-label"/>
                    <form:select cssClass="form-control" path="dbWorkPosition" id="dbWorkPosition">
                        <option value=""><fmt:message key="option.select"/></option>
                        <form:options items="${availableWorkPositions}" itemValue="value" itemLabel="label"/>
                    </form:select>
                    <form:errors path="dbWorkPosition" cssClass="help-block"/>
                </div>
            </div>
            <spring:bind path="application.coCompanyAddress">
            <div class="form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
                </spring:bind>
                <appfuse:label key="application.companyAddress" styleClass="control-label"/>
                <form:input cssClass="form-control" path="coCompanyAddress" id="coCompanyAddress"  maxlength="255"/>
                <form:errors path="coCompanyAddress" cssClass="help-block"/>
            </div>
            <div class="row">
                <spring:bind path="application.dbCompanyNature">
                <div class="col-md-6 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
                    </spring:bind>
                    <appfuse:label key="application.companyNature" styleClass="control-label"/>
                    <form:select cssClass="form-control" path="dbCompanyNature" id="dbCompanyNature">
                        <option value=""><fmt:message key="option.select"/></option>
                        <form:options items="${availableCompanyNatures}" itemValue="value" itemLabel="label"/>
                    </form:select>
                    <form:errors path="dbCompanyNature" cssClass="help-block"/>
                </div>
                <spring:bind path="application.dbCompanyType">
                <div class="col-md-6 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
                    </spring:bind>
                    <appfuse:label key="application.companyType" styleClass="control-label"/>
                    <form:input cssClass="form-control" path="dbCompanyType" id="dbCompanyType"  maxlength="255"/>
                    <form:errors path="dbCompanyType" cssClass="help-block"/>
                </div>
            </div>
            <div class="row">
                <spring:bind path="application.dbHomeTelNo">
                <div class="col-md-4 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
                    </spring:bind>
                    <appfuse:label key="application.homeTelNo" styleClass="control-label"/>
                    <form:input cssClass="form-control" path="dbHomeTelNo" id="dbHomeTelNo"  maxlength="255"/>
                    <form:errors path="dbHomeTelNo" cssClass="help-block"/>
                </div>
                <spring:bind path="application.dbWorkTelNo">
                <div class="col-md-4 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
                    </spring:bind>
                    <appfuse:label key="application.workTelNo" styleClass="control-label"/>
                    <form:input cssClass="form-control" path="dbWorkTelNo" id="dbWorkTelNo"  maxlength="255"/>
                    <form:errors path="dbWorkTelNo" cssClass="help-block"/>
                </div>
                <spring:bind path="application.dbMobileNo">
                <div class="col-md-4 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
                    </spring:bind>
                    <appfuse:label key="application.mobileNo" styleClass="control-label"/>
                    <form:input cssClass="form-control" path="dbMobileNo" id="dbMobileNo"  maxlength="255"/>
                    <form:errors path="dbMobileNo" cssClass="help-block"/>
                </div>
            </div>
            <spring:bind path="application.dbEmail">
            <div class="form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
                </spring:bind>
                <appfuse:label key="application.email" styleClass="control-label"/>
                <form:input cssClass="form-control" path="dbEmail" id="dbEmail"  maxlength="255"/>
                <form:errors path="dbEmail" cssClass="help-block"/>
            </div>
        </div>
    </div>

    <legend><fmt:message key="application.VehicleAndLoan"/></legend>
    <spring:bind path="application.vehicleModel">
        <div class="form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
    </spring:bind>
    <appfuse:label key="application.vehicleModel" styleClass="control-label"/>
    <form:input cssClass="form-control" path="vehicleModel" id="vehicleModel"  maxlength="255"/>
    <form:errors path="vehicleModel" cssClass="help-block"/>
    </div>
    <div class="row">
        <spring:bind path="application.manufacturerPrice">
            <div class="col-md-6 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
        </spring:bind>
        <appfuse:label key="application.manufacturerPrice" styleClass="control-label"/>
        <form:input cssClass="form-control" path="manufacturerPrice" id="manufacturerPrice"  maxlength="255"/>
        <form:errors path="manufacturerPrice" cssClass="help-block"/>
        </div>
        <spring:bind path="application.price">
            <div class="col-md-6 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
        </spring:bind>
        <appfuse:label key="application.price" styleClass="control-label"/>
        <form:input cssClass="form-control" path="price" id="price"  maxlength="255"/>
        <form:errors path="price" cssClass="help-block"/>
        </div>
    </div>
    <div class="row">
        <spring:bind path="application.loanType">
            <div class="col-md-4 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
        </spring:bind>
        <appfuse:label key="application.loanType" styleClass="control-label"/>
        <form:select cssClass="form-control" path="loanType" id="loanType">
            <option value=""><fmt:message key="option.select"/></option>
            <form:options items="${availableLoanTypes}" itemValue="value" itemLabel="label"/>
        </form:select>
        <form:errors path="loanType" cssClass="help-block"/>
        </div>
        <spring:bind path="application.loanYears">
            <div class="col-md-4 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
        </spring:bind>
        <appfuse:label key="application.loanYears" styleClass="control-label"/>
        <form:select cssClass="form-control" path="loanYears" id="loanYears">
            <option value="0"><fmt:message key="option.select"/></option>
            <form:options items="${availableLoanYears}" itemValue="value" itemLabel="label"/>
        </form:select>
        <form:errors path="loanYears" cssClass="help-block"/>
        </div>
        <spring:bind path="application.loanRate">
            <div class="col-md-4 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
        </spring:bind>
        <appfuse:label key="application.loanRate" styleClass="control-label"/>
        <form:input cssClass="form-control" path="loanRate" id="loanRate"  maxlength="255"/>
        <form:errors path="loanRate" cssClass="help-block"/>
        </div>
    </div>
    <div class="row">
        <spring:bind path="application.downPaymentRate">
            <div class="col-md-4 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
        </spring:bind>
        <appfuse:label key="application.downPaymentRate" styleClass="control-label"/>
        <form:input cssClass="form-control" path="downPaymentRate" id="downPaymentRate"  maxlength="255"/>
        <form:errors path="downPaymentRate" cssClass="help-block"/>
        </div>
        <spring:bind path="application.downPaymentAmount">
            <div class="col-md-4 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
        </spring:bind>
        <appfuse:label key="application.downPaymentAmount" styleClass="control-label"/>
        <form:input cssClass="form-control" path="downPaymentAmount" id="downPaymentAmount"  maxlength="255"/>
        <form:errors path="downPaymentAmount" cssClass="help-block"/>
        </div>
        <spring:bind path="application.monthPaymentAmount">
            <div class="col-md-4 form-group${(not empty status.errorMessage) ? ' has-error' : ''}">
        </spring:bind>
        <appfuse:label key="application.monthPaymentAmount" styleClass="control-label"/>
        <form:input cssClass="form-control" path="monthPaymentAmount" id="monthPaymentAmount"  maxlength="255"/>
        <form:errors path="monthPaymentAmount" cssClass="help-block"/>
        </div>
    </div>

    <div class="form-group">
        <button type="submit" class="btn btn-primary" id="save" name="save" onclick="bCancel=false">
            <i class="icon-ok icon-white"></i> <fmt:message key="button.save"/>
        </button>
        <c:if test="${not empty application.id}">
            <button type="submit" class="btn btn-danger" id="delete" name="delete" onclick="bCancel=true;return confirmMessage(msgDelConfirm)">
                <i class="icon-trash icon-white"></i> <fmt:message key="button.delete"/>
            </button>
        </c:if>

        <button type="submit" class="btn btn-default" id="cancel" name="cancel" onclick="bCancel=true">
            <i class="icon-remove"></i> <fmt:message key="button.cancel"/>
        </button>
    </div>
</form:form>
</div>

</div>

<v:javascript formName="application" cdata="false" dynamicJavascript="true" staticJavascript="false"/>
<script type="text/javascript" src="<c:url value='/scripts/validator.jsp'/>"></script>

<script type="text/javascript">
    $(document).ready(function() {
        $("input[type='text']:visible:enabled:first", document.forms['applicationForm']).focus();
    });
</script>
