package dao;

import conexao.Conexao;
import model.usuario.Usuario;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by jurandir on 14/02/16.
 */
public class UsuarioDAO {
    private Session session;

    public List<Usuario> findAll() {
        session = Conexao.getInstance();
        Transaction transaction = null;
        List<Usuario> users = new ArrayList<Usuario>();

        try {
            transaction = session.beginTransaction();
            Criteria criteria = session.createCriteria(Usuario.class);
            users = criteria.list();
        } catch (Exception e) {
            transaction.rollback();
        } finally {
            session.close();
        }
        return users;
    }

    public void salvar(Usuario usuario) {
        //obtem uma sessao
        session = Conexao.getInstance();
        Transaction transaction = null;

        try {
            transaction = session.beginTransaction();
            session.save(usuario);
            transaction.commit();
        } catch (Exception e) {
            transaction.rollback();
        } finally {
            session.close();
        }
    }
}
