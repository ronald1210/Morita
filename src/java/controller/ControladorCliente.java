/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import config.Conexion;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import modelo.Cliente;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class ControladorCliente {

    Conexion conn = new Conexion();
    JdbcTemplate JdbcTemplate = new JdbcTemplate(conn.conectar());
    ModelAndView mav = new ModelAndView();
    List datos;
    int ID_ART,
            ID_CAT;

    @RequestMapping(value = "cliente.htm")
    public ModelAndView autenticacion(HttpServletRequest request) {
        String user = request.getParameter("usuario");
        String contra = request.getParameter("pass");

        String sql = "call LoginCliente('" + user + "','" + contra + "')";
        datos = this.JdbcTemplate.queryForList(sql);
        if (datos.size() > 0) {
            mav.addObject("usuario", datos);

            String sql2 = "call ListArtDisp";
            datos = this.JdbcTemplate.queryForList(sql2);
            mav.addObject("Lista", datos);

            String sql3 = "call ListCateg";
            datos = this.JdbcTemplate.queryForList(sql3);
            mav.addObject("LC", datos);

            mav.setViewName("ClienteIndex");
        } else {
            mav.setViewName("redirect:/index.htm");
        }
        return mav;
    }

    @RequestMapping("clientee.htm")
    public ModelAndView Listar(HttpServletRequest request) {
        String sql = "call ListArtDisp";
        datos = this.JdbcTemplate.queryForList(sql);
        mav.addObject("Lista", datos);
        
        String sql2 = "call ListCateg";
        datos = this.JdbcTemplate.queryForList(sql2);
        mav.addObject("LC", datos);
        
        mav.setViewName("ClienteIndex");
        return mav;
    }

    @RequestMapping("detalleC.htm")
    public ModelAndView detalle(HttpServletRequest request) {
        ID_ART = Integer.parseInt(request.getParameter("ID_ART"));
        String sql = "call DetalleArt(" + ID_ART + ")";
        datos = this.JdbcTemplate.queryForList(sql);
        mav.addObject("ListaDet", datos);

        ID_CAT = Integer.parseInt(request.getParameter("ID_CAT"));
        String sql3 = "call Carrusel(" + ID_ART + "," + ID_CAT + ")";
        datos = this.JdbcTemplate.queryForList(sql3);
        mav.addObject("ListaC", datos);

        mav.setViewName("DetalleCli");
        return mav;
    }

    @RequestMapping(value = "AddCli.htm", method = RequestMethod.GET)
    public ModelAndView AgregarCliente() {
        mav.addObject(new Cliente());
        String sql = "call Dist";
        datos = this.JdbcTemplate.queryForList(sql);
        mav.addObject("ListDist", datos);
        mav.setViewName("AddCli");
        return mav;
    }

    @RequestMapping(value = "registrarCliente.htm", method = RequestMethod.POST)
    public ModelAndView AgregarCliente(Cliente p) {
        String sql = "call AddCliente(?,?,?,?,?,?,?)";
        this.JdbcTemplate.update(sql,
                p.getDNI_CLI(),
                p.getNOM_CLI(),
                p.getFONO_CLI(),
                p.getCORREO_CLI(),
                p.getCLAVE_CLI(),
                p.getID_DIST(),
                p.getDIREC_CLI());
        return new ModelAndView("redirect:/index.htm");
    }
    
    //METODO PARA BUSCAR//
    @RequestMapping("buscarC.htm") 
    public ModelAndView Buscar(HttpServletRequest request){
        String nomBuscar = request.getParameter("txtBuscar");
        if(nomBuscar!= null){
            String sql = "call BuscarCateg("+nomBuscar+")";
            datos = JdbcTemplate.queryForList(sql);
            mav.addObject("Lista",datos);
            mav.setViewName("ClienteIndex");            
        }   
        return mav;
    } 
}
