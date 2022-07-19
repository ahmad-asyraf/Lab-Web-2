/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package lab6.task5;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import lab6.task5.Database;
/**
 *
 * @author Asyraf
 */
public class MarathonDAO {
    
    public MarathonDAO() throws ClassNotFoundException {
        Connection con = Database.getConnection();
    }
    
    public int addDetails(Marathon marathon) throws ClassNotFoundException {
        int result = 0;
        try {
            Connection con = Database.getConnection();
            
            String sql = "INSERT INTO marathon(icno, name, category) VALUES(?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, marathon.getIcno());
            ps.setString(2, marathon.getName());
            ps.setString(3, marathon.getCategory());
            
            result = ps.executeUpdate();
            
            con.close();
        }
        catch (SQLException e) { }
        return result;
    }
}