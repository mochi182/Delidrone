/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entidades;

/**
 *
 * @author galop
 */
public class Restaurante {
    
    private int id;
    private String nombre;
    private float rango_precio_min;
    private float rango_precio_max;
    private int tiempo_entrega;
    private String descripcion;
    private String url_imagen;

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the nombre
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * @param nombre the nombre to set
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    /**
     * @return the rango_precio_min
     */
    public float getRango_precio_min() {
        return rango_precio_min;
    }

    /**
     * @param rango_precio_min the rango_precio_min to set
     */
    public void setRango_precio_min(float rango_precio_min) {
        this.rango_precio_min = rango_precio_min;
    }

    /**
     * @return the rango_precio_max
     */
    public float getRango_precio_max() {
        return rango_precio_max;
    }

    /**
     * @param rango_precio_max the rango_precio_max to set
     */
    public void setRango_precio_max(float rango_precio_max) {
        this.rango_precio_max = rango_precio_max;
    }

    /**
     * @return the tiempo_entrega
     */
    public int getTiempo_entrega() {
        return tiempo_entrega;
    }

    /**
     * @param tiempo_entrega the tiempo_entrega to set
     */
    public void setTiempo_entrega(int tiempo_entrega) {
        this.tiempo_entrega = tiempo_entrega;
    }

    /**
     * @return the descripcion
     */
    public String getDescripcion() {
        return descripcion;
    }

    /**
     * @param descripcion the descripcion to set
     */
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    /**
     * @return the url_imagen
     */
    public String getUrl_imagen() {
        return url_imagen;
    }

    /**
     * @param url_imagen the url_imagen to set
     */
    public void setUrl_imagen(String url_imagen) {
        this.url_imagen = url_imagen;
    }
    
    
}
