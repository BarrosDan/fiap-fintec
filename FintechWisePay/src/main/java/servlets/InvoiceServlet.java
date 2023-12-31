package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.HomeDAO;

@WebServlet("/invoice")
public class InvoiceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			String cpf = request.getParameter("cpf");
			double value = Double.parseDouble(request.getParameter("money"));

			String res = new HomeDAO().payInvoice(cpf, value);

			if (!res.equals("")) {
				throw new RuntimeException(res);
			}

			response.sendRedirect(request.getContextPath() + "/home?cpf=" + cpf);
		} catch (Exception e) {
			request.setAttribute("error_msg", e.getMessage());
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}
	}
}
