package modelview;

import com.fasterxml.jackson.annotation.JsonView;

/**
 * Created by jurandir on 13/02/16.
 */
public class UsuarioVO  {

    @JsonView(Views.Public.class)
    String login;

    @JsonView(Views.Public.class)
    String senha;

    @JsonView(Views.Public.class)
    String sexo;

    @JsonView(Views.Public.class)
    Boolean candidato;

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
