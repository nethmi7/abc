package com.hirucode.abc.model;

public class Payment {
	
	private int idPayment;
    private int patientID;
    private double amount;
    private String date;
    private int cardNo;
    private int cvc;
    
    
    
    public Payment(int idPayment, int patientID, double amount, String date, int cardNo,  int cvc) {
        this.idPayment = idPayment;
        this.patientID = patientID;
        this.amount = amount;
        this.date = date;
        this.cardNo = cardNo;
        this.cvc = cvc;
    }
    public Payment(int patientID, double amount, String date, int cardNo,  int cvc) {
    	
        this.patientID = patientID;
        this.amount = amount;
        this.date = date;
        this.cardNo = cardNo;
        this.cvc = cvc;
    }
    public Payment() {
        
    }

    public int getIdPayment() {
        return idPayment;
    }

    public void setIdPayment(int idPayment) {
        this.idPayment = idPayment;
    }

    public int getPatientID() {
        return patientID;
    }

    public void setPatientID(int patientID) {
        this.patientID = patientID;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public String getPaymentDate() {
        return date;
    }

    public void setPaymentDate(String date) {
        this.date = date;
    }

    

    public int getCardNo() {
        return cardNo;
    }

    public void setCardNo(int cardNo) {
        this.cardNo = cardNo;
    }

   

    public int getCvcNo() {
        return cvc;
    }

    public void setCvcNo(int cvc) {
        this.cvc = cvc;
    }


}
