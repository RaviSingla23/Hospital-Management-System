/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hospital_management_sys;
import java.sql.*;
import javax.swing.JOptionPane;
import java.lang.Exception;

/**
 *
 * @author Ravi Singla
 */
public class connect {
    public static String u;
    public static String p;
    
    public static void getup(){
       u=HMS.o.txt1.getText();
       p=HMS.o.txt2.getText();
    }
    
    public static void logout(){
        HMS.o.setVisible(true);
        HMS.o.txt1.setText("");
        HMS.o.txt2.setText("");
    }
   
   
    public static Connection Connect(){
        
        
        try{
            Class.forName("oracle.jdbc.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:hms",u,p);
            return con;
        }
        catch(Exception e){
            JOptionPane.showMessageDialog(null, e);
            return null;
        }
    }
           
    
}
