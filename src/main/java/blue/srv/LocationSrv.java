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

import blue.dao.LocationDao;

@SuppressWarnings("serial")
@WebServlet("/locations")
public class LocationSrv extends HttpServlet {
    private static final Logger log = LoggerFactory.getLogger(LocationSrv.class);

    @Resource(name = "jdbc/blue")
    private DataSource ds;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        log.trace("called");
        try (LocationDao dao = new LocationDao(ds)) {
            request.setAttribute("locations", dao.getAll());
            request.getRequestDispatcher("locations.jsp").forward(request, response);
        }
    }
}
