
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import config.Conexion;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import modelo.Articulo;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


public class ControladorAdmin {

    Conexion conn = new Conexion();
    JdbcTemplate JdbcTemplate = new JdbcTemplate(conn.conectar());
    ModelAndView mav = new ModelAndView();
    List datos;
    int ID_ART,
        ID_CAT,
        ID_USU;
    
    @RequestMapping(value = "salir")
    public ModelAndView salir(HttpSession session){
        session.removeAttribute("usuario");
        mav.setViewName("redirect:/index.htm");
        return mav;
    }    

    @RequestMapping(value = "admi.htm")
    public ModelAndView autenticacion(HttpServletRequest request, HttpSession session) {
        String user = request.getParameter("usuarioA");
        String contra = request.getParameter("passA");

        String sql = "call LoginUsuario('" + user + "','" + contra + "')";
        datos = this.JdbcTemplate.queryForList(sql);
        if (datos.size() > 0) {
            session.setAttribute("usuario", datos);
            //mav.addObject("usuario", datos);
            String sql2 = "call ListArtDisp";
            datos = this.JdbcTemplate.queryForList(sql2);
            mav.addObject("Lista", datos);
            mav.setViewName("Admin");
        } else {
            mav.setViewName("redirect:/index.htm");
        }
        return mav;
    }

    @RequestMapping("Admin.htm")
    public ModelAndView ListAdmin() {
        String sql = "call ListArtDisp";
        datos = this.JdbcTemplate.queryForList(sql);
        mav.addObject("Lista", datos);
        mav.setViewName("Admin");
        return mav;
    }

    @RequestMapping("ListAdmi.htm")
    public ModelAndView ListAdminDesc() {
        String sql = "call ListArtDispDesc";
        datos = this.JdbcTemplate.queryForList(sql);
        mav.addObject("ListaD", datos);
        mav.setViewName("ListAdmi");
        return mav;
    }

    @RequestMapping("detalleA.htm")
    public ModelAndView detalle(HttpServletRequest request) {
        ID_ART = Integer.parseInt(request.getParameter("ID_ART"));
        String sql = "call DetalleArt(" + ID_ART + ")";
        datos = this.JdbcTemplate.queryForList(sql);
        mav.addObject("ListaDet", datos);

        ID_CAT = Integer.parseInt(request.getParameter("ID_CAT"));
        String sql3 = "call Carrusel(" + ID_ART + "," + ID_CAT + ")";
        datos = this.JdbcTemplate.queryForList(sql3);
        mav.addObject("ListaC", datos);

        mav.setViewName("DetalleAdmi");
        return mav;
    }

    @RequestMapping("detallesA.htm")
    public ModelAndView detalles(HttpServletRequest request) {
        ID_ART = Integer.parseInt(request.getParameter("ID_ART"));
        String sql = "call DetalleArt(" + ID_ART + ")";
        datos = this.JdbcTemplate.queryForList(sql);
        mav.addObject("ListaDet", datos);

        ID_CAT = Integer.parseInt(request.getParameter("ID_CAT"));
        String sql3 = "call Carrusel(" + ID_ART + "," + ID_CAT + ")";
        datos = this.JdbcTemplate.queryForList(sql3);
        mav.addObject("ListaC", datos);

        mav.setViewName("DetallesAdmi");
        return mav;
    }

    @RequestMapping(value = "Actualizar.htm", method = RequestMethod.GET)
    public ModelAndView Editar(HttpServletRequest request) {
        ID_ART = Integer.parseInt(request.getParameter("ID_ART"));
        String sql = "call DetalleArtUpdate(" + ID_ART + ")";
        datos = this.JdbcTemplate.queryForList(sql);
        mav.addObject("ListaEdt", datos);

        String sql2 = "call Cat";
        datos = this.JdbcTemplate.queryForList(sql2);
        mav.addObject("categoria", datos);

        String sql3 = "call Marc";
        datos = this.JdbcTemplate.queryForList(sql3);
        mav.addObject("marca", datos);

        mav.setViewName("Actualizar");
        return mav;
    }

    @RequestMapping(value = "Actualizar.htm", method = RequestMethod.POST)
    public ModelAndView Editar(Articulo p) {
        String sql = "call UpdateArt(?,?,?,?,?,?,?,?,?)";
        this.JdbcTemplate.update(sql,
                p.getMODELO_ART(),
                p.getPRECIO_ART(),
                p.getSTOCK_ART(),
                p.getDESC_ART(),
                p.getID_EST(),
                p.getIMAGEN_ART(),
                p.getID_CAT(),
                p.getID_MARCA(),
                ID_ART);
        return new ModelAndView("redirect:/ListAdmi.htm");
    }

    //METODO PARA AGREGAR//   
    @RequestMapping(value = "NuevoArt.htm", method = RequestMethod.GET)
    public ModelAndView Agregar() {
        mav.addObject(new Articulo());

        String sql = "call Est";
        datos = this.JdbcTemplate.queryForList(sql);
        mav.addObject("estado", datos);

        String sql2 = "call Cat";
        datos = this.JdbcTemplate.queryForList(sql2);
        mav.addObject("categoria", datos);

        String sql3 = "call Marc";
        datos = this.JdbcTemplate.queryForList(sql3);
        mav.addObject("marca", datos);

        mav.setViewName("NuevoArt");
        return mav;
    }

