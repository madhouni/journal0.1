package Controller;

import java.io.IOException;
import java.util.ArrayList;

import Base.Base;
import Bean.Article;
import Bean.Utilisateur;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Servlet_authentification
 */
@WebServlet("/Authen")
public class Servlet_authentification extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet_authentification() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		String errnom ="";
		String errpass="";
		boolean trouve = false;
		String username = request.getParameter("nom");
		String pass = request.getParameter("pass");
		if (username == null){username=""; errnom="veuillez entrez votre nom";trouve=false;}
		if (pass == null){pass="";errpass="veuillez entrez votre nom";trouve=false;}
		
		
		Base b = new Base();
		try {
			b.ouvrir();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    ArrayList<Utilisateur> k =  b.listerUtilisateur();
	    for (int i=0 ; i<k.size();i++)
	    	{ //System.out.println(k.get(i).getNom());
	    	
	    	if (k.get(i).getNom().equals( username) && k.get(i).getPassword().equals(pass))
	    		
	    	{ 
	    		trouve=true;
	    		Utilisateur u = new Utilisateur();
	    		 u.setDroit(k.get(i).getDroit());
	    		 u.setNom(k.get(i).getNom());
	    		 u.setPrenom(k.get(i).getPrenom());
	    		 u.setPassword(k.get(i).getPassword());
	    		 request.getSession().setAttribute("utilisateur",u);
	    		 
	    		 ArrayList<Article> article = b.listerArticle();  //=b.listerArticle();
	    			request.setAttribute("article", article);
	    			System.out.println(k.get(i).getDroit());
	    		 if(k.get(i).getDroit().equals("admin")) {this.getServletContext().getRequestDispatcher("/articleadmin.jsp").forward(request, response);break;}
	    		 else { this.getServletContext().getRequestDispatcher("/articlejsp.jsp").forward(request, response);break;}
	    			
	    	}
	    	
	    	
	    	}
	    		
	    
	  

		
		
		
	
	if (!trouve){	
		request.getSession().setAttribute("errnom", errnom);
		request.getSession().setAttribute("errpass", errpass);
		this.getServletContext().getRequestDispatcher("/authent.jsp").forward(request, response);}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
