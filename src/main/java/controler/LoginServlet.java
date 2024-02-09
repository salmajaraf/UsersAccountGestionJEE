package controler;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String login=request.getParameter("login");
		String passw=request.getParameter("pwd");
		
		String url="jdbc:mysql://localhost:3306/tp1";
		String user ="root";
		String pwd ="";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con= DriverManager.getConnection(url, user, pwd);
			PreparedStatement pst=con.prepareStatement("SELECT fname from user WHERE login=? AND password=?");
			pst.setString(1,login);
			pst.setString(2,passw);/*select ... where login=le login recuperer from la table*/
			ResultSet rs =pst.executeQuery();//utilise si je veux recupere des res obtenue de la reque cad avec select
			if(rs.next()) {//si le login et mod de pass se trv dans la base
				String nom = rs.getString("fname");
			    session.setAttribute("nom", nom);
				session.setAttribute("login", login);
				response.sendRedirect("welcome.jsp");
			}else response.sendRedirect("registration.jsp");
			rs.close();
			pst.close();
			con.close();
		}catch(Exception e ) {
		    System.out.print(e);
		}

	}
}

