package Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Base.Base;
import Bean.Article;

/**
 * Servlet implementation class Servlet_article
 */
@WebServlet("/art")
public class Servlet_article extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet_article() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
	
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		boolean valide = true;
		String nom= request.getParameter("nom-aut");
		if (nom.isEmpty()) {nom="";valide=false;}
		String contenu = request.getParameter("contenu");
		if (contenu.isEmpty()){contenu="";valide=false;}
		String date = request.getParameter("date");
		if (date.isEmpty()){date="";valide=false;}
		String titre = request.getParameter("titre");
		if (titre.isEmpty()){titre="";valide=false;}
		
		
		
		if (valide){
			Base b = new Base();
			Article a = new Article();
			try {
				b.ouvrir();
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			a.setAuteur(nom);
			a.setTitre(titre);
			a.setContenu(contenu);
			a.setDate(date);
		
			b.enregistrerArticle(a);
			 
			
			this.getServletContext().getRequestDispatcher("/ajout-article.jsp").forward(request, response);
			
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
