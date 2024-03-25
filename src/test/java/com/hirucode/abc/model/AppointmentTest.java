package com.hirucode.abc.model;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class AppointmentTest {

    @Test
    void testAppointmentIntIntStringStringString() {
        Appointment appointment = new Appointment(1, 1, "2024-03-12", "Liver Function Test", "Routine checkup");
        assertEquals(1, appointment.getAppointmentID());
        assertEquals(1, appointment.getPatientID());
        assertEquals("2024-03-12", appointment.getAppointmentDate());
        assertEquals("Liver Function Test", appointment.getTestName());
        assertEquals("Routine checkup", appointment.getAppointmentRequest());
    }

    @Test
    void testAppointmentIntStringStringString() {
        Appointment appointment = new Appointment(1, "2024-03-12", "Liver Function Test", "Routine checkup");
        assertEquals(1, appointment.getPatientID());
        assertEquals("2024-03-12", appointment.getAppointmentDate());
        assertEquals("Liver Function Test", appointment.getTestName());
        assertEquals("Routine checkup", appointment.getAppointmentRequest());
    }

    @Test
    void testAppointment() {
        Appointment appointment = new Appointment();
        assertEquals(0, appointment.getAppointmentID());
        assertEquals(0, appointment.getPatientID());
        assertNull(appointment.getAppointmentDate());
        assertNull(appointment.getTestName());
        assertNull(appointment.getAppointmentRequest());
    }

    @Test
    void testGetAppointmentID() {
        Appointment appointment = new Appointment();
        appointment.setAppointmentID(1);
        assertEquals(1, appointment.getAppointmentID());
    }

    @Test
    void testSetAppointmentID() {
        Appointment appointment = new Appointment();
        appointment.setAppointmentID(1);
        assertEquals(1, appointment.getAppointmentID());
    }

    @Test
    void testGetPatientID() {
        Appointment appointment = new Appointment();
        appointment.setPatientID(1);
        assertEquals(1, appointment.getPatientID());
    }

    @Test
    void testSetPatientID() {
        Appointment appointment = new Appointment();
        appointment.setPatientID(1);
        assertEquals(1, appointment.getPatientID());
    }

    @Test
    void testGetAppointmentDate() {
        Appointment appointment = new Appointment();
        appointment.setAppointmentDate("2024-03-12");
        assertEquals("2024-03-12", appointment.getAppointmentDate());
    }

    @Test
    void testSetAppointmentDate() {
        Appointment appointment = new Appointment();
        appointment.setAppointmentDate("2024-03-12");
        assertEquals("2024-03-12", appointment.getAppointmentDate());
    }

    @Test
    void testGetTestName() {
        Appointment appointment = new Appointment();
        appointment.setTestName("Liver Function Test");
        assertEquals("Liver Function Test", appointment.getTestName());
    }

    @Test
    void testSetTestName() {
        Appointment appointment = new Appointment();
        appointment.setTestName("Liver Function Test");
        assertEquals("Liver Function Test", appointment.getTestName());
    }

    @Test
    void testGetAppointmentRequest() {
        Appointment appointment = new Appointment();
        appointment.setAppointmentRequest("Routine checkup");
        assertEquals("Routine checkup", appointment.getAppointmentRequest());
    }

    @Test
    void testSetAppointmentRequest() {
        Appointment appointment = new Appointment();
        appointment.setAppointmentRequest("Routine checkup");
        assertEquals("Routine checkup", appointment.getAppointmentRequest());
    }
}
