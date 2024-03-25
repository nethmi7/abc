package com.hirucode.abc.service;

import java.sql.SQLException;
import java.util.List;

import com.hirucode.abc.dao.PatientManager;
import com.hirucode.abc.model.Patient;



public class PatientService {
	private static PatientService patientServiceObj;

    private PatientService() {

    }

    public static synchronized PatientService getPatientServiceInstance() {
        if(patientServiceObj == null) {
            patientServiceObj = new PatientService();
        }
        return patientServiceObj;
    }

    private PatientManager getPatientManager() {
        return new PatientManager();
    }

    public boolean registerPatient(Patient patient) throws ClassNotFoundException, SQLException {
        return getPatientManager().addPatient(patient);
    }

    public Patient getSpecificPatient(int patientId) throws ClassNotFoundException, SQLException {
        return getPatientManager().getSpecificPatient(patientId);
    }

    public List<Patient> getAllPatients() throws ClassNotFoundException, SQLException {
        return getPatientManager().getAllPatients();
    }

    public boolean editThePatient(Patient patient) throws ClassNotFoundException, SQLException {
        return getPatientManager().updatePatient(patient);
    }

    public boolean deleteThePatient(int patientId) throws ClassNotFoundException, SQLException {
        return getPatientManager().deletePatient(patientId);
    }
    
    public boolean validatePatientCredentials(String username, String password) throws ClassNotFoundException, SQLException {
        // Assuming you have a method in your DAO to validate credentials
        return getPatientManager().validatePatientCredentials(username, password);
    }


}
