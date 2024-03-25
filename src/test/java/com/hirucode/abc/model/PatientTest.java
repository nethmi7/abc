package com.hirucode.abc.model;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class PatientTest {

    @Test
    void testPatientIntStringStringStringStringStringString() {
        Patient patient = new Patient(1, "David Silva", "1997-02-25", "david@example.com", "Male", "david.silva", "password");
        assertEquals(1, patient.getPatientId());
        assertEquals("David Silva", patient.getName());
        assertEquals("1997-02-25", patient.getDateOfBirth());
        assertEquals("david@example.com", patient.getEmail());
        assertEquals("Male", patient.getGender());
        assertEquals("david.silva", patient.getUsername());
        assertEquals("password", patient.getPassword());
    }

    @Test
    void testPatientStringStringStringStringStringString() {
        Patient patient = new Patient("David Silva", "1997-02-25", "david@example.com", "Male", "david.silva", "password");
        assertEquals("David Silva", patient.getName());
        assertEquals("1997-02-25", patient.getDateOfBirth());
        assertEquals("david@example.com", patient.getEmail());
        assertEquals("Male", patient.getGender());
        assertEquals("david.silva", patient.getUsername());
        assertEquals("password", patient.getPassword());
    }

    @Test
    void testPatient() {
        Patient patient = new Patient();
        assertNull(patient.getName());
        assertNull(patient.getDateOfBirth());
        assertNull(patient.getEmail());
        assertNull(patient.getGender());
        assertNull(patient.getUsername());
        assertNull(patient.getPassword());
    }

    @Test
    void testGetPatientId() {
        Patient patient = new Patient();
        patient.setPatientId(1);
        assertEquals(1, patient.getPatientId());
    }

    @Test
    void testSetPatientId() {
        Patient patient = new Patient();
        patient.setPatientId(1);
        assertEquals(1, patient.getPatientId());
    }

    @Test
    void testGetName() {
        Patient patient = new Patient();
        patient.setName("David Silva");
        assertEquals("David Silva", patient.getName());
    }

    @Test
    void testSetName() {
        Patient patient = new Patient();
        patient.setName("David Silva");
        assertEquals("David Silva", patient.getName());
    }

    @Test
    void testGetDateOfBirth() {
        Patient patient = new Patient();
        patient.setDateOfBirth("1997-02-25");
        assertEquals("1997-02-25", patient.getDateOfBirth());
    }

    @Test
    void testSetDateOfBirth() {
        Patient patient = new Patient();
        patient.setDateOfBirth("1997-02-25");
        assertEquals("1997-02-25", patient.getDateOfBirth());
    }

    @Test
    void testGetGender() {
        Patient patient = new Patient();
        patient.setGender("Male");
        assertEquals("Male", patient.getGender());
    }

    @Test
    void testSetGender() {
        Patient patient = new Patient();
        patient.setGender("Male");
        assertEquals("Male", patient.getGender());
    }

    @Test
    void testGetEmail() {
        Patient patient = new Patient();
        patient.setEmail("david@example.com");
        assertEquals("david@example.com", patient.getEmail());
    }

    @Test
    void testSetEmail() {
        Patient patient = new Patient();
        patient.setEmail("david@example.com");
        assertEquals("david@example.com", patient.getEmail());
    }

    @Test
    void testGetUsername() {
        Patient patient = new Patient();
        patient.setUsername("david.silva");
        assertEquals("david.silva", patient.getUsername());
    }

    @Test
    void testSetUsername() {
        Patient patient = new Patient();
        patient.setUsername("david.silva");
        assertEquals("david.silva", patient.getUsername());
    }

    @Test
    void testGetPassword() {
        Patient patient = new Patient();
        patient.setPassword("password");
        assertEquals("password", patient.getPassword());
    }

    @Test
    void testSetPassword() {
        Patient patient = new Patient();
        patient.setPassword("password");
        assertEquals("password", patient.getPassword());
    }
}
