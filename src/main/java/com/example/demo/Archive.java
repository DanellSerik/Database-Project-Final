package com.example.demo;

import java.sql.Date;

public class Archive {
    private String archiveId;
    private History archiveHistory;

    //Constructor
    public Archive(String archiveId, History archiveHistory) {
        this.archiveId = archiveId;
        this.archiveHistory = archiveHistory;
    }

    //Getters and Setters
    public String getArchiveId() {return archiveId;}

    public void setArchiveId(String archiveId) {this.archiveId = archiveId;}

    public History getArchiveHistory() {return archiveHistory;}

    public void setArchiveHistory(History archiveHistory) {this.archiveHistory = archiveHistory;}
}
