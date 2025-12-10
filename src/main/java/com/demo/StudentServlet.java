package com.demo;

import com.model.Choices;
import com.model.StudentScore;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet("/studentServlet.do")
public class StudentServlet extends HttpServlet implements com.dao.Dao{
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        StudentScore[] myScore = new StudentScore[100];
        Choices[] choices = new Choices[100];
        String name = "王建平", sql = "select ganst_result.gst_course, gst_score, gst_credit from ganst_result, ganst_curriculum where gst_stuid=(select gst_stuid from ganst_stu where gst_student=?)";
        try {
            Connection conn = getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            ResultSet rs = ps.executeQuery();
            int i = 0;
            while (rs.next()) {
                myScore[i] = new StudentScore();
                myScore[i].setScore(rs.getInt("gst_score"));
                myScore[i].setCredit(rs.getInt("gst_credit"));
                myScore[i].setCourse(rs.getString("gst_course"));
                i++;
            }
            sql = "select gst_course, gst_term from ganst_curriculum where gst_classid=(select gst_classid from ganst_class where gst_stuid=(select gst_stuid from ganst_stu where gst_student=?))";
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            i = 0;
            while (rs.next()) {
                choices[i].setTerm(rs.getString("gst_term"));
                choices[i].setCourse(rs.getString("gst_course"));
                i++;
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        request.setAttribute("myScore", myScore);
        request.setAttribute("choices", choices);
        request.setAttribute("name", name);
        getServletContext().getRequestDispatcher("student_index.jsp").forward(request, response);
    }
}