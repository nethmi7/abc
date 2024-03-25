package com.hirucode.abc.model;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class TestResultTest {

    @Test
    void testTestResultIntIntStringStringStringByteArray() {
        byte[] report = {1, 0, 1, 0}; // Example byte array
        TestResult testResult = new TestResult(1, 1, "Positive", "Dr. David", "Perera", report);
        assertEquals(1, testResult.getResultID());
        assertEquals(1, testResult.getAppointmentID());
        assertEquals("Positive", testResult.getResult());
        assertEquals("Dr. David", testResult.getDoctorName());
        assertEquals("Perera", testResult.getTechnicianName());
        assertArrayEquals(report, testResult.getReport());
    }

    @Test
    void testTestResultIntStringStringStringByteArray() {
        byte[] report = {0, 1, 0, 1}; // Example byte array
        TestResult testResult = new TestResult(1, "Negative", "Dr. Johnson", "Perera", report);
        assertEquals(1, testResult.getAppointmentID());
        assertEquals("Negative", testResult.getResult());
        assertEquals("Dr. Johnson", testResult.getDoctorName());
        assertEquals("Perera", testResult.getTechnicianName());
        assertArrayEquals(report, testResult.getReport());
    }

    @Test
    void testTestResult() {
        TestResult testResult = new TestResult();
        assertEquals(0, testResult.getResultID());
        assertEquals(0, testResult.getAppointmentID());
        assertNull(testResult.getResult());
        assertNull(testResult.getDoctorName());
        assertNull(testResult.getTechnicianName());
        assertNull(testResult.getReport());
    }

    @Test
    void testGetResultID() {
        TestResult testResult = new TestResult();
        testResult.setResultID(1);
        assertEquals(1, testResult.getResultID());
    }

    @Test
    void testSetResultID() {
        TestResult testResult = new TestResult();
        testResult.setResultID(1);
        assertEquals(1, testResult.getResultID());
    }

    @Test
    void testGetAppointmentID() {
        TestResult testResult = new TestResult();
        testResult.setAppointmentID(1);
        assertEquals(1, testResult.getAppointmentID());
    }

    @Test
    void testSetAppointmentID() {
        TestResult testResult = new TestResult();
        testResult.setAppointmentID(1);
        assertEquals(1, testResult.getAppointmentID());
    }

    @Test
    void testGetResult() {
        TestResult testResult = new TestResult();
        testResult.setResult("Positive");
        assertEquals("Positive", testResult.getResult());
    }

    @Test
    void testSetResult() {
        TestResult testResult = new TestResult();
        testResult.setResult("Positive");
        assertEquals("Positive", testResult.getResult());
    }

    @Test
    void testGetDoctorName() {
        TestResult testResult = new TestResult();
        testResult.setDoctorName("Dr. David");
        assertEquals("Dr. David", testResult.getDoctorName());
    }

    @Test
    void testSetDoctorName() {
        TestResult testResult = new TestResult();
        testResult.setDoctorName("Dr. David");
        assertEquals("Dr. David", testResult.getDoctorName());
    }

    @Test
    void testGetTechnicianName() {
        TestResult testResult = new TestResult();
        testResult.setTechnicianName("Perera");
        assertEquals("Perera", testResult.getTechnicianName());
    }

    @Test
    void testSetTechnicianName() {
        TestResult testResult = new TestResult();
        testResult.setTechnicianName("Perera");
        assertEquals("Perera", testResult.getTechnicianName());
    }

    @Test
    void testGetReport() {
        byte[] report = {1, 0, 1, 0}; // Example byte array
        TestResult testResult = new TestResult();
        testResult.setReport(report);
        assertArrayEquals(report, testResult.getReport());
    }

    @Test
    void testSetReport() {
        byte[] report = {1, 0, 1, 0}; // Example byte array
        TestResult testResult = new TestResult();
        testResult.setReport(report);
        assertArrayEquals(report, testResult.getReport());
    }
}