    @RequestMapping(value = "NuevoArt.htm", method = RequestMethod.POST)
    public ModelAndView Agregar(Articulo p) {
        String sql = "call AddArt(?,?,?,?,?,?,?,?)";
        this.JdbcTemplate.update(sql, 
                p.getMODELO_ART(),
                p.getPRECIO_ART(),
                p.getSTOCK_ART(),
                p.getDESC_ART(),
                p.getID_EST(), 
                p.getIMAGEN_ART(),
                p.getID_CAT(),
                p.getID_MARCA());
        return new ModelAndView("redirect:/ListAdmi.htm");
    }

    //METODO PARA LISTAR POR STOCK MAS BAJO//
    @RequestMapping(value = "ListStock.htm")
    public ModelAndView listStock() {
        String sql = "call ArtStock";
        datos = this.JdbcTemplate.queryForList(sql);
        mav.addObject("stock", datos);
        mav.setViewName("ListStock");
        return mav;
    }

    //METODO PARA ACTUALIZAR//
    @RequestMapping(value = "ListtStock.htm", method = RequestMethod.GET)
    public ModelAndView ActStock(HttpServletRequest request) {
        ID_ART = Integer.parseInt(request.getParameter("ID_ART"));
        String sql = "call DetalleArt(" + ID_ART + ")";
        datos = this.JdbcTemplate.queryForList(sql);
        mav.addObject("stock2", datos);
        mav.setViewName("ListtStock");
        return mav;
    }

    @RequestMapping(value = "ListtStock.htm", method = RequestMethod.POST)
    public ModelAndView ActStock(Articulo p) {
        String sql = "call UpdtStock(?,?)";
        this.JdbcTemplate.update(sql, p.getSTOCK_ART(), p.getID_ART());
        return new ModelAndView("redirect:/ListStock.htm");
    }

    //METODO PARA BORRAR//
    @RequestMapping("borrar.htm")
    public ModelAndView Borrar(HttpServletRequest request) {
        ID_ART = Integer.parseInt(request.getParameter("ID_ART"));
        String sql = "call DltArt(" + ID_ART + ")";
        this.JdbcTemplate.update(sql);
        return new ModelAndView("redirect:/ListStock.htm");
    }

    @RequestMapping("ArtND.htm")
    public ModelAndView ListArtNoDisp() {
        String sql = "call ListArtNoDisp";
        datos = this.JdbcTemplate.queryForList(sql);
        mav.addObject("ArticulosND", datos);
        mav.setViewName("ArtND");
        return mav;
    }

    //METODO PARA QUITAR EL DELETE//
    @RequestMapping("ActualizarD.htm")
    public ModelAndView ActualizarD(HttpServletRequest request) {
        ID_ART = Integer.parseInt(request.getParameter("ID_ART"));
        String sql = "call UpdtDisArt(" + ID_ART + ")";
        this.JdbcTemplate.update(sql);
        return new ModelAndView("redirect:/ArtND.htm");
    }

    @RequestMapping("ClienteList.htm")
    public ModelAndView ListaCliente() {
        String sql = "call ListCliente";
        datos = this.JdbcTemplate.queryForList(sql);
        mav.addObject("ListaC", datos);
        mav.setViewName("ClienteList");
        return mav;
    }
    
    @RequestMapping("reportes.htm")
    public ModelAndView Listar(){
        //TOTAL ARTICULOS
        String sql="call TotArt";
        datos=this.JdbcTemplate.queryForList(sql);
        mav.addObject("TA",datos);
        
        //TOTAL ARTICULOS DISPONIBLES
        String sql2="call TotArtDis";
        datos=this.JdbcTemplate.queryForList(sql2);
        mav.addObject("TAD",datos);
        
        //TOTAL ARTICULOS NO DISPONIBLE
        String sql3="call TotArtNDis";
        datos=this.JdbcTemplate.queryForList(sql3);
        mav.addObject("TAND",datos);
        
        //ARTICULOS POR AGOTARSE
        String sql4="call ArtAgot";
        datos=this.JdbcTemplate.queryForList(sql4);
        mav.addObject("APA",datos);
        
        //TOTAL CLIENTES
        String sql5="call TotCli";
        datos=this.JdbcTemplate.queryForList(sql5);
        mav.addObject("TC",datos);
        
        //TOTAL USUARIOS
        String sql6="call TotUsu";
        datos=this.JdbcTemplate.queryForList(sql6);
        mav.addObject("TU",datos);
        
        //TOTAL MARCAS
        String sql7="call TotMarc";
        datos=this.JdbcTemplate.queryForList(sql7);
        mav.addObject("TM",datos);
        
        mav.setViewName("reportes");
        return mav;
    }
}
