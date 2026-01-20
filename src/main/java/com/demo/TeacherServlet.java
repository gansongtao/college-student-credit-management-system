package com.demo;

import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.model.Schedule;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet("/teacherServlet.do")
public class TeacherServlet extends HttpServlet implements com.dao.Dao {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        Schedule[] schedule = new Schedule[100];
        int totalCredit = 0, stuID = Integer.parseInt(request.getParameter("stuID"));
        String name = "刘涛", sql = "select ganst_curriculum.gst_course, gst_year, ganst_curriculum.gst_term, gst_credit from ganst_result, ganst_curriculum where ganst_result.gst_course=ganst_curriculum.gst_course and ganst_curriculum.gst_teaname=?";
        try {
            Connection conn = getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            int i = 0;
            while (rs.next()) {
                schedule[i].setCourse(rs.getString("gst_course"));
                schedule[i].setCredit(rs.getInt("gst_credit"));
                schedule[i].setYear(rs.getString("gst_year"));
                schedule[i].setTerm(rs.getString("ganst_curriculum.gst_term"));
            }
            sql = "select total from total_credit where gst_stuid=?";
            ps = conn.prepareStatement(sql);
            ps.setInt(1, stuID);
            rs = ps.executeQuery();
            if (rs.next())
                totalCredit = rs.getInt("total");
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        request.setAttribute("schedule", schedule);
        request.setAttribute("stuID", stuID);
        request.setAttribute("totalCredit", totalCredit);
        request.setAttribute("name", name);
        getServletContext().getRequestDispatcher("teacher_index.jsp").forward(request, response);
    }
}