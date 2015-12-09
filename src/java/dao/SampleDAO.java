/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.agrarian.dao;

/**
 *
 * @author Pankaj Kharetwal
 */
import com.agrarian.sow_vo.ValueObject;
import com.agrarian.fertilize_vo.FertilizationValueObject;
import com.agrarian.dbcon.DatabaseConnection;
import com.agrarian.harveste_vo.HarvestingValueObject;
public class SampleDAO {
    public boolean saveWheat(ValueObject vo)
    {
        String query=null;
        try{
        DatabaseConnection dbcon = new DatabaseConnection();
        dbcon.getConnection();
        query = "insert into wheat_sowing_table(name,quantity,area,ten_date,cur_date) values('"+vo.getField1()+"',"+vo.getField2()+","+vo.getField3()+",'"+vo.getField4()+"','"+vo.getField5()+"')";
        dbcon.runQuery(query);
        return true;
       }catch(Exception e){
           e.printStackTrace();
       }
        return false;
    } 
    
     public boolean saveRice(ValueObject vo)
    {
        String query=null;
        try{
        DatabaseConnection dbcon = new DatabaseConnection();
        dbcon.getConnection();
        query = "insert into Rice_sowing_table(name,quantity,area,tentitive_date,cur_date) values('"+vo.getField1()+"',"+vo.getField2()+","+vo.getField3()+",'"+vo.getField4()+"','"+vo.getField5()+"')";
        dbcon.runQuery(query);
        return true;
       }catch(Exception e){
           e.printStackTrace();
       }
        return false;
    } 
    public boolean saveMaize(ValueObject vo)
    {
        String query=null;
        try{
        DatabaseConnection dbcon = new DatabaseConnection();
        dbcon.getConnection();
        query = "insert into maize_sowing_table(name,quantity,area,tentitive_date,cur_date) values('"+vo.getField1()+"',"+vo.getField2()+","+vo.getField3()+",'"+vo.getField4()+"','"+vo.getField5()+"')";
        dbcon.runQuery(query);
        return true;
       }catch(Exception e){
           e.printStackTrace();
       }
        return false;
    } 
    public boolean saveSoyabean(ValueObject vo)
    {
        String query=null;
        try{
        DatabaseConnection dbcon = new DatabaseConnection();
        dbcon.getConnection();
        query = "insert into soyabean_sowing_table(name,quantity,area,tentitive_date,cur_date) values('"+vo.getField1()+"',"+vo.getField2()+","+vo.getField3()+",'"+vo.getField4()+"','"+vo.getField5()+"')";
        dbcon.runQuery(query);
        return true;
       }catch(Exception e){
           e.printStackTrace();
       }
        return false;
    } 
    public boolean saveWheatFertilization(FertilizationValueObject vo)
    {
        String query=null;
        try{
        DatabaseConnection dbcon = new DatabaseConnection();
        dbcon.getConnection();
        query = "INSERT INTO agrography.wheat_fertilization (NAME,weed_killer,wdklr_quantity,pesticides,pesti_quantity,tonic,tonic_quantity,AREA,DATE)VALUES('"+vo.getField1()+"','"+vo.getField2()+"',"+vo.getField3()+",'"+vo.getField4()+"',"+vo.getField5()+",'"+vo.getField6()+"',"+vo.getField7()+","+vo.getField8()+",'"+vo.getField9()+"')";
        dbcon.runQuery(query);
        return true;
       }catch(Exception e){
           e.printStackTrace();
       }
        return false;
    }
    public boolean saveRiceFertilization(FertilizationValueObject vo)
    {
        String query=null;
        try{
        DatabaseConnection dbcon = new DatabaseConnection();
        dbcon.getConnection();
        query = "INSERT INTO agrography.rice_fertilization (NAME,weed_killer,wdklr_quantity,pesticides,pesti_quantity,tonic,tonic_quantity,AREA,DATE)VALUES('"+vo.getField1()+"','"+vo.getField2()+"',"+vo.getField3()+",'"+vo.getField4()+"',"+vo.getField5()+",'"+vo.getField6()+"',"+vo.getField7()+","+vo.getField8()+",'"+vo.getField9()+"')";
        dbcon.runQuery(query);
        return true;
       }catch(Exception e){
           e.printStackTrace();
       }
        return false;
    }
    public boolean saveSoyabeanFertilization(FertilizationValueObject vo)
    {
        String query=null;
        try{
        DatabaseConnection dbcon = new DatabaseConnection();
        dbcon.getConnection();
        query = "INSERT INTO agrography.soya_fertilization (NAME,weed_killer,wdklr_quantity,pesticides,pesti_quantity,tonic,tonic_quantity,AREA,DATE)VALUES('"+vo.getField1()+"','"+vo.getField2()+"',"+vo.getField3()+",'"+vo.getField4()+"',"+vo.getField5()+",'"+vo.getField6()+"',"+vo.getField7()+","+vo.getField8()+",'"+vo.getField9()+"')";
        dbcon.runQuery(query);
        return true;
       }catch(Exception e){
           e.printStackTrace();
       }
        return false;
    }
    public boolean saveMaizeFertilization(FertilizationValueObject vo)
    {
        String query=null;
        try{
        DatabaseConnection dbcon = new DatabaseConnection();
        dbcon.getConnection();
        query = "INSERT INTO agrography.maize_fertilization (NAME,weed_killer,wdklr_quantity,pesticides,pesti_quantity,tonic,tonic_quantity,AREA,DATE)VALUES('"+vo.getField1()+"','"+vo.getField2()+"',"+vo.getField3()+",'"+vo.getField4()+"',"+vo.getField5()+",'"+vo.getField6()+"',"+vo.getField7()+","+vo.getField8()+",'"+vo.getField9()+"')";
        dbcon.runQuery(query);
        return true;
       }catch(Exception e){
           e.printStackTrace();
       }
        return false;
    }
     public boolean saveWheatHarvesting(HarvestingValueObject vo)
    {
        String query=null;
        try{
        DatabaseConnection dbcon = new DatabaseConnection();
        dbcon.getConnection();
        query = "INSERT INTO agrography.wheat_harvesting(name,area,tentitive_date,cur_d)VALUES('"+vo.getField1()+"',"+vo.getField2()+",'"+vo.getField3()+"','"+vo.getField4()+"')";
        dbcon.runQuery(query);
        return true;
       }catch(Exception e){
           e.printStackTrace();
       }
        return false;
    }
   public boolean saveRiceHarvesting(HarvestingValueObject vo)
    {
        String query=null;
        try{
        DatabaseConnection dbcon = new DatabaseConnection();
        dbcon.getConnection();
        query = "INSERT INTO agrography.rice_harvesting(name,area,tentitive_date,cur_d)VALUES('"+vo.getField1()+"',"+vo.getField2()+",'"+vo.getField3()+"','"+vo.getField4()+"')";
        dbcon.runQuery(query);
        return true;
       }catch(Exception e){
           e.printStackTrace();
       }
        return false;
    }
   public boolean saveMaizeHarvesting(HarvestingValueObject vo)
    {
        String query=null;
        try{
        DatabaseConnection dbcon = new DatabaseConnection();
        dbcon.getConnection();
        query = "INSERT INTO agrography.maize_harvesting(name,area,tentitive_date,cur_d)VALUES('"+vo.getField1()+"',"+vo.getField2()+",'"+vo.getField3()+"','"+vo.getField4()+"')";
        dbcon.runQuery(query);
        return true;
       }catch(Exception e){
           e.printStackTrace();
       }
        return false;
    }
   public boolean saveSoyabeanHarvesting(HarvestingValueObject vo)
    {
        String query=null;
        try{
        DatabaseConnection dbcon = new DatabaseConnection();
        dbcon.getConnection();
        query = "INSERT INTO agrography.soyabean_harvesting(name,area,tentitive_date,cur_d)VALUES('"+vo.getField1()+"',"+vo.getField2()+",'"+vo.getField3()+"','"+vo.getField4()+"')";
        dbcon.runQuery(query);
        return true;
       }catch(Exception e){
           e.printStackTrace();
       }
        return false;
    }
}
