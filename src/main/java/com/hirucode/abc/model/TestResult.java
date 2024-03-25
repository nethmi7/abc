package com.hirucode.abc.model;

public class TestResult {
	
	private int resultID;
    private int appointmentID;
    private String result;
    private String doctorName;
    private String technicianName;
    private byte[] report;

    

    public TestResult(int resultID, int appointmentID, String result, String doctorName, String technicianName, byte[] report) {
        this.resultID = resultID;
        this.appointmentID = appointmentID;
        this.result = result;
        this.doctorName = doctorName;
        this.technicianName = technicianName;
        this.report = report;
    }
    public TestResult(int appointmentID, String result, String doctorName, String technicianName, byte[] report) {

        this.appointmentID = appointmentID;
        this.result = result;
        this.doctorName = doctorName;
        this.technicianName = technicianName;
        this.report = report;
    }
    public TestResult() {
    }

    public int getResultID() {
        return resultID;
    }

    public void setResultID(int resultID) {
        this.resultID = resultID;
    }

    public int getAppointmentID() {
        return appointmentID;
    }

    public void setAppointmentID(int appointmentID) {
        this.appointmentID = appointmentID;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    public String getDoctorName() {
        return doctorName;
    }

    public void setDoctorName(String doctorName) {
        this.doctorName = doctorName;
    }

    public String getTechnicianName() {
        return technicianName;
    }

    public void setTechnicianName(String technicianName) {
        this.technicianName = technicianName;
    }

    public byte[] getReport() {
        return report;
    }

    public void setReport(byte[] report) {
        this.report = report;
    }
	

}
