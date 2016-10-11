/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

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
    
      static final String JDBC_DRIVER="com.mysql.jdbc.Driver";
    static final String DB_URL ="jdbc:mysql://localhost:3306/swdb2";
    static final String USER="root";
    static final String PASS="13dil20";
    public static Connection getMyConnection() throws ClassNotFoundException, SQLException {
        Class.forName(JDBC_DRIVER);
        //System.out.println("connecting to database....");
        Connection c =DriverManager.getConnection(DB_URL,USER,PASS);
        return c;
    }
    
}
