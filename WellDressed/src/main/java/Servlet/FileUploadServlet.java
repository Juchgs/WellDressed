/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import hibernatePersistent.fashionista.Fashionista;
import hibernatePersistent.fashionista.FashionistaDAO;
import hibernatePersistent.fashionista.Peca;
import hibernatePersistent.fashionista.PecaDAO;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author aluno
 */
@MultipartConfig
public class FileUploadServlet extends HttpServlet {

    private final static Logger LOGGER
            = Logger.getLogger(FileUploadServlet.class.getCanonicalName());

    protected void processRequest(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        PecaDAO pecaDAO = new PecaDAO();
        Peca peca = new Peca();
        
        byte[] bytes = imageToByte(request.getPart("file").getInputStream());
        
      // peca.setFoto((request.getParameter("file")).getBytes());  
       peca.setFoto(bytes);
       peca.setCod_peca(Integer.valueOf(request.getParameter("codigoPeca")));
        
        //Na linha abaixo estamos mandando o DAO salvar o seu objeto peca        
        pecaDAO.addPeca(peca);
        
// As linhas abaixo, servem como exemplo  para mostrar como você ira retornar na tela a imagem que vier do banco
// a variavel bytes deverá ser peca.getFoto
//Você precisa agora criar no PecaDAO um metodo para buscar uma peca a partir do seu código.
        response.setContentType("image/png");
        response.getOutputStream().write(bytes);
        response.getOutputStream().flush();
        response.getOutputStream().close();   
        response.sendRedirect("mostraImg.jsp");
    }  
        
    /**
     * Este metodo serve para converter o InputStream de uma imagem em bytes para 
     * ser armezanado numa coluna do tipo bytea no postegree
     * @param fis
     * @return
     * @throws FileNotFoundException 
     */
    public static byte [] imageToByte(InputStream fis) throws FileNotFoundException{
        ByteArrayOutputStream bos = new ByteArrayOutputStream();
        byte[] buf = new byte[1024];
        try {
            for (int readNum; (readNum = fis.read(buf)) != -1;) {
                bos.write(buf, 0, readNum);      
                System.out.println("read " + readNum + " bytes,");
            }
        } catch (IOException ex) {
        }
        byte[] bytes = bos.toByteArray();
     
     return bytes; 
    }
        
   /* private String createFile (HttpServletRequest request) throws Exception {
        
        public static byte [] FotoToByte(File file) throws FileNotFoundException {
             FileInputStream fis = new FileInputStream(file);
	        ByteArrayOutputStream bos = new ByteArrayOutputStream();
	        byte[] buf = new byte[1024];
	        try {
	            for (int readNum; (readNum = fis.read(buf)) != -1;) {
	                bos.write(buf, 0, readNum);     
	                System.out.println("read " + readNum + " bytes,");
	            }
	        } 
                catch (Exception ex) {
	        }
	        byte[] bytes = bos.toByteArray();
	 return bytes;
        }
    }

   /* private String createFile(HttpServletRequest request) throws IOException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    
        
          
     // Create path components to save the file
        String path = "/tmp";
        Part filePart = request.getPart("file");
        String fileName = getFileName(filePart);

        OutputStream out = null;
        InputStream filecontent = null;
        //final PrintWriter writer = response.getWriter();

        try {
            // essa parte pega o arquivo da pagina
            out = new FileOutputStream(new File(path + File.separator
                    + fileName));
            filecontent = filePart.getInputStream();

            int read = 0;
            final byte[] bytes = new byte[1024];

            // e salva no hd do servidor
            while ((read = filecontent.read(bytes)) != -1) {
                out.write(bytes, 0, read);
            }
            
            //Essa parte mostra a mensagem na tela
           // writer.println("New file " + fileName + " created at " + path);
            LOGGER.log(Level.INFO, "File{0}being uploaded to {1}",
                    new Object[]{fileName, path});
         
catch (Exception fne) {
           // writer.println("You either did not specify a file to upload or are "
                 //   + "trying to upload a file to a protected or nonexistent "
                 //   + "location.");
           // writer.println("<br/> ERROR: " + fne.getMessage());

            LOGGER.log(Level.SEVERE, "Problems during file upload. Error: {0}",
                    new Object[]{fne.getMessage()});
        } finally {
            if (out != null) {
                out.close();
            }
            if (filecontent != null) {
                filecontent.close();
            }
          //  if (writer != null) {
            //    writer.close();
           // }
        }
        return path + fileName ;
    }
    /* private String getFileName(final Part part) {
        final String partHeader = part.getHeader("content-disposition");
        LOGGER.log(Level.INFO, "Part Header = {0}", partHeader);
        for (String content : part.getHeader("content-disposition").split(";")) {
            if (content.trim().startsWith("filename")) {
                return content.substring(
                        content.indexOf('=') + 1).trim().replace("\"", "");
            }
        }
        return null;
    }*/
     
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

