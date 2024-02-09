package controler;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String firstName = request.getParameter("fsname");
        String lastName = request.getParameter("lsname");
        String loginID = request.getParameter("login");
        String password = request.getParameter("pwd");
        String dateOfBirth = request.getParameter("dob");
        String mobileNumber = request.getParameter("mobile");

        String url = "jdbc:mysql://localhost:3306/tp1";
        String user = "root";
        String pwd = "";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(url, user, pwd);

            // Inséretion les données de l'utilisateur dans la base de données
            String insertQuery = "INSERT INTO user (fname, Iname, login, password, dob, mobile) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement pst = con.prepareStatement(insertQuery);
            pst.setString(1, firstName);
            pst.setString(2, lastName);
            pst.setString(3, loginID);
            pst.setString(4, password);
            pst.setString(5, dateOfBirth);
            pst.setString(6, mobileNumber);
            int rowsAffected = pst.executeUpdate();

            if (rowsAffected > 0) {
                // Rediriger l'utilisateur vers une page de confirmation d'inscription
                response.sendRedirect("Login.jsp");
            } else {
                // Rediriger l'utilisateur vers une page d'échec d'inscription
                response.sendRedirect("registration_failure.jsp");
            }

            pst.close();
            con.close();
        } catch (ClassNotFoundException | SQLException e) {
            System.out.print(e);
            // Rediriger l'utilisateur vers une page d'échec d'inscription en cas d'erreur
            response.sendRedirect("registration_failure.jsp");
        }
    }
}
