/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.agrarian.dbcon;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

/**
 *
 * @author Pankaj Kharetwal
 */
public class DatabaseConnection {
    public static Connection getConnection(){
        Connection con = null;
        try{
            String driver = "java.sql.Driver";
            String url = "jdbc:mysql://localhost:3306/agrography";
            String userName = "root";
            String password = "root";
            Class.forName(driver);
            con = DriverManager.getConnection(url, userName, password);
        }catch(Exception e){
            e.printStackTrace();
        }
        return con;
    }
    public Boolean runQuery(String query){   
       try{
            Connection con = getConnection();            
            System.out.println("sqlQuery : "+query);
            Statement stmt = con.createStatement();
            stmt.executeUpdate(query);
            con.close();            
            return true;
        }catch(Exception e){
            e.printStackTrace();
        }  
       return false;
    }
    /*public static void main(String s[]){
       DatabaseConnection dbcon = new DatabaseConnection();
       dbcon.getConnection();
       dbcon.runQuery("insert into Wheat (brand,quantity,farea) values('sarvati',"+10+","+200+")");
       
   }*/
}
