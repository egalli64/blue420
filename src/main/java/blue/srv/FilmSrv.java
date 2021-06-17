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
import blue.dao.Location;

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
			
			Location locations = dao.getLocationLike(title);
			String cur =locations.getName();
			String uri;
			
			switch (cur) {
			case "Quartieri spagnoli":
				uri = "locations1.jsp";
				break;
			case "Fontana di Trevi":
				uri = ".jsp";
				break;
			case "Parco Nazionale del Circeo":
				uri = ".jsp";
				break;
			case "Duomo di Milano":
				uri = ".jsp";
				break;
			case "Bahnhof zoo":
				uri = ".jsp";
				break;
				
				default:
					uri = "notFound.jsp";
					break;
			}
			request.setAttribute("films", dao.getLocationLike(title));
			request.getRequestDispatcher(uri).forward(request, response);
		}
	}

}
