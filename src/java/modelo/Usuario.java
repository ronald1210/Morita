/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;


public class Usuario {
    private int     ID_USU;
    private String  NOM_USU;
    private String  APE_USU;
    private String  DNI_USU;
    private String  DIR_USU;
    private String  CLAVE_USU;
    private int     ID_TIP_USU;
    private int     ID_DIST;
    private int     ID_EST_USU;
    
    public Usuario() {
    }

    public Usuario(int ID_USU, String NOM_USU, String APE_USU, String DNI_USU, String DIR_USU, String CLAVE_USU, int ID_TIP_USU, int ID_DIST, int ID_EST_USU) {
        this.ID_USU = ID_USU;
        this.NOM_USU = NOM_USU;
        this.APE_USU = APE_USU;
        this.DNI_USU = DNI_USU;
        this.DIR_USU = DIR_USU;
        this.CLAVE_USU = CLAVE_USU;
        this.ID_TIP_USU = ID_TIP_USU;
        this.ID_DIST = ID_DIST;
        this.ID_EST_USU = ID_EST_USU;
    }

    public int getID_EST_USU() {
        return ID_EST_USU;
    }

    public void setID_EST_USU(int ID_EST_USU) {
        this.ID_EST_USU = ID_EST_USU;
    }

    public int getID_USU() {
        return ID_USU;
    }

    public void setID_USU(int ID_USU) {
        this.ID_USU = ID_USU;
    }

    public String getNOM_USU() {
        return NOM_USU;
    }

    public void setNOM_USU(String NOM_USU) {
        this.NOM_USU = NOM_USU;
    }

    public String getAPE_USU() {
        return APE_USU;
    }

    public void setAPE_USU(String APE_USU) {
        this.APE_USU = APE_USU;
    }

    public String getDNI_USU() {
        return DNI_USU;
    }

    public void setDNI_USU(String DNI_USU) {
        this.DNI_USU = DNI_USU;
    }

    public String getDIR_USU() {
        return DIR_USU;
    }

    public void setDIR_USU(String DIR_USU) {
        this.DIR_USU = DIR_USU;
    }

    public String getCLAVE_USU() {
        return CLAVE_USU;
    }

    public void setCLAVE_USU(String CLAVE_USU) {
        this.CLAVE_USU = CLAVE_USU;
    }

    public int getID_TIP_USU() {
        return ID_TIP_USU;
    }

    public void setID_TIP_USU(int ID_TIP_USU) {
        this.ID_TIP_USU = ID_TIP_USU;
    }

    public int getID_DIST() {
        return ID_DIST;
    }

    public void setID_DIST(int ID_DIST) {
        this.ID_DIST = ID_DIST;
    }
    
    
}
