package com.hirucode.abc.service;

import java.sql.SQLException;
import java.util.List;

import com.hirucode.abc.dao.AppointmentManager;
import com.hirucode.abc.model.Appointment;


public class AppointmentService {
	
	private static AppointmentService appointmentServiceObj;

    private AppointmentService() {
        
    }
    
    public static synchronized AppointmentService getAppointmentServiceInstance() {
        
        if(appointmentServiceObj == null) {
            appointmentServiceObj = new AppointmentService();
        }
        
        return appointmentServiceObj;
    }
    
    private AppointmentManager getAppointmentManager() {
        return new AppointmentManager();
    }
    
    // services ---------------------------
    public boolean registerAppointment(Appointment appointment) throws ClassNotFoundException, SQLException {
        return getAppointmentManager().addAppointment(appointment);
    }
    
    public Appointment getSpecificAppointment(int appointmentID) throws ClassNotFoundException, SQLException {        
        return getAppointmentManager().getSpecificAppointment(appointmentID);
    }
    
    public List<Appointment> getAllAppointments() throws ClassNotFoundException, SQLException {
        return getAppointmentManager().getAllAppointments();
    }
    
    public boolean editTheAppointment(Appointment appointment) throws ClassNotFoundException, SQLException {
        return getAppointmentManager().updateAppointment(appointment);
    }
    
    public boolean deleteTheAppointment(int appointmentID) throws ClassNotFoundException, SQLException {
        return getAppointmentManager().deleteAppointment(appointmentID);
    }

}
