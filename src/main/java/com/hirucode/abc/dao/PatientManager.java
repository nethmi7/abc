package com.hirucode.abc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.hirucode.abc.model.Patient;


public class PatientManager {
	
	public DbConnector getDbConnector() {
        DbConnectorFactory factory = new MySqlDbConnectorFactoryImpl(); 
        return factory.getDbConnector();
    }

    private Connection getConnection() throws ClassNotFoundException, SQLException {
        DbConnector connector = getDbConnector();
        return connector.getDbConnection();
    }

    public boolean addPatient(Patient patient) throws ClassNotFoundException, SQLException {
        Connection connection = getConnection(); 
        String query = "INSERT INTO patient_dtl (Name, DateOfBirth ,Email,Gender,  Username, Password) VALUES ( ?, ?, ?, ?, ?, ?)";
        PreparedStatement ps = connection.prepareStatement(query);
        ps.setString(1, patient.getName());
        ps.setString(2, patient.getDateOfBirth());
        ps.setString(3, patient.getEmail());
        ps.setString(4, patient.getGender());
        ps.setString(5, patient.getUsername());
        ps.setString(6, patient.getPassword());
        int result = ps.executeUpdate();
        ps.close();
        connection.close();        
        return result > 0;
    }

  
    public Patient getSpecificPatient(int patientId) throws SQLException, ClassNotFoundException {
        Connection connection = getConnection();
        String query = "SELECT * FROM patient_dtl WHERE PatientId = ?";
        PreparedStatement ps = connection.prepareStatement(query);
        ps.setInt(1, patientId);
        ResultSet rs = ps.executeQuery();
        Patient patient = new Patient();
        while(rs.next()) {
            patient.setPatientId(rs.getInt("PatientId"));
            patient.setName(rs.getString("Name"));
            patient.setDateOfBirth(rs.getString("DateOfBirth"));
            patient.setEmail(rs.getString("Email"));
            patient.setGender(rs.getString("Gender"));
            patient.setUsername(rs.getString("Username"));
            patient.setPassword(rs.getString("Password"));
        }
        ps.close();
        connection.close();        
        return patient;
    }

    public List<Patient> getAllPatients() throws SQLException, ClassNotFoundException {
        Connection connection = getConnection();    
        List<Patient> patientList = new ArrayList<>();
        String query = "SELECT * FROM patient_dtl";
        Statement st = connection.createStatement();
        ResultSet rs = st.executeQuery(query);
        while(rs.next()) {
            Patient patient = new Patient();
            patient.setPatientId(rs.getInt("PatientId"));
            patient.setName(rs.getString("Name"));
            patient.setDateOfBirth(rs.getString("DateOfBirth"));
            patient.setEmail(rs.getString("Email"));
            patient.setGender(rs.getString("Gender"));
           
            patient.setUsername(rs.getString("Username"));
            patient.setPassword(rs.getString("Password"));
            patientList.add(patient);
        }
        st.close();
        connection.close();
        return patientList;      
    }

    public boolean updatePatient(Patient patient) throws ClassNotFoundException, SQLException {
        Connection connection = getConnection();
        String query = "UPDATE patient_dtl SET Name = ?, DateOfBirth = ?, Email = ?, Gender = ?, Username = ?, Password = ? WHERE PatientId = ?";
        PreparedStatement ps = connection.prepareStatement(query);
        ps.setString(1, patient.getName());
        ps.setString(2, patient.getDateOfBirth());
        ps.setString(3, patient.getEmail());
        ps.setString(4, patient.getGender());
        ps.setString(5, patient.getUsername());
        ps.setString(6, patient.getPassword());
        ps.setInt(7, patient.getPatientId());
        int result = ps.executeUpdate();
        ps.close();
        connection.close();
        return result > 0;
    }

    public boolean deletePatient(int patientId) throws ClassNotFoundException, SQLException {
        Connection connection = getConnection();        
        String query = "DELETE FROM patient_dtl WHERE PatientId = ?";
        PreparedStatement ps = connection.prepareStatement(query);
        ps.setInt(1, patientId);
        int result = ps.executeUpdate();
        ps.close();
        connection.close();        
        return result > 0;
    }
    
    public boolean validatePatientCredentials(String username, String password) throws ClassNotFoundException, SQLException {
        Connection connection = getConnection();
        String query = "SELECT * FROM patient_dtl WHERE Username = ? AND Password = ?";
        PreparedStatement ps = connection.prepareStatement(query);
        ps.setString(1, username);
        ps.setString(2, password);
        ResultSet rs = ps.executeQuery();
        boolean isValid = rs.next(); // If result set has next, it means credentials are valid
        ps.close();
        connection.close();
        return isValid;
    }
    
    public Patient getPatientByUsername(String username) throws SQLException, ClassNotFoundException {
        
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        Patient patient = null;

        try {
            connection = getConnection(); // Implement this method to get database connection
            String query = "SELECT * FROM patient_dtl WHERE username = ?";
            preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, username);
            resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                // Extract patient details from the result set and create a Patient object
                patient = new Patient();
                patient.setPatientId(resultSet.getInt("patientId"));
                patient.setName(resultSet.getString("name"));
                patient.setDateOfBirth(resultSet.getString("dateOfBirth"));
                // Set other patient details accordingly
            }
        } finally {
            // Close the resources properly
            if (resultSet != null) {
                resultSet.close();
            }
            if (preparedStatement != null) {
                preparedStatement.close();
            }
            if (connection != null) {
                connection.close();
            }
        }

        return patient;
    }

}
