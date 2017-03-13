/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import hibernatePersistent.fashionista.Fashionista;
import hibernatePersistent.fashionista.FashionistaDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.JSONArray;
import org.json.JSONObject;

@WebServlet(name = "ListaFashionista", urlPatterns = {"/ListaFashionista"})

public class ListaFashionista extends HttpServlet {

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
        
        FashionistaDAO fashiondao = new FashionistaDAO();
         
        
        if (request.getParameterValues("nome") == null) {
            List<Fashionista> fashionistas = fashiondao.listFashionista();
            request.getSession(true).setAttribute("fashionistas", fashionistas);
            response.sendRedirect("listaTotal.jsp");
        }
        
        else {
            List<Fashionista> fashionistas = fashiondao.listFashionistaByName(request.getParameterValues("nome")[0].toString());
            
            response.setContentType("application/json");
            response.setCharacterEncoding("utf-8");
            PrintWriter out = response.getWriter();
            
            JSONArray jsonArray = new JSONArray();
            
            
       

            for (Fashionista fashionista : fashionistas) {
              JSONObject json = new JSONObject();
                json.put("nome",fashionista.getNome());
                  jsonArray.put(json);
                        
                }
      
                out. print(jsonArray.toString());
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
