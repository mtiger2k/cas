package com.yygo.model;

import org.hibernate.search.annotations.Indexed;

import javax.persistence.*;
import java.sql.Date;

/**
 * Created by tiansha on 2015/6/6.
 */
@Entity
@Table(name = "application")
@Indexed
public class Application {

    private long id;

    private String applNo;

    private String name;
    private String gender;
    private String idType;
    private String idNo;
    private Date birthday;
    private String maritalStatus;
    private String address;
    private String propertyType;
    private String workCompany;
    private String companyAddress;
    private String companyNature;
    private String companyType;
    private String companyYears;
    private String workPosition;
    private float annualIncome;
    private String homeTelNo;
    private String workTelNo;
    private String mobileNo;
    private String email;

    private boolean coLoaned = false;
    private String coName;
    private String coGender;
    private String coIdType;
    private String coIdNo;
    private Date coBirthday;
    private String coAddress;
    private String coPropertyType;
    private String coWorkCompany;
    private String coCompanyAddress;
    private String coCompanyType;
    private String coCompanyNature;
    private String coCompanyYears;
    private String coWorkPosition;
    private String coHomeTelNo;
    private String coWorkTelNo;
    private String coMobileNo;
    private String coEmail;

    private boolean guaranted = false;
    private String dbName;
    private String dbGender;
    private String dbIdType;
    private String dbIdNo;
    private Date dbBirthday;
    private String dbAddress;
    private String dbPropertyType;
    private String dbWorkCompany;
    private String dbCompanyAddress;
    private String dbCompanyType;
    private String dbCompanyNature;
    private String dbCompanyYears;
    private String dbWorkPosition;
    private String dbHomeTelNo;
    private String dbWorkTelNo;
    private String dbMobileNo;
    private String dbEmail;

    private String urgentContactName1;
    private String urgentContactTelNo1;
    private String urgentContactRelation1;
    private String urgentContactName2;
    private String urgentContactTelNo2;
    private String urgentContactRelation2;
    private String urgentContactName3;
    private String urgentContactTelNo3;
    private String urgentContactRelation3;

    private String mailType;

    private String vehicleModel;
    private float ManufacturerPrice;
    private float price;
    private String loanType;
    private int loanYears;
    private float loanRate;
    private float downPaymentRate;
    private float downPaymentAmount;
    private float monthPaymentAmount;

    private String applicationStatus;

    public Application() {

    }

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    public Long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    @Column(name = "application_no", nullable = false)
    public String getApplNo() {
        return applNo;
    }

    public void setApplNo(String applNo) {
        this.applNo = applNo;
    }

    @Column(name = "name", nullable = false)
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Column(name = "gender", nullable = false)
    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    @Column(name = "id_type", nullable = false)
    public String getIdType() {
        return idType;
    }

    public void setIdType(String idType) {
        this.idType = idType;
    }

    @Column(name = "id_no", nullable = false)
    public String getIdNo() {
        return idNo;
    }

    public void setIdNo(String idNo) {
        this.idNo = idNo;
    }

    @Column(name = "birthday", nullable = false)
    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    @Column(name = "marital_status", nullable = false)
    public String getMaritalStatus() {
        return maritalStatus;
    }

    public void setMaritalStatus(String maritalStatus) {
        this.maritalStatus = maritalStatus;
    }

    @Column(name = "address", nullable = false)
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Column(name = "property_type", nullable = false)
    public String getPropertyType() {
        return propertyType;
    }

    public void setPropertyType(String propertyType) {
        this.propertyType = propertyType;
    }

    @Column(name = "work_company", nullable = false)
    public String getWorkCompany() {
        return workCompany;
    }

    public void setWorkCompany(String workCompany) {
        this.workCompany = workCompany;
    }

    @Column(name = "work_address", nullable = false)
    public String getCompanyAddress() {
        return companyAddress;
    }

    public void setCompanyAddress(String companyAddress) {
        this.companyAddress = companyAddress;
    }

    @Column(name = "company_nature", nullable = false)
    public String getCompanyNature() {
        return companyNature;
    }

    public void setCompanyNature(String companyNature) {
        this.companyNature = companyNature;
    }

    @Column(name = "company_type", nullable = false)
    public String getCompanyType() {
        return companyType;
    }

    public void setCompanyType(String companyType) {
        this.companyType = companyType;
    }

    @Column(name = "company_years", nullable = false)
    public String getCompanyYears() {
        return companyYears;
    }

    public void setCompanyYears(String companyYears) {
        this.companyYears = companyYears;
    }

