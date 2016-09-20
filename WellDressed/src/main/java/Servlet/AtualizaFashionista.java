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
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.HibernateException;

public class AtualizaFashionista extends HttpServlet {

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
       
        Fashionista fashionista = (Fashionista) request.getSession(true).getAttribute("currentSessionUser");
        FashionistaDAO fashidao = new FashionistaDAO();
       
        String email = request.getParameter("email");
        String nome = request.getParameter("nome");
       
       
        String senha = request.getParameter("senha");
        String sobrenome = request.getParameter("sobrenome");
        String municipio = request.getParameter("municipio");
        SimpleDateFormat format = new SimpleDateFormat ("dd/MM/yyyy");
        Date data_nascimento = null;
       try {
            data_nascimento = format.parse(request.getParameter("data_nascimento"));
        } catch (ParseException ex) {

            System.err.println("Escreva direito");
        }
        fashionista.setData_nascimento(data_nascimento);
        Integer ddd = Integer.parseInt(request.getParameter("ddd"));
        Integer numero = Integer.parseInt(request.getParameter("numero"));
        char sexo = request.getParameter("sexo").charAt(0);
        String pais = request.getParameter("pais");
        String bairro = request.getParameter("bairro");
        String complemento = request.getParameter("complemento");
        String tipo_logradouro = request.getParameter("tipo_logradouro");
        String logradouro = request.getParameter("logradouro");
        Integer num_logradouro = Integer.parseInt(request.getParameter("num_logradouro"));
        String uf = request.getParameter("uf");
       
        fashionista = fashidao.updateFashionista(fashionista.getEmail(), email, nome, senha, sobrenome, municipio, data_nascimento, ddd, numero, sexo, pais, bairro, complemento, tipo_logradouro, logradouro, num_logradouro, uf);
        request.getSession(true).setAttribute("currentSessionUser", fashionista);
       
        response.sendRedirect("Configuracoes.jsp");
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