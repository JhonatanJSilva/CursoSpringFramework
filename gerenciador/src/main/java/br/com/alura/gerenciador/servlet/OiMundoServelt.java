package br.com.alura.gerenciador.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/oi")
public class OiMundoServelt extends HttpServlet{

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws IOException{
		
		PrintWriter out = resp.getWriter();
		
		out.println("<html>");
		out.println("<body>");
		out.println("Ola Mundo, Parabens voce escreveu o seu primeiro servlets");		
		out.println("</body>");
		out.println("</html>");
		
		
		System.out.println("FUNCIONOU");
	}
}
