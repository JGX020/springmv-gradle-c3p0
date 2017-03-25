package com.mkyong.helloworld.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import com.mchange.v2.c3p0.ComboPooledDataSource;
@Service
public class databaseService {

    private static final Logger logger = LoggerFactory.getLogger(databaseService.class);
    static ComboPooledDataSource cpds=null;
    static{
        //
        //cpds = new ComboPooledDataSource("oracle");//
        cpds = new ComboPooledDataSource("mysql");//
    }
    /**
     *
     * @return   Connection
     */
    public static Connection getConnection(){
        try {
            return cpds.getConnection();
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    /**
     *
     * @param conn
     * @param st
     * @param pst
     * @param rs
     */
    public static void close(Connection conn,PreparedStatement pst,ResultSet rs){
        if(rs!=null){
            try {
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if(pst!=null){
            try {
                pst.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        if(conn!=null){
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }


}