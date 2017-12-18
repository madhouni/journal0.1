package Bean;

import java.sql.Blob;


public class Image {
	String titre,auteur,titre_article;
	Blob photo;
	public String getTitre() {
		return titre;
	}
	public void setTitre(String titre) {
		this.titre = titre;
	}
	public String getAuteur() {
		return auteur;
	}
	public void setAuteur(String auteur) {
		this.auteur = auteur;
	}
	public String getTitre_article() {
		return titre_article;
	}
	public void setTitre_article(String titre_article) {
		this.titre_article = titre_article;
	}
	public Blob getPhoto() {
		return photo;
	}
	public void setPhoto(Blob photo) {
		this.photo = photo;
	}
	

	
	

}
