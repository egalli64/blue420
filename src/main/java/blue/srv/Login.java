package blue.srv;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import blue.dao.User;
import blue.dao.UserDao;


@WebServlet("/login")
@SuppressWarnings("serial")
public class Login extends HttpServlet {
	@Resource(name = "jdbc/blue")
	private DataSource ds;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	String username = request.getParameter("username");
    	String password = request.getParameter("password");
    	if (username == null || password == null) {
    	} else {
    		try (UserDao dao = new UserDao(ds)) {
    			request.setAttribute("users", dao.getUser(username, password));
    	}
    	}
       request.setAttribute("logged", new User("?","?"));
       request.getRequestDispatcher("index.jsp").forward(request, response);
		
        
    }
}
