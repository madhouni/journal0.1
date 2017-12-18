package Base;

import java.io.FileInputStream;
import java.io.InputStream;

import java.sql.Connection;

import Bean.Article;
import Bean.Image;
import Bean.Utilisateur;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;





public class Base {

	String url = null;
	String user = null;
	String password = null;
	
	
	
	Connection co = null;
	
	public boolean ouvrir() throws ClassNotFoundException {
		boolean res = false;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			co = DriverManager.getConnection("jdbc:mysql://localhost/journal","root","");
			res = true;
			System.out.println("ouverture de la base de donnée journal :)");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			//e.printStackTrace();
			System.out.println("Erreur Base.ouvrir "+e.getMessage());
		}
		return res;
	}
	
	public boolean fermer() {
		boolean res = false;
		if (co != null) try {co.close(); res=true;System.out.println("fermeture de la base de donnée journal :)");} catch (Exception e){}
		return res;
	}
	
	
	
	public boolean enregistrerUtilisateur(Utilisateur u) {
		boolean res = false;
		String sql = "insert into utilisateur (nom, prenom, password,droit) values (?, ?, ?,?)";
		try {
			PreparedStatement ps = co.prepareStatement(sql);
			ps.setString(1, u.getNom());
			ps.setString(2, u.getPrenom());
			ps.setString(3, u.getPassword());
			ps.setString(4, u.getDroit());
			int v = ps.executeUpdate();
			if (v == 1) res = true;
		}
		catch (Exception e) {
			System.out.println("Erreur Base.enregistrerLivre "+e.getMessage());
		}
		return false;
	}
	
	
	
	
	public ArrayList<Utilisateur>listerUtilisateur() {
		ArrayList<Utilisateur> lst = new ArrayList<Utilisateur>();
		
		String sql = "select *from utilisateur";
		try {
			PreparedStatement ps = 
					co.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Utilisateur u = new Utilisateur();
				u.setNom(rs.getString("nom"));
				u.setPrenom(rs.getString("prenom"));
				u.setDroit(rs.getString("droit"));
				u.setPassword(rs.getString("password"));
				lst.add(u);
			}
		}
		catch (Exception e) {
			System.out.println("Erreur Base.listerUtilisateur "+e.getMessage());
		}
		return lst;
	
	}
	
	
	
	
	public boolean enregistrerArticle(Article a) {
		boolean res = false;
		String sql = "insert into article (nom_auteur,titre, contenu,date) values (?,?, ?, ?)";
		try {
			PreparedStatement ps = co.prepareStatement(sql);
			ps.setString(1, a.getAuteur());
			ps.setString(2, a.getTitre());
			ps.setString(3, a.getContenu());
			ps.setString(4, a.getDate());
			int v = ps.executeUpdate();  
			if (v == 1) res = true;
		}
		catch (Exception e) {
			System.out.println("Erreur Base.enregistrerLivre "+e.getMessage());
		}
		return false;
	}
	
	
	public ArrayList<Article>listerArticle() {
		ArrayList<Article> lst = new ArrayList<Article>();
		
		String sql = "select *from article order by date";
		try {
			PreparedStatement ps = 
					co.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Article a = new Article();
				a.setAuteur(rs.getString("nom_auteur"));
				a.setContenu(rs.getString("contenu"));
				a.setTitre(rs.getString("titre"));
				a.setDate(rs.getString("date"));
				lst.add(a);
			}
		}
		catch (Exception e) {
			System.out.println("Erreur Base.listerUtilisateur "+e.getMessage());
		}
		return lst;
	
	}
	
	
	public boolean supprimerArticle(Article a) {
		boolean res = false;
		String sql = "delete from article where nom_auteur=? and titre=? ";
		try {
			PreparedStatement ps = co.prepareStatement(sql);
			ps.setString(1, a.getAuteur());
			ps.setString(2, a.getTitre());
			int v = ps.executeUpdate();  
			if (v == 1) res = true;
		}
		catch (Exception e) {
			System.out.println("Erreur Base.suprrimerarticle "+e.getMessage());
		}
		return false;
	}
	
	
	
	

	public boolean enregistrerImage(InputStream inputStream ,String auteur,String titre , String titre_article ) throws SQLException {
		boolean res = false;
		String sql = "INSERT INTO image(photo,auteur,titre,titre_article) VALUES(?,?,?,?) ";
		ResultSet rst = null;
		 FileInputStream fis = null;
		 PreparedStatement ps = co.prepareStatement(sql);
		  if (inputStream != null) {
              // fetches input stream of the upload file for the blob column
             ps.setBlob(1, inputStream);
          }
		  ps.setString(2, auteur);
		  ps.setString(3, titre);
		  ps.setString(4,titre_article);
		    int row = ps.executeUpdate();
          

		
		return false;
	}
	
	
	
	public ArrayList<Image>listerImage() {
		ArrayList<Image> lst = new ArrayList<Image>();
		
		String sql = "select *from image";
		try {
			PreparedStatement ps = co.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Image i = new Image();
				i.setAuteur(rs.getString("auteur"));
				i.setPhoto( rs.getBlob("photo"));
				i.setTitre(rs.getString("titre"));
				i.setTitre_article(rs.getString("titre_article"));
				lst.add(i);
			}
		}
		catch (Exception e) {
			System.out.println("Erreur Base.listerUtilisateur "+e.getMessage());
		}
		return lst;
	
	}
	
	
	
	
	
	
	
	
	
	
}