    @Column(name = "work_position", nullable = false)
    public String getWorkPosition() {
        return workPosition;
    }

    public void setWorkPosition(String workPosition) {
        this.workPosition = workPosition;
    }

    @Column(name = "annual_income", nullable = false)
    public float getAnnualIncome() {
        return annualIncome;
    }

    public void setAnnualIncome(float annualIncome) {
        this.annualIncome = annualIncome;
    }

    @Column(name = "home_tel_no")
    public String getHomeTelNo() {
        return homeTelNo;
    }

    public void setHomeTelNo(String homeTelNo) {
        this.homeTelNo = homeTelNo;
    }

    @Column(name = "work_tel_no")
    public String getWorkTelNo() {
        return workTelNo;
    }

    public void setWorkTelNo(String workTelNo) {
        this.workTelNo = workTelNo;
    }

    @Column(name = "mobile_no", nullable = false)
    public String getMobileNo() {
        return mobileNo;
    }

    public void setMobileNo(String mobileNo) {
        this.mobileNo = mobileNo;
    }

    @Column(name = "email")
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Column(name = "co_name")
    public String getCoName() {
        return coName;
    }

    public void setCoName(String coName) {
        this.coName = coName;
    }

    @Column(name = "co_gender")
    public String getCoGender() {
        return coGender;
    }

    public void setCoGender(String coGender) {
        this.coGender = coGender;
    }

    @Column(name = "co_id_type")
    public String getCoIdType() {
        return coIdType;
    }

    public void setCoIdType(String coIdType) {
        this.coIdType = coIdType;
    }

    @Column(name = "co_id_no")
    public String getCoIdNo() {
        return coIdNo;
    }

    public void setCoIdNo(String coIdNo) {
        this.coIdNo = coIdNo;
    }

    @Column(name = "co_birthday")
    public Date getCoBirthday() {
        return coBirthday;
    }

    public void setCoBirthday(Date coBirthday) {
        this.coBirthday = coBirthday;
    }

    @Column(name = "co_address")
    public String getCoAddress() {
        return coAddress;
    }

    public void setCoAddress(String coAddress) {
        this.coAddress = coAddress;
    }

    @Column(name = "co_property_type")
    public String getCoPropertyType() {
        return coPropertyType;
    }

    public void setCoPropertyType(String coPropertyType) {
        this.coPropertyType = coPropertyType;
    }

    @Column(name = "co_work_company")
    public String getCoWorkCompany() {
        return coWorkCompany;
    }

    public void setCoWorkCompany(String coWorkCompany) {
        this.coWorkCompany = coWorkCompany;
    }

    @Column(name = "co_company_type", nullable = false)
    public String getCoCompanyType() {
        return coCompanyType;
    }

    public void setCoCompanyType(String coCompanyType) {
        this.coCompanyType = coCompanyType;
    }

    @Column(name = "co_company_nature")
    public String getCoCompanyNature() {
        return coCompanyNature;
    }

    public void setCoCompanyNature(String coCompanyNature) {
        this.coCompanyNature = coCompanyNature;
    }

    @Column(name = "co_company_years")
    public String getCoCompanyYears() {
        return coCompanyYears;
    }

    public void setCoCompanyYears(String coCompanyYears) {
        this.coCompanyYears = coCompanyYears;
    }

    @Column(name = "co_work_position")
    public String getCoWorkPosition() {
        return coWorkPosition;
    }

    public void setCoWorkPosition(String coWorkPosition) {
        this.coWorkPosition = coWorkPosition;
    }

    @Column(name = "co_home_tel_no")
    public String getCoHomeTelNo() {
        return coHomeTelNo;
    }

    public void setCoHomeTelNo(String coHomeTelNo) {
        this.coHomeTelNo = coHomeTelNo;
    }

    @Column(name = "co_work_tel_no")
    public String getCoWorkTelNo() {
        return coWorkTelNo;
    }

    public void setCoWorkTelNo(String coWorkTelNo) {
        this.coWorkTelNo = coWorkTelNo;
    }

    @Column(name = "co_mobile_no")
    public String getCoMobileNo() {
        return coMobileNo;
    }

    public void setCoMobileNo(String coMobileNo) {
        this.coMobileNo = coMobileNo;
    }

    @Column(name = "co_email")
    public String getCoEmail() {
        return coEmail;
    }

    public void setCoEmail(String coEmail) {
        this.coEmail = coEmail;
    }

    @Column(name = "db_name")
    public String getDbName() {
        return dbName;
    }

