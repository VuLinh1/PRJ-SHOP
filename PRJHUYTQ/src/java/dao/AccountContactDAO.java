/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import connection.SQLServerConnection;
import entity.AccountContact;
import entity.Category;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author DELL
 */
public class AccountContactDAO {

    public List<AccountContact> getAll(int accountId) {
        String sql = "select * from AccountContact where accountId = ?";//

        try ( Connection connection = SQLServerConnection.getConnection();  PreparedStatement ps = connection.prepareStatement(sql);) {
            ps.setObject(1, accountId);
            ResultSet rs = ps.executeQuery();
            List<AccountContact> list = new ArrayList<>();//
            while (rs.next()) {
                AccountContact obj = AccountContact.builder()
                        .accountContactId(rs.getInt("accountContactId"))
                        .accountId(rs.getInt("accountId"))
                        .accountContactAddress(rs.getString("accountContactAddress"))
                        .accountContactName(rs.getString("accountContactName"))
                        .accountContactMobile(rs.getString("accountContactMobile"))
                        .accountContactDefault(rs.getBoolean("accountContactDefault"))
                        .build();
                list.add(obj);
            }
            return list;
        } catch (SQLException e) {
            e.printStackTrace(System.out);
        }
        return null;
    }
    
    public static void main(String[] args) {
        System.out.println(new AccountContactDAO().getAll(3));
    }
}
