package blue.dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class FilmDao implements AutoCloseable {
	private static final Logger log = LoggerFactory.getLogger(FilmDao.class);
	private static final String GET_ALL = "SELECT film_id, title, director FROM films";
	private static final String GET_LIKE = "SELECT film_id, title, director FROM films where title like ?";
	private static final String GET_LOCATION_LIKE = "SELECT location_id, city, name FROM locations JOIN film_location USING (location_id) JOIN films using (film_id) where title like ?";
	private Connection conn;

	public FilmDao(DataSource ds) {
		log.trace("called");

		try {
			this.conn = ds.getConnection();
		} catch (SQLException se) {
			throw new IllegalStateException("Database issue " + se.getMessage());
		}
	}

	public List<Film> getAll() {
		log.trace("called");
		List<Film> results = new ArrayList<>();

		try (Statement stmt = conn.createStatement(); ResultSet rs = stmt.executeQuery(GET_ALL)) {
			while (rs.next()) {
				Film cur = new Film(rs.getInt(1), rs.getString(2), rs.getString(3));
				results.add(cur);
			}
		} catch (SQLException se) {
			log.error("Can't get films: " + se.getMessage());
			throw new IllegalStateException("Database issue " + se.getMessage());
		}
		return results;
	}

	public List<Film> getLike(String title) {
		log.trace("called");
		List<Film> results = new ArrayList<>();

		try (PreparedStatement stmt = conn.prepareStatement(GET_LIKE)) {
			stmt.setString(1, "%" + title + "%");

			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				Film cur = new Film(rs.getInt(1), rs.getString(2), rs.getString(3));
				results.add(cur);
			}
		} catch (SQLException se) {
			log.error("Can't get films: " + se.getMessage());
			throw new IllegalStateException("Database issue " + se.getMessage());
		}

		return results;
	}
	public Location getLocationLike(String title) {
		log.trace("called");

		try (PreparedStatement stmt = conn.prepareStatement(GET_LOCATION_LIKE)) {
			stmt.setString(1, "%" + title + "%");

			ResultSet rs = stmt.executeQuery();
			if (rs.next()) {
				Location cur = new Location(rs.getInt(1), rs.getString(2), rs.getString(3));
				return cur;
			}
		} catch (SQLException se) {
			log.error("Can't get location: " + se.getMessage());
			throw new IllegalStateException("Database issue " + se.getMessage());
		}

		return null;
	}
	@Override
	public void close() throws IOException {
		try {
			conn.close();
		} catch (SQLException se) {
			throw new IllegalStateException("Database issue " + se.getMessage());
		}
	}

}
