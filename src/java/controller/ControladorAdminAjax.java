/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import config.Conexion;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.json.simple.JSONArray;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


public class ControladorAdminAjax {

    Conexion conn = new Conexion();
    JdbcTemplate JdbcTemplate = new JdbcTemplate(conn.conectar());
    ModelAndView mav = new ModelAndView();
    List datos;

    //---------------------------MARCA------------------------------------//
    @RequestMapping("Marca.htm")
    public ModelAndView Listar() {
        mav.setViewName("Marca");
        return mav;
    }

    @RequestMapping(value = "listar.htm", method = RequestMethod.POST)
    public @ResponseBody
    String ListarJson(HttpServletRequest request) {
        String sql = "call Marc";
        datos = JdbcTemplate.queryForList(sql);
        JSONArray array = new JSONArray();
        String retorno = array.toJSONString(datos);
        return retorno;
    }

    @RequestMapping(value = "listarN.htm", method = RequestMethod.POST)
    public @ResponseBody
    String ListarNJson(HttpServletRequest request) {
        String sql = "call MarcN";
        datos = JdbcTemplate.queryForList(sql);
        JSONArray array = new JSONArray();
        String retorno = array.toJSONString(datos);
        return retorno;
    }

    @RequestMapping(value = "listarID.htm", method = RequestMethod.POST)
    public @ResponseBody
    String ListarJsonID(HttpServletRequest request) {
        int ID_MARCA = Integer.parseInt(request.getParameter("ID_MARCA"));
        String sql = "call MarcID(" + ID_MARCA + ")";
        datos = JdbcTemplate.queryForList(sql);
        JSONArray array = new JSONArray();
        String retorno = array.toJSONString(datos);
        return retorno;
    }

    @RequestMapping(value = "metodos.htm", method = RequestMethod.POST)
    public @ResponseBody
    String Operaciones(HttpServletRequest request) {
        String op = request.getParameter("op");
        String res = "";

        if (op.equals("insertar")) {
            try {
                String NOM_MARCA = request.getParameter("NOM_MARCA");

                String sql = "call AddMarca(?)";
                int filas = this.JdbcTemplate.update(sql, NOM_MARCA);
                if (filas > 0) {
                    res = "EXITO";
                } else {
                    res = "ERROR";
                }
            } catch (Exception e) {
                System.err.println("error" + e);
            }
        }

        if (op.equals("actualizar")) {
            int ID_MARCA = Integer.parseInt(request.getParameter("ID_MARCA"));
            String NOM_MARCA = request.getParameter("NOM_MARCA");

            String sql = "call UpdtMarca(?,?)";
            int filas = this.JdbcTemplate.update(sql, NOM_MARCA, ID_MARCA);
            if (filas > 0) {
                res = "Actualizado";
            } else {
                res = "Error Actualizar";
            }
        }

        if (op.equals("eliminar")) {
            int ID_MARCA = Integer.parseInt(request.getParameter("ID_MARCA"));

            String sql = "call DltetMarca(" + ID_MARCA + ")";
            int filas = this.JdbcTemplate.update(sql);
            if (filas > 0) {
                res = "Exito";
            } else {
                res = "Error";
            }
        }

        if (op.equals("eliminarN")) {
            int ID_MARCA = Integer.parseInt(request.getParameter("ID_MARCA"));

            String sql = "call NoDltetMarca(" + ID_MARCA + ")";
            int filas = this.JdbcTemplate.update(sql);
            if (filas > 0) {
                res = "Exito";
            } else {
                res = "Error";
            }
        }
        return res;
    }

    //---------------------------USUARIO------------------------------------//
    @RequestMapping("Usuario.htm")
    public ModelAndView listar() {
        mav.setViewName("Usuario");
        return mav;
    }

    @RequestMapping(value = "listar1.htm", method = RequestMethod.POST)
    public @ResponseBody
    String ListarJsonUsu(HttpServletRequest request) {
        String sql = "call ListUsuario";
        datos = JdbcTemplate.queryForList(sql);
        JSONArray array = new JSONArray();
        String retorno = array.toJSONString(datos);
        return retorno;
    }

    @RequestMapping(value = "listar2.htm", method = RequestMethod.POST)
    public @ResponseBody
    String ListarJsonUsu2(HttpServletRequest request) {
        String sql = "call Dist";
        datos = JdbcTemplate.queryForList(sql);
        JSONArray array = new JSONArray();
        String retorno = array.toJSONString(datos);
        return retorno;
    }

