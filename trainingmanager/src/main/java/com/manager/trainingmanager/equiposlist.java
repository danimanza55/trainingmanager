/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.manager.trainingmanager;

import ConexionesBD.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author dani_
 */
public class equiposlist {
    
    private String entrenador ="";
    
    public void setEntrenador(String trainer){
        entrenador = trainer;
        }
    
     public DefaultTableModel mostrarEquipos()
    {
        String []  nombresColumnas = {"id","nombre","categoria","n_jugadores","equipacion", "id_entrenamiento", "entrenador"};
        String [] registros = new String[7];
        
        DefaultTableModel modelo = new DefaultTableModel(null,nombresColumnas);
        
        
       
        String sql = "SELECT * FROM equipos";
        String sql2 = "SELECT * FROM equipos WHERE entrenador='"+entrenador+"'";
        Connection cn = null;
        
        PreparedStatement pst = null;
        
        ResultSet rs = null;
        
        try
        {
            cn = Conexion.conectar();
            
          if (entrenador!=""){
            pst = cn.prepareStatement(sql2);                        

          }else{
            pst = cn.prepareStatement(sql);                        
          }
            rs = pst.executeQuery();
            
            while(rs.next())
            {
                registros[0] = rs.getString("id");
                
                registros[1] = rs.getString("nombre");
                
                registros[2] = rs.getString("categoria");
                
                registros[3] = rs.getString("n_jugadores");
                
                registros[4] = rs.getString("equipacion");
                
                registros[5] = rs.getString("id_entrenamiento");
                
                registros[6] = rs.getString("entrenador");
                
                modelo.addRow(registros);
              
            }
            
           
        }
        catch(SQLException e)
        {
            
            JOptionPane.showMessageDialog(null,"Error al conectar");
            
        }
        finally
        {
            try
            {
                if (rs != null) rs.close();
                
                if (pst != null) pst.close();
                
                if (cn != null) cn.close();
            }
            catch(SQLException e)
            {
                JOptionPane.showMessageDialog(null,e);
            }
        }
         return modelo;
    }
}
