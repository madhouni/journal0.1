package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Base.Base;
import Bean.Article;

/**
 * Servlet implementation class Servlet_sup
 */
@WebServlet("/Servlet_sup")
public class Servlet_sup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet_sup() {
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
			
		
			b.supprimerArticle(a);
			this.getServletContext().getRequestDispatcher("/sup.jsp").forward(request, response);
			 
			
		
	
	
	
	
	
	
	
	
	}}

}
