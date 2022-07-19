/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package lab6.task3;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 *
 * @author Asyraf
 */
public class Student {
    
    private String stuId, stuName, address, program;

    public String getStuId() {
        Pattern pt = Pattern.compile("[A-Z0-9]*");
        Matcher mt = pt.matcher(stuId);
        boolean b1 = mt.matches();
        String valid;
        if(b1 == true) {
            valid = stuId;
        }
        else {
            String invalid = null;
            valid = invalid;
        }
        return valid;
    }

    public void setStuId(String stuId) {
        this.stuId = stuId;
    }

    public String getStuName() {
        return stuName;
    }

    public void setStuName(String stuName) {
        this.stuName = stuName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getProgram() {
        return program;
    }

    public void setProgram(String program) {
        this.program = program;
    }
}