package com.hirucode.abc.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MySqlConnectorImpl implements DbConnector {

	
	public Connection getDbConnection() throws ClassNotFoundException, SQLException {
		
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/abc_lab_db";
		String userName = "root";
		String password = "Hiru123,,";
		
		Connection connection = DriverManager.getConnection(url, userName, password);
		return connection;
	}

	
}
