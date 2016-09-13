package hibernatePersistent.fashionista;

import Hibernate.HibernateUtil;
import hibernatePersistent.fashionista.Fashionista;
import java.util.Date;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.SessionFactory;

public class FashionistaDAO { //Data Access Object

    private static SessionFactory factory;

    public Fashionista login(String email, String senha) {
        Session session = HibernateUtil.abrirSessaoComBD();
        Fashionista fashion = null;
        try {
            fashion = (Fashionista) session
                    .createQuery("from Fashionista where email= :email and senha= :senha")
                    .setString("email", email).setString("senha", senha).uniqueResult();
        } catch (HibernateException he) {
            he.printStackTrace();
        }
        return fashion;
    }

    /* Method to CREATE an fashionista in the database */
    public boolean addFashionista(Fashionista fashionista) throws HibernateException {
        Session session = HibernateUtil.abrirSessaoComBD();
        Transaction tx = null;
        boolean funfou = false;
        String okay = null;
        try {
            tx = session.beginTransaction();

            okay = (String) session.save(fashionista);
            System.out.println("OK? " + okay);
            tx.commit();
        } catch (HibernateException e) {
            if (tx != null) {
                tx.rollback();
            }
            throw e;
        } finally {
            session.close();
        }
        if (okay != null) {
            funfou = true;
        }
        return funfou;
    }

    /* Method to  READ all the fashionistas */
    public List listFashionista() {
        Session session = HibernateUtil.abrirSessaoComBD();
        Transaction tx = null;
        List<Fashionista> fashionistas = null;
        try {

            fashionistas = session.createCriteria(Fashionista.class).list();

        } catch (HibernateException e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
        return fashionistas;
    }

    /* Method to UPDATE salary for an fashionista */
    public Fashionista updateFashionista(String emailID, String email, String nome, String senha, String sobrenome, String municipio, Date data_nascimento, Integer ddd, Integer numero, char sexo, String pais, String bairro, String complemento, String tipo_logradouro, String logradouro, Integer num_logradouro, String uf ) {
        Session session = HibernateUtil.abrirSessaoComBD();
        Transaction tx = null;
        Fashionista fashionista = null;
        try {
            tx = session.beginTransaction();
            fashionista
                    = (Fashionista) session.get(Fashionista.class, emailID);
            fashionista.setEmail(email);
            fashionista.setNome(nome);
            fashionista.setSenha(senha);
            fashionista.setSobrenome(sobrenome);
            fashionista.setMunicipio(municipio);
            fashionista.setData_nascimento(data_nascimento);
            fashionista.setDdd(ddd);
            fashionista.setNumero(numero);
            fashionista.setSexo(sexo);
            fashionista.setPais(pais);
            fashionista.setBairro(bairro);
            fashionista.setComplemento(complemento);
            fashionista.setTipo_logradouro(tipo_logradouro);
            fashionista.setLogradouro(logradouro);
            fashionista.setNum_logradouro(num_logradouro);
            fashionista.setUf(uf);
            session.update(fashionista);
            tx.commit();
        } catch (HibernateException e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
            return fashionista;
        }
    }
    
    /* Method to DELETE an fashionista from the records */
    public void deleteFashionista(String emailID) {
        Session session = HibernateUtil.abrirSessaoComBD();
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            Fashionista fashionista
                    = (Fashionista) session.get(Fashionista.class, emailID);
            session.delete(fashionista);
            tx.commit();
        } catch (HibernateException e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
    }
    
    public Fashionista recuperaFashionista(String email) {
        Session session = HibernateUtil.abrirSessaoComBD();
        Fashionista fashionistas = null;
        try {
             fashionistas= (Fashionista) session
                     .createQuery("from Fashionista where email = :email")
                     .setString("email", email)
                     .uniqueResult();
            
        } catch (HibernateException e) {
            e.printStackTrace();
        } finally {
            session.close();
        }
        return fashionistas;
    }
}
