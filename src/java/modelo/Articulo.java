/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;


public class Articulo{
    private int ID_ART;
    private String MODELO_ART;
    private double PRECIO_ART;
    private int STOCK_ART;
    private String DESC_ART;
    private int ID_EST;
    private String IMAGEN_ART;  
    private int ID_CAT;
    private int ID_MARCA;

    public Articulo() {
    }

    public Articulo(int ID_ART, String MODELO_ART, double PRECIO_ART, int STOCK_ART, String DESC_ART, int ID_EST, String IMAGEN_ART, int ID_CAT, int ID_MARCA) {
        this.ID_ART = ID_ART;
        this.MODELO_ART = MODELO_ART;
        this.PRECIO_ART = PRECIO_ART;
        this.STOCK_ART = STOCK_ART;
        this.DESC_ART = DESC_ART;
        this.ID_EST = ID_EST;
        this.IMAGEN_ART = IMAGEN_ART;
        this.ID_CAT = ID_CAT;
        this.ID_MARCA = ID_MARCA;
    }

    public int getID_ART() {
        return ID_ART;
    }

    public void setID_ART(int ID_ART) {
        this.ID_ART = ID_ART;
    }

    public String getMODELO_ART() {
        return MODELO_ART;
    }

    public void setMODELO_ART(String MODELO_ART) {
        this.MODELO_ART = MODELO_ART;
    }

    public double getPRECIO_ART() {
        return PRECIO_ART;
    }

    public void setPRECIO_ART(double PRECIO_ART) {
        this.PRECIO_ART = PRECIO_ART;
    }

    public int getSTOCK_ART() {
        return STOCK_ART;
    }

    public void setSTOCK_ART(int STOCK_ART) {
        this.STOCK_ART = STOCK_ART;
    }

    public String getDESC_ART() {
        return DESC_ART;
    }

    public void setDESC_ART(String DESC_ART) {
        this.DESC_ART = DESC_ART;
    }

    public int getID_EST() {
        return ID_EST;
    }

    public void setID_EST(int ID_EST) {
        this.ID_EST = ID_EST;
    }

    public String getIMAGEN_ART() {
        return IMAGEN_ART;
    }

    public void setIMAGEN_ART(String IMAGEN_ART) {
        this.IMAGEN_ART = IMAGEN_ART;
    }

    public int getID_CAT() {
        return ID_CAT;
    }

    public void setID_CAT(int ID_CAT) {
        this.ID_CAT = ID_CAT;
    }

    public int getID_MARCA() {
        return ID_MARCA;
    }

    public void setID_MARCA(int ID_MARCA) {
        this.ID_MARCA = ID_MARCA;
    }

    
}