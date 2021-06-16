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

import blue.dao.FilmDao;

@SuppressWarnings("serial")
@WebServlet("/films")
public class FilmSrv extends HttpServlet {
	private static final Logger log = LoggerFactory.getLogger(FilmSrv.class);

	@Resource(name = "jdbc/blue")
	private DataSource ds;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String title = request.getParameter("title");
		log.trace("called");
		try (FilmDao dao = new FilmDao(ds)) {
			request.setAttribute("films", dao.getLike(title));
			request.getRequestDispatcher("films.jsp").forward(request, response);
		}
	}

}
