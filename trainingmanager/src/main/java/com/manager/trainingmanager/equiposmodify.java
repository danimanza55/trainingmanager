/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.manager.trainingmanager;

import ConexionesBD.Conexion;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;

/**
 *
 * @author dani_
 */
public class equiposmodify {
    
    Conexion cc= new Conexion();
    Connection con1=cc.conectar();
    int resultado;
    private int id_equipo;
    private int id_entreno;
    
    public void setEquipo(String team, String trainer){
        id_equipo = Integer.valueOf(team);
        id_entreno = Integer.valueOf(trainer);
        }
    
     public void modificoEquipo(){
            
    String SQL="UPDATE equipos SET id_entrenamiento='"+id_entreno+"' WHERE id='"+id_equipo+"'";
    
    try{
       Statement st = con1.createStatement();
       int rs = st.executeUpdate(SQL);
       
       if(rs != 0){
           
                JOptionPane.showMessageDialog(null, "Equipo modificado satisfactoriamente.");
                Equipos form = new Equipos();
                form.setVisible(true);
                
      }else{
    JOptionPane.showMessageDialog(null, "Error modificacion no completada");
    } 
       
    }catch (Exception e){
    JOptionPane.showMessageDialog(null,"ERROR" + e.getMessage());
    }
    
    }
}
