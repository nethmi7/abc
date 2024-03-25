package com.hirucode.abc.model;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class WorkerTest {

    @Test
    void testWorkerIntStringStringString() {
        Worker worker = new Worker(1, "Trisha Miller", "trisha@example.com", "437 Main St");
        assertEquals(1, worker.getIdWorker());
        assertEquals("Trisha Miller", worker.getName());
        assertEquals("trisha@example.com", worker.getEmail());
        assertEquals("437 Main St", worker.getAddress());
    }

    @Test
    void testWorkerStringStringString() {
        Worker worker = new Worker("Trisha Miller", "trisha@example.com", "437 Main St");
        assertEquals("Trisha Miller", worker.getName());
        assertEquals("trisha@example.com", worker.getEmail());
        assertEquals("437 Main St", worker.getAddress());
    }

    @Test
    void testWorker() {
        Worker worker = new Worker();
        assertEquals(0, worker.getIdWorker());
        assertNull(worker.getName());
        assertNull(worker.getEmail());
        assertNull(worker.getAddress());
    }

    @Test
    void testGetIdWorker() {
        Worker worker = new Worker();
        worker.setIdWorker(1);
        assertEquals(1, worker.getIdWorker());
    }

    @Test
    void testSetIdWorker() {
        Worker worker = new Worker();
        worker.setIdWorker(1);
        assertEquals(1, worker.getIdWorker());
    }

    @Test
    void testGetName() {
        Worker worker = new Worker();
        worker.setName("Trisha Miller");
        assertEquals("Trisha Miller", worker.getName());
    }

    @Test
    void testSetName() {
        Worker worker = new Worker();
        worker.setName("Trisha Miller");
        assertEquals("Trisha Miller", worker.getName());
    }

    @Test
    void testGetEmail() {
        Worker worker = new Worker();
        worker.setEmail("trisha@example.com");
        assertEquals("trisha@example.com", worker.getEmail());
    }

    @Test
    void testSetEmail() {
        Worker worker = new Worker();
        worker.setEmail("trisha@example.com");
        assertEquals("trisha@example.com", worker.getEmail());
    }

    @Test
    void testGetAddress() {
        Worker worker = new Worker();
        worker.setAddress("437 Main St");
        assertEquals("437 Main St", worker.getAddress());
    }

    @Test
    void testSetAddress() {
        Worker worker = new Worker();
        worker.setAddress("437 Main St");
        assertEquals("437 Main St", worker.getAddress());
    }
}
