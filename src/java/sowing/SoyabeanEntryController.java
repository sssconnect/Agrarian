/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.agrarian.sowing;

import com.agrarian.dao.SampleDAO;
import com.agrarian.sow_vo.ValueObject;
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
@WebServlet(name = "SoyabeanEntryController", urlPatterns = {"/SoyabeanEntryController"})
public class SoyabeanEntryController extends HttpServlet {

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
        try{
            // Get all the info from request object
        
            //Create VO object

            //Set all the values in VO

            //Create object of DAO class

            //Call method of DAO

            // On the basis of outcome from DAO's method transfer control to
            // either success.jsp or error.jsp
            
            HttpSession session=request.getSession();
            String brand = request.getParameter("brand_name");
            int quantity = Integer.parseInt(request.getParameter("quantity"));
            int area = Integer.parseInt(request.getParameter("area"));
            String ten_date = request.getParameter("tentitive_date");
            String cur_date = request.getParameter("cur_d");
            
            ValueObject vo = new ValueObject();
            vo.setField1(brand);
            vo.setField2(quantity);
            vo.setField3(area);
            vo.setField4(ten_date);
            vo.setField5(cur_date);
            SampleDAO dao = new SampleDAO();
            boolean status = dao.saveSoyabean(vo);
            
            if(status == true){
                session.setAttribute("Message", "Successfully Saved");
                response.sendRedirect("soya_sh.jsp");
            } else {
                response.sendRedirect("soya_sh.jsp");
            }
            
            
        }catch(Exception e){
            e.printStackTrace();
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
