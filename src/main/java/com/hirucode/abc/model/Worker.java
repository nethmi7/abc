package com.hirucode.abc.model;

public class Worker {
	
	private int idWorker;
    private String name;
    private String email;
    private String address;

    // Constructors
    public Worker(int idWorker, String name, String email, String address) {
        this.idWorker = idWorker;
        this.name = name;
        this.email = email;
        this.address = address;
    }

    public Worker(String name, String email, String address) {
        this.name = name;
        this.email = email;
        this.address = address;
    }

    public Worker() {
        // Default constructor
    }

    // Getters and Setters
    public int getIdWorker() {
        return idWorker;
    }

    public void setIdWorker(int idWorker) {
        this.idWorker = idWorker;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }


}
