package service;

import dao.UsuarioDAO;
import model.usuario.Usuario;

import java.util.List;

/**
 * Created by jurandir on 13/02/16.
 */
public class UserService {

    static UsuarioDAO dao = new UsuarioDAO();

    public void createUser(String login, String senha, String sexo, Boolean candidato) {
        Usuario u = new Usuario();
        u.setLogin(login);
        u.setSenha(senha);
        u.setSexo(sexo);
        u.setCandidato(candidato);
        dao.salvar(u);

    }

    public boolean userExists(String login, String senha) {
        for(Usuario user : this.findAll()){
            if(user.getLogin().equals(login) && user.getSenha().equals(senha)){
                return true;
            }
        }
        return false;
    }

    public List<Usuario> findAll() {
        return dao.findAll();
    }
}
