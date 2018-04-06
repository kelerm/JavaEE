package fr.kelerm.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.kelerm.bean.Person;

public class Test extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /* Création et initialisation du message. */
        String paramAuteur = request.getParameter("auteur");
        String message = "Tranmission de variables : OK ! " + paramAuteur;
        /* Création du bean */
        Person premierBean = new Person();
        /* Initialisation de ses propriétés */
        premierBean.setNom("Kelerm");
        premierBean.setPrenom("Krom");
        /* Stockage du message et du bean dans l'objet request */
        request.setAttribute("test", message);
        request.setAttribute("kelerm", premierBean);
        /* Transmission de la paire d'objets request/response à notre JSP */
        this.getServletContext().getRequestDispatcher("/WEB-INF/test.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

}
