package blue.dao;

public class Film {
	private Integer id;
	private String title;
	private String director;

	public Film() {
	}

	public Film(String title, String director) {
		this(null, title, director);
	}

	public Film(Integer id, String title, String director) {
		this.id = id;
		this.title = title;
		this.director = director;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDirector() {
		return director;
	}

	public void setDirector(String director) {
		this.director = director;
	}

	@Override
	public String toString() {
		return "Film [id=" + id + ", title=" + title + ", director=" + director + "]";
	}
}