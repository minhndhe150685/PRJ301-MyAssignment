/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Skill;

/**
 *
 * @author ACER
 */
public class SkillDAO {
    public List<Skill> getAll() {
        try {
            List<Skill> list = new ArrayList<>();

            Connection conn = new DBContext().getConnection();
            String sql = "select * from Skills";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Skill skill = new Skill(
                        rs.getInt(1),
                        rs.getString(2));
                        
                list.add(skill);
            }
            return list;
        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        }
        return null;
    }

}