    public void setDbName(String dbName) {
        this.dbName = dbName;
    }

    @Column(name = "db_gender")
    public String getDbGender() {
        return dbGender;
    }

    public void setDbGender(String dbGender) {
        this.dbGender = dbGender;
    }

    @Column(name = "db_id_type")
    public String getDbIdType() {
        return dbIdType;
    }

    public void setDbIdType(String dbIdType) {
        this.dbIdType = dbIdType;
    }

    @Column(name = "db_id_no")
    public String getDbIdNo() {
        return dbIdNo;
    }

    public void setDbIdNo(String dbIdNo) {
        this.dbIdNo = dbIdNo;
    }

    @Column(name = "db_birthday")
    public Date getDbBirthday() {
        return dbBirthday;
    }

    public void setDbBirthday(Date dbBirthday) {
        this.dbBirthday = dbBirthday;
    }

    @Column(name = "db_address")
    public String getDbAddress() {
        return dbAddress;
    }

    public void setDbAddress(String dbAddress) {
        this.dbAddress = dbAddress;
    }

    @Column(name = "db_property_type")
    public String getDbPropertyType() {
        return dbPropertyType;
    }

    public void setDbPropertyType(String dbPropertyType) {
        this.dbPropertyType = dbPropertyType;
    }

    @Column(name = "db_work_company")
    public String getDbWorkCompany() {
        return dbWorkCompany;
    }

    public void setDbWorkCompany(String dbWorkCompany) {
        this.dbWorkCompany = dbWorkCompany;
    }

    @Column(name = "db_company_type", nullable = false)
    public String getDbCompanyType() {
        return dbCompanyType;
    }

    public void setDbCompanyType(String dbCompanyType) {
        this.dbCompanyType = dbCompanyType;
    }

    @Column(name = "db_company_nature")
    public String getDbCompanyNature() {
        return dbCompanyNature;
    }

    public void setDbCompanyNature(String dbCompanyNature) {
        this.dbCompanyNature = dbCompanyNature;
    }

    @Column(name = "db_company_years")
    public String getDbCompanyYears() {
        return dbCompanyYears;
    }

    public void setDbCompanyYears(String dbCompanyYears) {
        this.dbCompanyYears = dbCompanyYears;
    }

    @Column(name = "db_work_position")
    public String getDbWorkPosition() {
        return dbWorkPosition;
    }

    public void setDbWorkPosition(String dbWorkPosition) {
        this.dbWorkPosition = dbWorkPosition;
    }

    @Column(name = "db_home_tel_no")
    public String getDbHomeTelNo() {
        return dbHomeTelNo;
    }

    public void setDbHomeTelNo(String dbHomeTelNo) {
        this.dbHomeTelNo = dbHomeTelNo;
    }

    @Column(name = "db_work_tel_no")
    public String getDbWorkTelNo() {
        return dbWorkTelNo;
    }

    public void setDbWorkTelNo(String dbWorkTelNo) {
        this.dbWorkTelNo = dbWorkTelNo;
    }

    @Column(name = "db_mobile_no")
    public String getDbMobileNo() {
        return dbMobileNo;
    }

    public void setDbMobileNo(String dbMobileNo) {
        this.dbMobileNo = dbMobileNo;
    }

    @Column(name = "db_email")
    public String getDbEmail() {
        return dbEmail;
    }

    public void setDbEmail(String dbEmail) {
        this.dbEmail = dbEmail;
    }

    @Column(name = "urgent_contact_name", nullable = false)
    public String getUrgentContactName1() {
        return urgentContactName1;
    }

    public void setUrgentContactName1(String urgentContactName1) {
        this.urgentContactName1 = urgentContactName1;
    }

    @Column(name = "urgent_contact_no", nullable = false)
    public String getUrgentContactTelNo1() {
        return urgentContactTelNo1;
    }

    public void setUrgentContactTelNo1(String urgentContactTelNo1) {
        this.urgentContactTelNo1 = urgentContactTelNo1;
    }

    @Column(name = "urgent_contact_relation", nullable = false)
    public String getUrgentContactRelation1() {
        return urgentContactRelation1;
    }

    public void setUrgentContactRelation1(String urgentContactRelation1) {
        this.urgentContactRelation1 = urgentContactRelation1;
    }

    @Column(name = "urgent_contact_name2")
    public String getUrgentContactName2() {
        return urgentContactName2;
    }

    public void setUrgentContactName2(String urgentContactName2) {
        this.urgentContactName2 = urgentContactName2;
    }

