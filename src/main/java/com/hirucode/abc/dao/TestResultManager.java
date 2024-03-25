package com.hirucode.abc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.hirucode.abc.model.TestResult;



public class TestResultManager {
	
	public DbConnector getDbConnector() {
        DbConnectorFactory factory = new MySqlDbConnectorFactoryImpl(); 
        return factory.getDbConnector();
    }

    private Connection getConnection() throws ClassNotFoundException, SQLException {
        DbConnector connector = getDbConnector();
        return connector.getDbConnection();
    }

    public boolean addTestResult(TestResult testResult) throws ClassNotFoundException, SQLException {
        Connection connection = getConnection(); 
        String query = "INSERT INTO testresult (AppointmentID, Result, DoctorName, TechnicianName, Report) VALUES (?, ?, ?, ?, ?)";

        PreparedStatement ps = connection.prepareStatement(query);
        ps.setInt(1, testResult.getAppointmentID());
        ps.setString(2, testResult.getResult());
        ps.setString(3, testResult.getDoctorName());
        ps.setString(4, testResult.getTechnicianName());
        ps.setBytes(5, testResult.getReport());

        int result = ps.executeUpdate();

        ps.close();
        connection.close();      
        return result > 0;
    }

    public TestResult getSpecificTestResult(int resultID) throws SQLException, ClassNotFoundException {
        Connection connection = getConnection();
        String query = "SELECT * FROM testresult WHERE ResultID = ?";

        PreparedStatement ps = connection.prepareStatement(query);
        ps.setInt(1, resultID);

        ResultSet rs = ps.executeQuery();
        TestResult testResult = new TestResult();

        while(rs.next()) {
            testResult.setResultID(rs.getInt("ResultID"));
            testResult.setAppointmentID(rs.getInt("AppointmentID"));
            testResult.setResult(rs.getString("Result"));
            testResult.setDoctorName(rs.getString("DoctorName"));
            testResult.setTechnicianName(rs.getString("TechnicianName"));
            testResult.setReport(rs.getBytes("Report"));
        }

        ps.close();
        connection.close();        
        return testResult;
    }

    public List<TestResult> getAllTestResults() throws SQLException, ClassNotFoundException {
        Connection connection = getConnection();    
        List<TestResult> testResultList = new ArrayList<>();

        String query = "SELECT * FROM testresult";

        Statement st = connection.createStatement();

        ResultSet rs = st.executeQuery(query);

        while(rs.next()) {
            TestResult testResult = new TestResult();
            testResult.setResultID(rs.getInt("ResultID"));
            testResult.setAppointmentID(rs.getInt("AppointmentID"));
            testResult.setResult(rs.getString("Result"));
            testResult.setDoctorName(rs.getString("DoctorName"));
            testResult.setTechnicianName(rs.getString("TechnicianName"));
            testResult.setReport(rs.getBytes("Report"));

            testResultList.add(testResult);
        }

        st.close();
        connection.close();

        return testResultList;      
    }

    public boolean updateTestResult(TestResult testResult) throws ClassNotFoundException, SQLException {
        Connection connection = getConnection();
        String query = "UPDATE testresult SET AppointmentID = ?, Result = ?, DoctorName = ?, TechnicianName = ?, Report = ? WHERE ResultID = ?";

        PreparedStatement ps = connection.prepareStatement(query);
        ps.setInt(1, testResult.getAppointmentID());
        ps.setString(2, testResult.getResult());
        ps.setString(3, testResult.getDoctorName());
        ps.setString(4, testResult.getTechnicianName());
        ps.setBytes(5, testResult.getReport());
        ps.setInt(6, testResult.getResultID());

        int result = ps.executeUpdate();

        ps.close();
        connection.close();
        return result > 0;
    }

    public boolean deleteTestResult(int resultID) throws ClassNotFoundException, SQLException {
        Connection connection = getConnection();        
        String query = "DELETE FROM testresult WHERE ResultID = ?";

        PreparedStatement ps = connection.prepareStatement(query);
        ps.setInt(1, resultID);
        int result = ps.executeUpdate();

        ps.close();
        connection.close();        
        return result > 0;
    }

}
