<%@ include file="/common/taglibs.jsp"%>

<head>
    <title><fmt:message key="applicationList.title"/></title>
    <meta name="menu" content="ApplicationMenu"/>
</head>

<c:if test="{'$'}{not empty searchError}">
    <div class="alert alert-danger alert-dismissable">
        <a href="#" data-dismiss="alert" class="close">&times;</a>
        <c:out value="{'$'}{searchError}"/>
    </div>
</c:if>

<h2><fmt:message key="applicationList.heading"/></h2>

<p><fmt:message key="applicationList.message"/></p>

<div id="actions" class="btn-group">
    <a href='<c:url value="/applicationform"/>' class="btn btn-primary">
        <i class="icon-plus icon-white"></i> <fmt:message key="button.add"/></a>
    <a href='<c:url value="/home"/>' class="btn btn-default"><i class="icon-ok"></i> <fmt:message key="button.done"/></a>
</div>

<display:table name="applicationList" class="table table-condensed table-striped table-hover" requestURI="" id="applicationList" export="true" pagesize="25">
    <display:column property="applNo" sortable="true" href="applicationform" media="html"
        paramId="id" paramProperty="id" titleKey="application.applNo"/>
    <display:column property="name" sortable="true" titleKey="application.name"/>
    <display:column sortable="true" titleKey="application.idType">
        <fmt:message key="${applicationList.idType}"/>
    </display:column>
    <display:column property="idNo" sortable="true" titleKey="application.idNo"/>
    <display:column sortable="true" titleKey="application.applicationStatus">
        <fmt:message key="${applicationList.applicationStatus}"/>
    </display:column>
    <display:column property="vehicleModel" sortable="true" titleKey="application.vehicleModel"/>
    <display:column property="manufacturerPrice" sortable="true" titleKey="application.manufacturerPrice"/>
    <display:column property="price" sortable="true" titleKey="application.price"/>
    <display:column sortable="true" titleKey="application.loanType">
        <fmt:message key="${applicationList.loanType}"/>
    </display:column>
    <display:column property="loanYears" sortable="true" titleKey="application.loanYears"/>
    <display:column property="loanRate" sortable="true" titleKey="application.loanRate"/>
    <display:column property="downPaymentAmount" sortable="true" titleKey="application.downPaymentAmount"/>
    <display:column property="downPaymentRate" sortable="true" titleKey="application.downPaymentRate"/>

    <display:setProperty name="paging.banner.item_name"><fmt:message key="applicationList.application"/></display:setProperty>
    <display:setProperty name="paging.banner.items_name"><fmt:message key="applicationList.applications"/></display:setProperty>

    <display:setProperty name="export.excel.filename"><fmt:message key="applicationList.title"/>.xls</display:setProperty>
    <display:setProperty name="export.csv.filename"><fmt:message key="applicationList.title"/>.csv</display:setProperty>
    <display:setProperty name="export.pdf.filename"><fmt:message key="applicationList.title"/>.pdf</display:setProperty>
</display:table>
