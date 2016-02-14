package model.usuario;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name="USUARIO")
public class Usuario implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    int id;

    String login;

    String senha;

    String sexo;

    Boolean candidato;


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public Boolean getCandidato() {
        return candidato;
    }

    public void setCandidato(Boolean candidato) {
        this.candidato = candidato;
    }
}