    @Column(name = "urgent_contact_tel_no2")
    public String getUrgentContactTelNo2() {
        return urgentContactTelNo2;
    }

    public void setUrgentContactTelNo2(String urgentContactTelNo2) {
        this.urgentContactTelNo2 = urgentContactTelNo2;
    }

    @Column(name = "urgent_contact_relation2")
    public String getUrgentContactRelation2() {
        return urgentContactRelation2;
    }

    public void setUrgentContactRelation2(String urgentContactRelation2) {
        this.urgentContactRelation2 = urgentContactRelation2;
    }

    @Column(name = "urgent_contact_name3")
    public String getUrgentContactName3() {
        return urgentContactName3;
    }

    public void setUrgentContactName3(String urgentContactName3) {
        this.urgentContactName3 = urgentContactName3;
    }

    @Column(name = "urgent_contact_tel_no3")
    public String getUrgentContactTelNo3() {
        return urgentContactTelNo3;
    }

    public void setUrgentContactTelNo3(String urgentContactTelNo3) {
        this.urgentContactTelNo3 = urgentContactTelNo3;
    }

    @Column(name = "urgent_contact_relation3")
    public String getUrgentContactRelation3() {
        return urgentContactRelation3;
    }

    public void setUrgentContactRelation3(String urgentContactRelation3) {
        this.urgentContactRelation3 = urgentContactRelation3;
    }

    @Column(name = "mail_type", nullable = false)
    public String getMailType() {
        return mailType;
    }

    public void setMailType(String mailType) {
        this.mailType = mailType;
    }

    @Column(name = "vehicle_model", nullable = false)
    public String getVehicleModel() {
        return vehicleModel;
    }

    public void setVehicleModel(String vehicleModel) {
        this.vehicleModel = vehicleModel;
    }

    @Column(name = "manufacturer_price", nullable = false)
    public float getManufacturerPrice() {
        return ManufacturerPrice;
    }

    public void setManufacturerPrice(float manufacturerPrice) {
        ManufacturerPrice = manufacturerPrice;
    }

    @Column(name = "price", nullable = false)
    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    @Column(name = "load_type", nullable = false)
    public String getLoanType() {
        return loanType;
    }

    public void setLoanType(String loanType) {
        this.loanType = loanType;
    }

    @Column(name = "loan_years", nullable = false)
    public int getLoanYears() {
        return loanYears;
    }

    public void setLoanYears(int loanYears) {
        this.loanYears = loanYears;
    }

    @Column(name = "loan_reate")
    public float getLoanRate() {
        return loanRate;
    }

    public void setLoanRate(float loanRate) {
        this.loanRate = loanRate;
    }

    @Column(name = "down_payment_rate", nullable = false)
    public float getDownPaymentRate() {
        return downPaymentRate;
    }

    public void setDownPaymentRate(float downPaymentRate) {
        this.downPaymentRate = downPaymentRate;
    }

    @Column(name = "down_payment_amount", nullable = false)
    public float getDownPaymentAmount() {
        return downPaymentAmount;
    }

    public void setDownPaymentAmount(float downPaymentAmount) {
        this.downPaymentAmount = downPaymentAmount;
    }

    @Column(name = "month_payment_amount")
    public float getMonthPaymentAmount() {
        return monthPaymentAmount;
    }

    public void setMonthPaymentAmount(float monthPaymentAmount) {
        this.monthPaymentAmount = monthPaymentAmount;
    }

    @Column(name = "application_status")
    public String getApplicationStatus() {
        return applicationStatus;
    }

    public void setApplicationStatus(String applicationStatus) {
        this.applicationStatus = applicationStatus;
    }

    @Column(name = "co_company_address")
    public String getCoCompanyAddress() {
        return coCompanyAddress;
    }

    public void setCoCompanyAddress(String coCompanyAddress) {
        this.coCompanyAddress = coCompanyAddress;
    }

    @Column(name = "db_company_address")
    public String getDbCompanyAddress() {
        return dbCompanyAddress;
    }

    public void setDbCompanyAddress(String dbCompanyAddress) {
        this.dbCompanyAddress = dbCompanyAddress;
    }

    @Column(name = "co_loaned")
    public boolean isCoLoaned() {
        return coLoaned;
    }

    public void setCoLoaned(boolean coLoaned) {
        this.coLoaned = coLoaned;
    }

    @Column(name = "guaranted")
    public boolean isGuaranted() {
        return guaranted;
    }

    public void setGuaranted(boolean guaranted) {
        this.guaranted = guaranted;
    }
}
