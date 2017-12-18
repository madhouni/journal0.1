package Controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import Base.Base;

import javax.servlet.annotation.*;
/**
 * Servlet implementation class PicController
 */


@WebServlet("/uplI")
@MultipartConfig(maxFileSize = 16177215)
public class uplI extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public uplI() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Base b = new Base();
		String titre =(String) request.getParameter("titre-image");
		String auteur =(String) request.getParameter("auteur");
		String titre_article =(String) request.getParameter("titre-article");
		System.out.println(titre);
	   
	   try {
		b.ouvrir();
	} catch (ClassNotFoundException e1) {
		// TODO Auto-generated catch block
		e1.printStackTrace();
	}
	   
	   	InputStream inputStream = null;
		
		 Part filePart = request.getPart("file");
		 
		 
		 if (filePart != null) {
	            // prints out some information for debugging
	            
	             
	            // obtains input stream of the upload file
	            inputStream = filePart.getInputStream();
	            }
		 try {
			b.enregistrerImage(inputStream,auteur,titre,titre_article);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
