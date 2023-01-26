package com.dsw.business.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.dsw.business.models.views.*;
/**
 * Servlet implementation class ejemplo2Controller
 */
@WebServlet("/ejemplo2Controller")
public class ejemplo2Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ejemplo2Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String auxDireccion, auxMunicipio;
		int auxNum, auxCp;
		
		//Se recogen los parámetros enviados por método POST (doPost delega al método doGet)
		auxDireccion = request.getParameter("direccion");
		
		if (request.getParameter("num").trim() == "")
			auxNum = 0;
		else
			auxNum = Integer.parseInt(request.getParameter("num"));
		
		if (request.getParameter("codprovincia").trim() == "")
			auxCp = 0;
		else
			auxCp = Integer.parseInt(request.getParameter("codprovincia"));
		
		auxMunicipio = request.getParameter("municipio");
		
		ejemplo1ViewModel objView = new ejemplo1ViewModel(auxDireccion, auxNum, auxCp, auxMunicipio);
				
		//Simula un retardo de 4 segundos para poder mostrar la vista de espera.
		try {Thread.sleep(4000);}catch (InterruptedException ex) {}
		
		request.setAttribute("ejemplo2View", objView);
		RequestDispatcher rd;
	    rd = request.getRequestDispatcher("./views/ejemplo2.jsp");		
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
