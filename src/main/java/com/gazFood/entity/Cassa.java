package com.gazFood.entity;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

@Entity
@Table(name = "cassa")
public class Cassa {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "cassaName")
    @Size(min=2,max=100)
    @NotBlank(message = "Название кассы не может быть пустым")
    private String cassaName;

    @Column(name = "prefix")
    @Size(min = 1, max=15)
    @NotBlank(message = "Prefix не может быть пустым")
    private String prefix;

    @Column(name = "ammy")
    @Size(min = 1, max=10)
    @NotBlank(message = "Ammy не может быть пустым")
    private String ammy;

    @Column(name ="computerName")
    @Size(min = 1, max=25)
    @NotBlank(message = "Имя компьютера не может быть пустым")
    private String computerName;

    @Column(name = "cassaAdres")
    @Size(min = 1, max=150)
    @NotBlank(message = "Адрес не может быть пустым")
    private String cassaAdres;

    @Column(name = "simNumber")
    @Size(min = 1, max=50)
    @NotBlank(message = "Поле не может быть пустым")
    private String simNumber;

    @Column(name = "planUpdate")
    @Size(min = 1, max = 10)
    @NotBlank(message = "Поле не может быть пустым")
    private String planUpdate;

    @Column(name = "anyDesk")
    @Size(min = 1, max = 9)
    @NotBlank(message = "Поле не может быть пустым")
    private String anyDesk;

    @Column(name = "fnDeadLineData")
    @Size(min = 1, max =10 )
    @NotBlank(message = "Поле не может быть пустым")
    private String fnDeadLineData;

    @Column(name = "kpp")
    @Size(min = 1, max = 9)
    @NotBlank(message = "Поле не может быть пустым")
    private String kpp;

    @Column(name = "rnkkt")
    @Size(min = 1, max = 19)
    @NotBlank(message = "Поле не может быть пустым")
    private String rnkkt;

    @Column(name = "fnNumber")
    @Size(min = 1, max = 16)
    @NotBlank(message = "Поле не может быть пустым")
    private String fnNumber;

    @Column(name = "mob_number")
    @Size(max = 10)
    private String mobileNumber;

    @Column(name = "icc_number")
    @Size(max = 20)
    private String iccNumber;

    @Column(name = "phone_number")
    @Size(max = 50)
    private String phoneNumber;


    public Cassa() {
    }

    public Cassa(String cassaName, String prefix, String ammy, String computerName, String cassaAdres, String simNumber, String planUpdate, String anyDesk, String fnDeadLineData, String kpp, String rnkkt, String fnNumber, String mobileNumber, String iccNumber, String phoneNumber) {
        this.cassaName = cassaName;
        this.prefix = prefix;
        this.ammy = ammy;
        this.computerName = computerName;
        this.cassaAdres = cassaAdres;
        this.simNumber = simNumber;
        this.planUpdate = planUpdate;
        this.anyDesk = anyDesk;
        this.fnDeadLineData = fnDeadLineData;
        this.kpp = kpp;
        this.rnkkt = rnkkt;
        this.fnNumber = fnNumber;
        this.mobileNumber = mobileNumber;
        this.iccNumber = iccNumber;
        this.phoneNumber = phoneNumber;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getMobileNumber() {
        return mobileNumber;
    }

    public void setMobileNumber(String mobileNumber) {
        this.mobileNumber = mobileNumber;
    }

    public String getIccNumber() {
        return iccNumber;
    }

    public void setIccNumber(String iccNumber) {
        this.iccNumber = iccNumber;
    }

    public String getAnyDesk() {
        return anyDesk;
    }

    public void setAnyDesk(String anyDesk) {
        this.anyDesk = anyDesk;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCassaName() {
        return cassaName;
    }

    public void setCassaName(String cassaName) {
        this.cassaName = cassaName;
    }

    public String getPrefix() {
        return prefix;
    }

    public void setPrefix(String prefix) {
        this.prefix = prefix;
    }

    public String getAmmy() {
        return ammy;
    }

    public void setAmmy(String ammy) {
        this.ammy = ammy;
    }

    public String getComputerName() {
        return computerName;
    }

    public void setComputerName(String computerName) {
        this.computerName = computerName;
    }

    public String getCassaAdres() {
        return cassaAdres;
    }

    public void setCassaAdres(String cassaAdres) {
        this.cassaAdres = cassaAdres;
    }

    public String getSimNumber() {
        return simNumber;
    }

    public void setSimNumber(String simNumber) {
        this.simNumber = simNumber;
    }

    public String getPlanUpdate() {
        return planUpdate;
    }

    public void setPlanUpdate(String planUpdate) {
        this.planUpdate = planUpdate;
    }

    public String getFnDeadLineData() {
        return fnDeadLineData;
    }

    public void setFnDeadLineData(String fnDeadLineData) {
        this.fnDeadLineData = fnDeadLineData;
    }

    public String getKpp() {
        return kpp;
    }

    public void setKpp(String kpp) {
        this.kpp = kpp;
    }

    public String getRnkkt() {
        return rnkkt;
    }

    public void setRnkkt(String rnkkt) {
        this.rnkkt = rnkkt;
    }

    public String getFnNumber() {
        return fnNumber;
    }

    public void setFnNumber(String fnNumber) {
        this.fnNumber = fnNumber;
    }
}
