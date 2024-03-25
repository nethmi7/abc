package com.hirucode.abc.service;

import java.sql.SQLException;
import java.util.List;

import com.hirucode.abc.dao.WorkerManager;
import com.hirucode.abc.model.Worker;



public class WorkerService {
	
	 private static WorkerService workerServiceObj;

	    private WorkerService() {
	        
	    }
	    
	    public static synchronized WorkerService getWorkerServiceInstance() {
	        
	        if(workerServiceObj == null) {
	            workerServiceObj = new WorkerService();
	        }
	        
	        return workerServiceObj;
	    }
	    
	    private WorkerManager getWorkerManager() {
	        return new WorkerManager();
	    }
	    
	    // Services
	    public boolean registerWorker(Worker worker) throws ClassNotFoundException, SQLException {
	        return getWorkerManager().addWorker(worker);
	    }
	    
	    public Worker getSpecificWorker(int workerId) throws ClassNotFoundException, SQLException {        
	        return getWorkerManager().getSpecificWorker(workerId);
	    }
	    
	    public List<Worker> getAllWorkers() throws ClassNotFoundException, SQLException {
	        return getWorkerManager().getAllWorkers();
	    }
	    
	    public boolean editTheWorker(Worker worker) throws ClassNotFoundException, SQLException {
	        return getWorkerManager().updateWorker(worker);
	    }
	    
	    public boolean deleteTheWorker(int workerId) throws ClassNotFoundException, SQLException {
	        return getWorkerManager().deleteWorker(workerId);
	    }

}
