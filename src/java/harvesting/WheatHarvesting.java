/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.agrarian.harvesting;

import com.agrarian.dao.SampleDAO;
import com.agrarian.harveste_vo.HarvestingValueObject;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Pankaj Kharetwal
 */
@WebServlet(name = "WheatHarvesting", urlPatterns = {"/WheatHarvesting"})
public class WheatHarvesting extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            String hName = request.getParameter("harvest_name");
            int area = Integer.parseInt(request.getParameter("area"));
            String tenDate = request.getParameter("ten_date");
            String curDate = request.getParameter("cur_d");
            HarvestingValueObject vo = new HarvestingValueObject();
            vo.setField1(hName);
            vo.setField2(area);
            vo.setField3(tenDate);
            vo.setField4(curDate);
            SampleDAO dao = new SampleDAO();
            boolean status = dao.saveWheatHarvesting(vo);
            HttpSession session=request.getSession();
            if(status == true){
                session.setAttribute("Message", "Successfully Saved");
                response.sendRedirect("harvesting_wheat.jsp");
            } else {
                response.sendRedirect("harvesting_wheat.jsp");
            }
        } catch (Exception e) {
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
