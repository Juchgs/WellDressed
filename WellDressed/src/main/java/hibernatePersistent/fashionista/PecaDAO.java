/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hibernatePersistent.fashionista;

import Hibernate.HibernateUtil;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;



/**
 *
 * @author aluno
 */
public class PecaDAO {
        private static SessionFactory factory;
        
          public boolean addPeca(Peca peca) throws HibernateException {
        Session session = HibernateUtil.abrirSessaoComBD();
        Transaction tx = null;
        boolean funfou = false;
        Integer okay = null;
        try {
            tx = session.beginTransaction();

            okay = (Integer) session.save(peca);
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

}
