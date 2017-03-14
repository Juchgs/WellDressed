/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author aluno
 */
public class ConnectBD {
    
    Connection mySqlConnection;

	 String URL = "jdbc:postgresql://localhost:5432/imagedb";
	 String pwd = "root";
	 String user = "postgres";
	 
	 public Connection getConnection() {
	 
	  try {

	   Class.forName("org.postgresql.Driver");

	  } catch (Exception e) {
	   System.out.println("Driver Problem");
	   e.printStackTrace();

	  }
	  try {
	   if (mySqlConnection == null) {

	    mySqlConnection = DriverManager.getConnection(URL, user, pwd);

	   }

	  } catch (Exception e) {

	   e.printStackTrace();

	  }
	  return mySqlConnection;
	 } 
}
