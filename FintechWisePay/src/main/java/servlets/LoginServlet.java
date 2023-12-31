package servlets;

import dao.LoginDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String cpf = request.getParameter("cpf");
            String password = request.getParameter("password");

            String res = new LoginDAO().loginUser(cpf, password);

            if ("".equals(res)) {
                response.sendRedirect(request.getContextPath() + "/home?cpf=" + cpf);
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
