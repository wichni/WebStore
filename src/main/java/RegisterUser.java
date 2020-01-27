import java.util.Objects;

public class RegisterUser {
    private String firstName;
    private String lastName;
    private String login;
    private String email;
    private String password;
    private String address;
    private String city;
    private String posCode;

    public RegisterUser() {
    }

    public RegisterUser(String firstName, String lastName, String login, String email, String password, String address, String city, String posCode) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.login = login;
        this.email = email;
        this.password = password;
        this.address = address;
        this.city = city;
        this.posCode = posCode;
    }

    public String getUserName() {
        return firstName;
    }

    public void setUserName(String firstName) {
        this.firstName = firstName;
    }

    public String getUserSurName() {
        return lastName;
    }

    public void setUserSurName(String lastName) {
        this.lastName = lastName;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getPosCode() {
        return posCode;
    }

    public void setPosCode(String posCode) {
        this.posCode = posCode;
    }

    @Override
    public String toString() {
        return "RegisterUser{" +
                "firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", login='" + login + '\'' +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", address='" + address + '\'' +
                ", city='" + city + '\'' +
                ", posCode='" + posCode + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        RegisterUser that = (RegisterUser) o;
        return Objects.equals(firstName, that.firstName) &&
                Objects.equals(lastName, that.lastName) &&
                Objects.equals(login, that.login) &&
                Objects.equals(email, that.email) &&
                Objects.equals(password, that.password) &&
                Objects.equals(address, that.address) &&
                Objects.equals(city, that.city) &&
                Objects.equals(posCode, that.posCode);
    }

    @Override
    public int hashCode() {
        return Objects.hash(firstName, lastName, login, email, password, address, city, posCode);
    }
}