    @RequestMapping(value = "listar3.htm", method = RequestMethod.POST)
    public @ResponseBody
    String ListarJsonUsu3(HttpServletRequest request) {
        String sql = "call TipoUsu";
        datos = JdbcTemplate.queryForList(sql);
        JSONArray array = new JSONArray();
        String retorno = array.toJSONString(datos);
        return retorno;
    }

    @RequestMapping(value = "listarUN.htm", method = RequestMethod.POST)
    public @ResponseBody
    String ListarNJsonN(HttpServletRequest request) {
        String sql = "call ListUsuarioN";
        datos = JdbcTemplate.queryForList(sql);
        JSONArray array = new JSONArray();
        String retorno = array.toJSONString(datos);
        return retorno;
    }

    @RequestMapping(value = "listarIDU.htm", method = RequestMethod.POST)
    public @ResponseBody
    String ListarJsonIDU(HttpServletRequest request) {
        int ID_USU = Integer.parseInt(request.getParameter("ID_USU"));
        String sql = "call UsuID(" + ID_USU + ")";
        datos = JdbcTemplate.queryForList(sql);
        JSONArray array = new JSONArray();
        String retorno = array.toJSONString(datos);
        return retorno;
    }

    @RequestMapping(value = "metodosU.htm", method = RequestMethod.POST)
    public @ResponseBody
    String OperacionesU(HttpServletRequest request) {
        String op = request.getParameter("op");
        String res = "";

        if (op.equals("insertar")) {
            try {
                String NOM_USU = request.getParameter("NOM_USU");
                String APE_USU = request.getParameter("APE_USU");
                String DNI_USU = request.getParameter("DNI_USU");
                String DIR_USU = request.getParameter("DIR_USU");
                String CLAVE_USU = request.getParameter("CLAVE_USU");
                int ID_TIP_USU = Integer.parseInt(request.getParameter("ID_TIP_USU"));
                int ID_DIST = Integer.parseInt(request.getParameter("ID_DIST"));

                String sql = "call AddUsu(?,?,?,?,?,?,?)";
                int filas = this.JdbcTemplate.update(sql, NOM_USU, APE_USU, DNI_USU, DIR_USU, CLAVE_USU, ID_TIP_USU, ID_DIST);
                if (filas > 0) {
                    res = "EXITO";
                } else {
                    res = "ERROR";
                }
            } catch (Exception e) {
                System.err.println("error" + e);
            }
        }

        if (op.equals("actualizar")) {
            int ID_USU = Integer.parseInt(request.getParameter("ID_USU"));
            String NOM_USU = request.getParameter("NOM_USU");
            String APE_USU = request.getParameter("APE_USU");
            String DNI_USU = request.getParameter("DNI_USU");
            String DIR_USU = request.getParameter("DIR_USU");
            String CLAVE_USU = request.getParameter("CLAVE_USU");
            int ID_TIP_USU = Integer.parseInt(request.getParameter("ID_TIP_USU"));
            int ID_DIST = Integer.parseInt(request.getParameter("ID_DIST"));

            String sql = "call UpdtUsu(?,?,?,?,?,?,?,?)";
            int filas = this.JdbcTemplate.update(sql, 
                    NOM_USU,
                    APE_USU,
                    DNI_USU, 
                    DIR_USU,
                    CLAVE_USU,
                    ID_TIP_USU,
                    ID_DIST,
                    ID_USU);
            if (filas > 0) {
                res = "Actualizado";
            } else {
                res = "Error Actualizar";
            }
        }

        if (op.equals("eliminar")) {
            int ID_USU = Integer.parseInt(request.getParameter("ID_USU"));

            String sql = "call DltUsuario(" + ID_USU + ")";
            int filas = this.JdbcTemplate.update(sql);
            if (filas > 0) {
                res = "Exito";
            } else {
                res = "Error";
            }
        }

        if (op.equals("eliminarN")) {
            int ID_USU = Integer.parseInt(request.getParameter("ID_USU"));

            String sql = "call NoDltUsuario(" + ID_USU + ")";
            int filas = this.JdbcTemplate.update(sql);
            if (filas > 0) {
                res = "Exito";
            } else {
                res = "Error";
            }
        }
        return res;
    }

}
