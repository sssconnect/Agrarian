/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.agrarian.fertilization;

import com.agrarian.dao.SampleDAO;
import com.agrarian.fertilize_vo.FertilizationValueObject;
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
@WebServlet(name = "SoyabeanFertilization", urlPatterns = {"/SoyabeanFertilization"})
public class SoyabeanFertilization extends HttpServlet {

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
        try (PrintWriter out = response.getWriter())
        {
            String Name = request.getParameter("fertilize_name");
            String weed_killer = request.getParameter("weed_killer_id");
            String pesticides=request.getParameter("pesticides_id");
            String tonic=request.getParameter("tonic_id");
            String cur_date=request.getParameter("cur_d");
            int wdklr_quantity =Integer.parseInt(request.getParameter("weed_quantity_id"));
            int pesti_quantity=Integer.parseInt(request.getParameter("pesti_quantity_id"));
            int tonic_quantity=Integer.parseInt(request.getParameter("tonic_quantity_id"));
            int AREA=Integer.parseInt(request.getParameter("area_id")); 
            FertilizationValueObject vo = new FertilizationValueObject();
            vo.setField1(Name);
            vo.setField2(weed_killer);
            vo.setField4(pesticides);
            vo.setField6(tonic);
            vo.setField9(cur_date);
            vo.setField3(wdklr_quantity);
            vo.setField5(pesti_quantity);
            vo.setField7(tonic_quantity);
            vo.setField8(AREA);
            SampleDAO dao = new SampleDAO();
            boolean status = dao.saveSoyabeanFertilization(vo);
            
            HttpSession session=request.getSession();
            if(status == true){
                session.setAttribute("Message", "Successfully Saved");
                response.sendRedirect("fertilization_soya.jsp");
            } else {
                response.sendRedirect("fertilization_soya.jsp");
            }
	
        }
        catch(Exception e)
        {
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
