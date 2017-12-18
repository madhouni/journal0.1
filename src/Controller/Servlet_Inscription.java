package Controller;

import java.io.IOException;
import java.util.ArrayList;

import Bean.Article;
import Bean.Utilisateur;
import Base.Base;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Servlet_Inscription
 */
@WebServlet("/Servlet")
public class Servlet_Inscription extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet_Inscription() {
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
		
		
		
		
		String nom; 
		nom= request.getParameter("nom") ;
		String prenom = request.getParameter("prenom") ;
		String pass = request.getParameter("pass") ;
		String passbis = request.getParameter("passbis") ;
		
				//enregistrement en bd 
				//Utilisateur u = new Utilisateur();
				{
				Utilisateur u = new Utilisateur();
				u.setNom(nom);
				u.setPrenom(prenom);
				u.setPassword(pass);
				u.setDroit("client");
				
				Base b = new Base();
				try {
					b.ouvrir();
					b.enregistrerUtilisateur(u);
					ArrayList<Article> article = b.listerArticle();  //=b.listerArticle();
	    			request.setAttribute("article", article);
					b.fermer();}
				 catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				
				 }
				}
				 
				
				this.getServletContext().getRequestDispatcher("/articlejsp.jsp").forward(request, response);}
			
			
			
			
	}

			
				
	


