package com.gazFood.entity;

import javax.persistence.*;

@Entity
@Table(name = "cassa")
public class Cassa {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "cassaName")
    private String cassaName;

    @Column(name = "prefix")
    private String prefix;

    @Column(name = "ammy")
    private String ammy;

    @Column(name ="computerName")
    private String computerName;

    @Column(name = "cassaAdres")
    private String cassaAdres;

    @Column(name = "simNumber")
    private Long simNumber;

    public Cassa() {
    }

    public Cassa(String cassaName, String prefix, String ammy, String computerName, String cassaAdres, Long simNumber) {
        this.cassaName = cassaName;
        this.prefix = prefix;
        this.ammy = ammy;
        this.computerName = computerName;
        this.cassaAdres = cassaAdres;
        this.simNumber = simNumber;
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

    public Long getSimNumber() {
        return simNumber;
    }

    public void setSimNumber(Long simNumber) {
        this.simNumber = simNumber;
    }
}
