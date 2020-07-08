/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Procesos;

import Entidades.Restaurante;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author galop
 */
public class ProcesosRestaurante {
    
    Connection conn;
    
    public ProcesosRestaurante() {
        
        try{
            Class.forName("org.mariadb.jdbc.Driver");
            this.conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/delidrone", "root", "12345");
        }catch(SQLException e){
            System.out.println("Error al conectar: " + e);
        }
        catch(ClassNotFoundException ex){
            System.out.println("Error al registrar el driver de MySQL: " + ex);
        }
    }
    
    public int guardarRestaurante(Restaurante restaurante){
        int resultado = 0;
        try{
            Statement stmt = conn.createStatement();
            String query = "INSERT INTO restaurante(nombre, rango_precio_min, rango_precio_max, tiempo_de_entrega, descripcion, url_imagen)";
                    query += "VALUES('"+restaurante.getNombre()+"', "+restaurante.getRango_precio_min()+", "+restaurante.getRango_precio_max()+", "+restaurante.getTiempo_entrega()+", '"+restaurante.getDescripcion()+"', '"+restaurante.getUrl_imagen()+"')";
        
            resultado = stmt.executeUpdate(query);
            return resultado;
        } catch(Exception w){
            System.out.println("Error al insertar en base de datos: " + w);
        }
        return 0;
    }
    
    public List<Restaurante>  consultarDatos(){
        List<Restaurante> restaurantes = new ArrayList<Restaurante>();
        try{
            Statement stmt = conn.createStatement();
            String query = "SELECT * FROM restaurante";
            ResultSet resultado = stmt.executeQuery(query);
            while(resultado.next()){
                Restaurante restaurante = new Restaurante();
                restaurante.setId(resultado.getInt("id"));
                restaurante.setNombre(resultado.getString("nombre"));
                restaurante.setDescripcion(resultado.getString("descripcion"));
                restaurante.setUrl_imagen(resultado.getString("url_imagen"));
                restaurante.setRango_precio_min(resultado.getFloat("rango_precio_min"));
                restaurante.setRango_precio_max(resultado.getFloat("rango_precio_max"));
                restaurante.setTiempo_entrega(resultado.getInt("tiempo_de_entrega"));
                restaurantes.add(restaurante);
            }
            resultado.close();
            stmt.close();
            conn.close();
        } catch(Exception e){
            System.out.println("Error: " + e);
        }
        return restaurantes;
    }
           
}
