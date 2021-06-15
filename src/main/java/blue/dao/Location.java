package blue.dao;


public class Location {
    private Integer id;
    private String city;
    private String name;
    
    public Location() {
    }

    public Location(String city, String name) {
        this(null, city, name);
    }

   
    public Location(Integer id, String city, String name) {
        this.id = id;
        this.city = city;
        this.name = name;

    }

    public long getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "Location [id=" + id + ", city=" + city + ", name=" + name + "]";
    }
}