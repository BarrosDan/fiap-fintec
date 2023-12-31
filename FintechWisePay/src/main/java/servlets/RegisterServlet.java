package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.RegisterDAO;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String cpf = request.getParameter("cpf");
			String name = request.getParameter("fullname");
			String pswd = request.getParameter("pswd");
			LocalDate birth = LocalDate.parse(request.getParameter("birth"), formatter);
			String email = request.getParameter("email");
			String cel = request.getParameter("cel");

			String res = new RegisterDAO().verifyUser(cpf.replaceAll("[./\\s-]", ""), name, pswd, birth, email, cel);

			if ("".equals(res)) {
				response.sendRedirect("index.jsp");
			} else {
				request.setAttribute("error_msg", res);
				request.getRequestDispatcher("error.jsp").forward(request, response);
			}
		} catch (Exception e) {
			request.setAttribute("error_msg", e.getMessage());
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}
	}
}
