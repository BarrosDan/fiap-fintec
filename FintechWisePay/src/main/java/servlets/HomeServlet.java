package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.HomeDAO;

@WebServlet("/home")
public class HomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	try {
    		String cpf = request.getParameter("cpf");

        	String res = new HomeDAO().getValues(cpf);

        	if (!res.equals("")) {
        		String[] values = res.split("-");

        		if (values.length < 2) {
        		    throw new RuntimeException(values[0]);
        		}

        		String name = values[0].split(" ")[0];
                String balance = values[1];
                String creditLimit = values[3];
                String invoice = values[2];

                request.setAttribute("name", name);
                request.setAttribute("balance", balance);
                request.setAttribute("creditLimit", creditLimit);
                request.setAttribute("invoice", invoice);

                request.getRequestDispatcher("home.jsp").forward(request, response);
        	}
    	} catch (Exception e) {
    		request.setAttribute("error_msg", e.getMessage());
			request.getRequestDispatcher("error.jsp").forward(request, response);
    	}
    }
}
