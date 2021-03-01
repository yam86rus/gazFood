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
    @Size(min = 1, max=10)
    @NotBlank(message = "Поле не может быть пустым")
    private String simNumber;

    public Cassa() {
    }

    public Cassa(String cassaName, String prefix, String ammy, String computerName, String cassaAdres, String simNumber) {
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

    public String getSimNumber() {
        return simNumber;
    }

    public void setSimNumber(String simNumber) {
        this.simNumber = simNumber;
    }
}
