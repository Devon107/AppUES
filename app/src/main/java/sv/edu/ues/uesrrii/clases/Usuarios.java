package sv.edu.ues.uesrrii.clases;

public class Usuarios {
    private String username;
    private String name;
    private String lastname;
    private String email;
    private int registro;
    private String fechaRegistro;

    public  Usuarios(int registro, String username, String name, String lastname, String email, String fechaRegistro){
        this.registro = registro;
        this.username = username;
        this.name = name;
        this.lastname = lastname;
        this.email = email;
        this.fechaRegistro = fechaRegistro;
    }

    public int getRegistro() {
        return registro;
    }

    public String getEmail() {
        return email;
    }

    public String getFechaRegistro() {
        return fechaRegistro;
    }

    public String getLastname() {
        return lastname;
    }

    public String getName() {
        return name;
    }

    public String getUsername() {
        return username;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setFechaRegistro(String fechaRegistro) {
        this.fechaRegistro = fechaRegistro;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setRegistro(int registro) {
        this.registro = registro;
    }

    public void setUsername(String username) {
        this.username = username;
    }
}
