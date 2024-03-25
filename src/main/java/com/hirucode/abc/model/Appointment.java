package com.hirucode.abc.model;

public class Appointment {
	private int appointmentID;
    private int patientID;
    private String date;
    private String test;
    private String request;
    
    public Appointment(int appointmentID, int patientID, String date, String test, String request) {
        this.appointmentID = appointmentID;
        this.patientID = patientID;
        this.date = date;
        this.test = test;
        this.request = request;
    }
    
    public Appointment(int patientID, String date, String test, String request) {
        this.patientID = patientID;
        this.date = date;
        this.test = test;
        this.request = request;
    }

    public Appointment() {
        
    }

    public int getAppointmentID() {
        return appointmentID;
    }

    public void setAppointmentID(int appointmentID) {
        this.appointmentID = appointmentID;
    }

    public int getPatientID() {
        return patientID;
    }

    public void setPatientID(int patientID) {
        this.patientID = patientID;
    }

    public String getAppointmentDate() {
        return date;
    }

    public void setAppointmentDate(String date) {
        this.date = date;
    }

    public String getTestName() {
        return test;
    }

    public void setTestName(String test) {
        this.test = test;
    }

    public String getAppointmentRequest() {
        return request;
    }

    public void setAppointmentRequest(String request) {
        this.request = request;
    }

}
