/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package config;

import org.springframework.jdbc.datasource.DriverManagerDataSource;



public class Conexion {
    public DriverManagerDataSource conectar() {
        DriverManagerDataSource data = new DriverManagerDataSource();
        data.setDriverClassName("com.mysql.jdbc.Driver");
        data.setUrl("jdbc:mysql://localhost:3306/BDMorita");
        data.setUsername("root");
   //     data.setPassword("");
        data.setPassword("");
        return data;
    }
}


