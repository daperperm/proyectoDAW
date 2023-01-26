package com.dsw.business.controllers;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.json.JSONObject;

/**
 * Servlet implementation class ejemplo3Controller
 */
@WebServlet("/ejemplo3Controller")
public class ejemplo3Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ejemplo3Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//Se configura la respuesta informando al navegador que se devuelve datos en formáto json y codificación utf-8
		response.setContentType("application/json;charset=utf-8");
        request.setCharacterEncoding("utf-8");

        //Se recogen los parámetros por método Post
        String nombre = request.getParameter("nombre");
        String apellidos = request.getParameter("apellidos");
        String edad = request.getParameter("edad");
        
        //Se prepara un objeto PrintWriter
        PrintWriter out = response.getWriter();
      
		//Simula un retardo de 4 segundos para poder mostrar la animación de carga.
		try {Thread.sleep(4000);}catch (InterruptedException ex) {}
      
		//Se instancia un objeto JSon para cargarlo de datos y responder en formáto JSon
        JSONObject jsonObject= new JSONObject();
        
        //Se aplica lógica de validación y se carga el objeto json
        if(nombre.trim().equals("") || apellidos.trim().equals("") || edad.trim().equals("")) {
            String DescError = "";
        	jsonObject.put("error","true");
        	
        	if (nombre.trim().equals(""))
        		DescError = DescError + "Nombre, ";
        	
        	if (apellidos.trim().equals(""))
        		DescError = DescError + "Apellidos, ";
        	
        	if (edad.trim().equals(""))
        		DescError = DescError + "Edad";
        	
        	jsonObject.put("descerror",DescError);
           
        }else {
           jsonObject.put("error","false");
        }
        
        //Se devuelve el objeto JSon
        out.print(jsonObject);
        out.close();
        
	}

}
