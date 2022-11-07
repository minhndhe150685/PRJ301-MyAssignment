/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import java.awt.Account;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Account;

/**
 *
 * @author ACER
 */
public class AccountDAO  extends DBContext{

    public Account login(String accountId, String password) {
        try {
            List<Account> list = new ArrayList<>();
            Connection conn = new DBContext().getConnection();
            String sql = "select * from Account where accountid = '?' and password = '?'";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, accountId);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Account account = new Account(
                        rs.getString(1),
                        rs.getString(2));
                        
                return account;
            }
        } catch (Exception ex) {
            ex.printStackTrace(System.out);
        }
        return null;
    }
    
}
