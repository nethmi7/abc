package com.hirucode.abc.model;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class PaymentTest {

    @Test
    void testPaymentIntIntDoubleStringIntInt() {
        Payment payment = new Payment(1, 2, 5000.00, "2024-03-17", 459725015, 123);
        assertEquals(1, payment.getIdPayment());
        assertEquals(2, payment.getPatientID());
        assertEquals(5000.00, payment.getAmount());
        assertEquals("2024-03-17", payment.getPaymentDate());
        assertEquals(459725015, payment.getCardNo());
        assertEquals(123, payment.getCvcNo());
    }

    @Test
    void testPaymentIntDoubleStringIntInt() {
        Payment payment = new Payment(2, 5000.00, "2024-03-17", 459725015, 123);
        assertEquals(2, payment.getPatientID());
        assertEquals(5000.00, payment.getAmount());
        assertEquals("2024-03-17", payment.getPaymentDate());
        assertEquals(459725015, payment.getCardNo());
        assertEquals(123, payment.getCvcNo());
    }

    @Test
    void testPayment() {
        Payment payment = new Payment();
        assertEquals(0, payment.getIdPayment());
        assertEquals(0, payment.getPatientID());
        assertEquals(0.0, payment.getAmount());
        assertNull(payment.getPaymentDate());
        assertEquals(0, payment.getCardNo());
        assertEquals(0, payment.getCvcNo());
    }

    @Test
    void testGetIdPayment() {
        Payment payment = new Payment();
        payment.setIdPayment(1);
        assertEquals(1, payment.getIdPayment());
    }

    @Test
    void testSetIdPayment() {
        Payment payment = new Payment();
        payment.setIdPayment(1);
        assertEquals(1, payment.getIdPayment());
    }

    @Test
    void testGetPatientID() {
        Payment payment = new Payment();
        payment.setPatientID(2);
        assertEquals(2, payment.getPatientID());
    }

    @Test
    void testSetPatientID() {
        Payment payment = new Payment();
        payment.setPatientID(2);
        assertEquals(2, payment.getPatientID());
    }

    @Test
    void testGetAmount() {
        Payment payment = new Payment();
        payment.setAmount(5000.00);
        assertEquals(5000.00, payment.getAmount());
    }

    @Test
    void testSetAmount() {
        Payment payment = new Payment();
        payment.setAmount(5000.00);
        assertEquals(5000.00, payment.getAmount());
    }

    @Test
    void testGetPaymentDate() {
        Payment payment = new Payment();
        payment.setPaymentDate("2024-03-17");
        assertEquals("2024-03-17", payment.getPaymentDate());
    }

    @Test
    void testSetPaymentDate() {
        Payment payment = new Payment();
        payment.setPaymentDate("2024-03-17");
        assertEquals("2024-03-17", payment.getPaymentDate());
    }

    @Test
    void testGetCardNo() {
        Payment payment = new Payment();
        payment.setCardNo(459725015);
        assertEquals(459725015, payment.getCardNo());
    }

    @Test
    void testSetCardNo() {
        Payment payment = new Payment();
        payment.setCardNo(459725015);
        assertEquals(459725015, payment.getCardNo());
    }

    @Test
    void testGetCvcNo() {
        Payment payment = new Payment();
        payment.setCvcNo(123);
        assertEquals(123, payment.getCvcNo());
    }

    @Test
    void testSetCvcNo() {
        Payment payment = new Payment();
        payment.setCvcNo(123);
        assertEquals(123, payment.getCvcNo());
    }
}
