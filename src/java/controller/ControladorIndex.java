/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import config.Conexion;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class ControladorIndex {

    Conexion conn = new Conexion();
    JdbcTemplate JdbcTemplate = new JdbcTemplate(conn.conectar());
    ModelAndView mav = new ModelAndView();
    List datos;
    int ID_ART, 
        ID_CAT;
    

    @RequestMapping("index.htm")
    public ModelAndView Listar() {
        String sql = "call ListArtDisp";
        datos = this.JdbcTemplate.queryForList(sql);
        mav.addObject("Lista", datos);
        
        String sql2 = "call ListCateg";
        datos = this.JdbcTemplate.queryForList(sql2);
        mav.addObject("LC", datos);
        
        mav.setViewName("index");
        return mav;
    }

    @RequestMapping("detalleI.htm")
    public ModelAndView detalle(HttpServletRequest request) {
        ID_ART = Integer.parseInt(request.getParameter("ID_ART"));        
        String sql = "call DetalleArt("+ID_ART+")";
        datos = this.JdbcTemplate.queryForList(sql);
        mav.addObject("ListaDet", datos);
        
        ID_CAT = Integer.parseInt(request.getParameter("ID_CAT"));
        String sql3 = "call Carrusel("+ID_ART+","+ID_CAT+")";
        datos = this.JdbcTemplate.queryForList(sql3);
        mav.addObject("ListaC", datos);
                
        mav.setViewName("detalleIndex");
        return mav;
    }
    
    //METODO PARA BUSCAR//
    @RequestMapping("buscar.htm") 
    public ModelAndView Buscar(HttpServletRequest request){
        String nomBuscar = request.getParameter("txtBuscar");
        if(nomBuscar!= null){
            String sql = "call BuscarCateg("+nomBuscar+")";
            datos = JdbcTemplate.queryForList(sql);
            mav.addObject("Lista",datos);
            mav.setViewName("index");            
        }   
        return mav;
    }    
    
}
