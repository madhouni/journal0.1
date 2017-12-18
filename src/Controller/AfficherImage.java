package Controller;

import java.io.IOException;
import java.io.OutputStream;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import Base.Base;
import Bean.Image;
import Bean.Utilisateur;

/**
 * Servlet implementation class AfficherImage
 */
@WebServlet("/AfficherImage")
public class AfficherImage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AfficherImage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		//String ta = request.getParameter("lololo");
		String ta = "lololo";
		Base b = new Base();
		try {
			b.ouvrir();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 Blob im = null;  
		 byte[] imgData = null;
		String a=request.getParameter("id");
		ArrayList<Image> k = b.listerImage();
		//Iterator<Image>
		
		
		for (int i=1 ; i<k.size();i++)
	    	{ //System.out.println(k.get(i).getNom());
			//  System.out.println(k.get(i).getTitre());
			  if (k.get(i).getTitre_article().equals(a))
	    	{
	    		Image image = new Image();
	    		image.setAuteur(k.get(i).getAuteur());
	    		image.setPhoto(k.get(i).getPhoto());
	    		image.setTitre(k.get(i).getTitre());
	    		image.setTitre_article(k.get(i).getTitre_article());
	    		im=image.getPhoto();
	    		System.out.println("zakaria");
	    		try {
					System.out.println(im.length());
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
	    		break;
	    	}
	    	}
		 
	    	
		 try {
				imgData = im.getBytes(1,(int)im.length());
				// Read Blob
			} 
		  catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		  
		  response.setContentType("image/jpeg"); // Send and return picture
	       OutputStream o = response.getOutputStream();
	       o.write(imgData);       // Write image in outputStream
	       o.flush();
	       o.close();
	    		 
		
		
		
		
		
	
	
	
	
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
