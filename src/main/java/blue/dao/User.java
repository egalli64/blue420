package blue.dao;

public class User {
	private Integer id;
	private String first_name;
	private String last_name;
	private String password;

	public User() {
	}

	public User(String first_name, String last_name, String password) {
		this(null, first_name, last_name, password);
	}

	public User(Integer id, String first_name, String last_name, String password) {
		this.id = id;
		this.first_name = first_name;
		this.last_name = last_name;
		this.password = password;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getFirst_name() {
		return first_name;
	}

	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}

	public String getLast_name() {
		return last_name;
	}

	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", first_name=" + first_name + ", last_name=" + last_name + ", password=" + password
				+ "]";
	}
}