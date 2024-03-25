package com.hirucode.abc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.hirucode.abc.model.Worker;


public class WorkerManager {
	
	public DbConnector getDbConnector() {
        // Assuming a factory is provided for the database connection
        DbConnectorFactory factory = new MySqlDbConnectorFactoryImpl(); // if you can get this from config 
        return factory.getDbConnector();
    }
    
    private Connection getConnection() throws ClassNotFoundException, SQLException {
        DbConnector connector = getDbConnector();
        return connector.getDbConnection();
    }
        
    public boolean addWorker(Worker worker) throws ClassNotFoundException, SQLException {
        Connection connection = getConnection(); 
        String query = "INSERT INTO worker (Name, Email, Address) VALUES (?, ?, ?)";
        
        PreparedStatement ps = connection.prepareStatement(query);
        ps.setString(1, worker.getName());
        ps.setString(2, worker.getEmail());
        ps.setString(3, worker.getAddress());
        
        int result = ps.executeUpdate();
        
        ps.close();
        connection.close();        
        return result > 0;
    }
    
    public Worker getSpecificWorker(int workerId) throws ClassNotFoundException, SQLException {
        Connection connection = getConnection();
        String query = "SELECT * FROM worker WHERE IdWorker = ?";
        
        PreparedStatement ps = connection.prepareStatement(query);
        ps.setInt(1, workerId);
        
        ResultSet rs = ps.executeQuery();
        Worker worker = new Worker();
        
        while(rs.next()) {
            worker.setIdWorker(rs.getInt("IdWorker"));
            worker.setName(rs.getString("Name"));
            worker.setEmail(rs.getString("Email"));
            worker.setAddress(rs.getString("Address"));
        }
        
        ps.close();
        connection.close();        
        return worker;
    }
    
    public List<Worker> getAllWorkers() throws ClassNotFoundException, SQLException {
        Connection connection = getConnection();    
        List<Worker> workerList = new ArrayList<>();
        
        String query = "SELECT * FROM worker";
        
        Statement st = connection.createStatement();
        ResultSet rs = st.executeQuery(query);
        
        while(rs.next()) {
            Worker worker = new Worker();
            worker.setIdWorker(rs.getInt("IdWorker"));
            worker.setName(rs.getString("Name"));
            worker.setEmail(rs.getString("Email"));
            worker.setAddress(rs.getString("Address"));
            
            workerList.add(worker);
        }
        
        st.close();
        connection.close();
        
        return workerList;        
    }
    
    public boolean updateWorker(Worker worker) throws ClassNotFoundException, SQLException {
        Connection connection = getConnection();
        String query = "UPDATE worker SET Name = ?, Email = ?, Address = ? WHERE IdWorker = ?";
        
        PreparedStatement ps = connection.prepareStatement(query);
        ps.setString(1, worker.getName());
        ps.setString(2, worker.getEmail());
        ps.setString(3, worker.getAddress());
        ps.setInt(4, worker.getIdWorker());
        
        int result = ps.executeUpdate();
        
        ps.close();
        connection.close();
        return result > 0;
    }
    
    public boolean deleteWorker(int workerId) throws ClassNotFoundException, SQLException {
        Connection connection = getConnection();        
        String query = "DELETE FROM worker WHERE IdWorker = ?";
        
        PreparedStatement ps = connection.prepareStatement(query);
        ps.setInt(1, workerId);
        int result = ps.executeUpdate();
        
        ps.close();
        connection.close();        
        return result > 0;
    }

}
