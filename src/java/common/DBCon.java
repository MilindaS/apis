/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package common;



import java.sql.Connection;
import java.sql.DriverManager;

import java.sql.SQLException;


import static common.Constants.DB_URL;
import static common.Constants.JDBC_DRIVER;
import static common.Constants.PASS;
import static common.Constants.USER;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author ADP-015
 */
public class DBCon {
    
    
    public static Connection getMyConnection() throws ClassNotFoundException, SQLException {
        Class.forName(JDBC_DRIVER);
        //System.out.println("connecting to database....");
        Connection c =DriverManager.getConnection(DB_URL,USER,PASS);
        return c;
    }
    
}
