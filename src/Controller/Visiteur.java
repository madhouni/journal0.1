package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Base.Base;
import Bean.Article;
import Bean.Utilisateur;

/**
 * Servlet implementation class Visiteur
 */
@WebServlet("/Visiteur")
public class Visiteur extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Visiteur() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		
		
		
		Base b = new Base();
		try {
			b.ouvrir();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
					ArrayList<Article> article = b.listerArticle();  
	    			request.setAttribute("article", article);
	    			System.out.println(article.get(0).getAuteur());
	    		
	    		  this.getServletContext().getRequestDispatcher("/art.jsp").forward(request, response);
	    		 
	    		 
	    }
	    		 
	    
	    
	  

		
		
		
	
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
