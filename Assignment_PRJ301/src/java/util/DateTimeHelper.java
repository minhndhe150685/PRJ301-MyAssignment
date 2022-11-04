/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package util;

import java.sql.Date;
import java.time.LocalDate;

/**
 *
 * @author ACER
 */
public class DateTimeHelper {
    public static float getDaystoCurrent(Date d)
    {
        java.util.Date e = new java.util.Date(d.getTime());
        java.util.Date current = new java.util.Date();
        long diff = current.getTime() - e.getTime();
        return ((float)diff / (1000*60*60*24));
    }
    public static void main(String[] args) {
        DateTimeHelper.getDaystoCurrent(Date.valueOf(LocalDate.MAX));
        System.out.println(DateTimeHelper.getDaystoCurrent(Date.valueOf("20/10/2001")));
    }
}
