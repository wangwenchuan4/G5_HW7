/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dbhelpers;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Support;

/**
 *
 * @author Wenchuan
 */
public class AddQuery {
     private Connection conn;
    private ResultSet results;
    
    
    public AddQuery(){
        
        try {
            Properties props = new Properties();
            InputStream instr = getClass().getResourceAsStream("dbConn.properties");
            props.load(instr);
            instr.close();
            
            String driver = props.getProperty("driver.name");
            String url = props.getProperty("server.name");
            String username = props.getProperty("user.name");
            String passwd = props.getProperty("user.password");
            try {
                Class.forName(driver);
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(AddQuery.class.getName()).log(Level.SEVERE, null, ex);
            }
            try {
                conn = DriverManager.getConnection(url, username, passwd);
            } catch (SQLException ex) {
                Logger.getLogger(AddQuery.class.getName()).log(Level.SEVERE, null, ex);
            }
        } catch (IOException ex) {
            Logger.getLogger(AddQuery.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        
    }
    
    //firstname, email, phone, posted, willhelp, support, why, lastname
    public void doAdd( Support player){
        
         try {
             String query="insert into support (firstname, email, phone, posted, willhelp, support, why, lastname) VALUES (?, ?, ?, ?,?, ?, ?, ?)";
             PreparedStatement ps = conn.prepareStatement(query);
             
             ps.setString(1, player.getFirstName());
             ps.setString(2, player.getEmail());
             ps.setString(3, player.getPhone());
             ps.setString(4, player.getPosted());
             ps.setString(5, player.getWillhelp() );
             ps.setString(6,player.getSupport() );
             ps.setString(7, player.getWhy());
             ps.setString(8, player.getLastName() );
             ps.executeUpdate();
         } catch (SQLException ex) {
             Logger.getLogger(AddQuery.class.getName()).log(Level.SEVERE, null, ex);
         }
        
    }
}
