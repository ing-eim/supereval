/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pbi.supeval.model;

import java.io.InputStream;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import pbi.supeval.base.JCGlobals;
import pbi.supeval.base.dbConnect;

/**
 *
 * @author depdes10
 */
public class Upload_File_model {
    private InputStream file;
    private String c_i_placa;
    private int type_file;
    private int pk_i_claseytipo;
    //in c_i_placai int, in pk_i_clasedoci int ,in pk_i_tipoblobi int,in c_v_usuarioi int , in perblobi longblob
    public Upload_File_model(InputStream file, String c_i_placa, int type_file, int pk_i_claseytipo){
        this.file = file;
        this.c_i_placa = c_i_placa;
        this.pk_i_claseytipo = pk_i_claseytipo;
        this.type_file = type_file;        
    }
    
    public boolean InsertaArchivo(){
        boolean salida;
        Connection conn = new dbConnect().getConnection();
        int Numreg = 0;
        JCGlobals jc = new JCGlobals();
        
        try{
            String query = "{call db_pbi_files.SPUploadFile(?,?,?,?,?)}";
            CallableStatement stmt;
            stmt = conn.prepareCall(query);
            stmt.setInt(1,Integer.parseInt(this.c_i_placa));
            stmt.setInt(2,this.pk_i_claseytipo);/*142 OFICIOS DE COMISION */
            stmt.setInt(3,this.type_file);
            stmt.setInt(4, Integer.parseInt(jc.getNoEmp()));
            stmt.setBlob(5,this.file);
            boolean hadResults = stmt.execute();
             // print headings            
            System.out.println("========= SUBIENDO ARCHIVO  =======================");
             while (hadResults) {
                ResultSet rs = stmt.getResultSet();
                while(rs.next()){
                    Numreg = rs.getInt("error");
                    jc.setMsg(rs.getString("msg"));
                }                
                hadResults = stmt.getMoreResults();
            } 
            stmt.close();                        
            conn.close();
        }catch(Exception w){
            System.out.println("¡ ERROR !"+w.getMessage());            
        }
        
        System.out.println(jc.getMsg());
        
        if( Numreg > 0 )
            salida = false;
        else
            salida = true;
        
        return salida;
    }
    
    
    
}
