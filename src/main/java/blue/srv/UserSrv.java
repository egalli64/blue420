package blue.srv;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import blue.dao.UserDao;

@SuppressWarnings("serial")
@WebServlet("/users")
public class UserSrv extends HttpServlet {
	private static final Logger log = LoggerFactory.getLogger(UserSrv.class);

	@Resource(name = "jdbc/blue")
	private DataSource ds;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		log.trace("called");
		try (UserDao dao = new UserDao(ds)) {
			request.setAttribute("users", dao.getAll());
			request.getRequestDispatcher("users.jsp").forward(request, response);
		}
	}
}
