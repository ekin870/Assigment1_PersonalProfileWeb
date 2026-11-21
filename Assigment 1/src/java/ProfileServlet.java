/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ProfileServlet")
public class ProfileServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        // Get information from HTML form
        String name = request.getParameter("name");
        String studentID = request.getParameter("studentID");
        String program = request.getParameter("program");
        String email = request.getParameter("email");
        String introduction = request.getParameter("introduction");

        // Get multiple hobbies
        String[] hobbies = request.getParameterValues("hobbies");

        String hobbyList = "None";

        if (hobbies != null) {
            hobbyList = String.join(", ", hobbies);
        }

        // Send information to JSP
        request.setAttribute("name", escapeHTML(name));
        request.setAttribute("studentID", escapeHTML(studentID));
        request.setAttribute("program", escapeHTML(program));
        request.setAttribute("email", escapeHTML(email));
        request.setAttribute("hobbies", escapeHTML(hobbyList));
        request.setAttribute("introduction", escapeHTML(introduction));

        // Forward to JSP page
        request.getRequestDispatcher("profile.jsp")
               .forward(request, response);
    }

    // Escape HTML characters for safer display
    private String escapeHTML(String value) {

        if (value == null) {
            return "";
        }

        return value.replace("&", "&amp;")
                    .replace("<", "&lt;")
                    .replace(">", "&gt;")
                    .replace("\"", "&quot;")
                    .replace("'", "&#x27;");
    }
}