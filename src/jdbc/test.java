package jdbc;
import java.util.ArrayList;

import Base.Base;
import Bean.Article;
import Bean.Image;

public class test {

	public static void main(String[] args) throws ClassNotFoundException {
		// TODO Auto-generated method stub
		Base b = new Base();
		b.ouvrir();
		ArrayList<Article> k =  b.listerArticle();
		ArrayList<Image> f =  b.listerImage();
		for (int i=0;i<f.size();i++) System.out.println(f.get(1).getPhoto()); 
		b.fermer();
		
		

	}

}
