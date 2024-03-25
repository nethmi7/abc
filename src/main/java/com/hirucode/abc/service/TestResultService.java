package com.hirucode.abc.service;

import java.sql.SQLException;
import java.util.List;

import com.hirucode.abc.dao.TestResultManager;
import com.hirucode.abc.model.TestResult;


public class TestResultService {
	
	private static TestResultService testResultServiceObj;

    private TestResultService() {}

    public static synchronized TestResultService getTestResultServiceInstance() {
        if (testResultServiceObj == null) {
            testResultServiceObj = new TestResultService();
        }
        return testResultServiceObj;
    }

    private TestResultManager getTestResultManager() {
        return new TestResultManager();
    }

    public boolean registerTestResult(TestResult testResult) throws ClassNotFoundException, SQLException {
        return getTestResultManager().addTestResult(testResult);
    }

    public TestResult getSpecificTestResult(int resultID) throws ClassNotFoundException, SQLException {
        return getTestResultManager().getSpecificTestResult(resultID);
    }

    public List<TestResult> getAllTestResults() throws ClassNotFoundException, SQLException {
        return getTestResultManager().getAllTestResults();
    }

    public boolean editTheTestResult(TestResult testResult) throws ClassNotFoundException, SQLException {
        return getTestResultManager().updateTestResult(testResult);
    }

    public boolean deleteTheTestResult(int resultID) throws ClassNotFoundException, SQLException {
        return getTestResultManager().deleteTestResult(resultID);
    }

}
