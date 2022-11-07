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
import model.CharacterModel;

/**
 *
 * @author ACER
 */
public class CharacterDAO {

    public void addCharacter(String cid, String name, boolean gender) {
        try {
            List<CharacterModel> list = new ArrayList<>();

            Connection conn = new DBContext().getConnection();
            String sql = "INSERT INTO [dbo].[Characters]\n"
                    + "			([cid]\n"
                    + "			,[name]\n"
                    + "			,[gender]\n"
                    + "			,[created_date])\n"
                    + "		VALUE\n"
                    + "		(?,?,?,getDate())";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, cid);
            ps.setString(2, name);
            ps.setBoolean(3, gender);
            ps.executeUpdate();

        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        }

    }

    public void addCharacterSkill(String cid, String[] skills) {
        try {
            List<CharacterModel> list = new ArrayList<>();

            Connection conn = new DBContext().getConnection();
            String sql = "INSERT INTO [dbo].[Characters]\n"
                    + "			([cid]\n"
                    + "			,[sid]\n"
                    + "		VALUE\n"
                    + "		(?,?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            for (String skill : skills) {
                ps.setString(1, cid);
                ps.setInt(2, Integer.parseInt(skill));
                ps.executeUpdate();
            }
            

        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        }
    }

}
