package com.gazFood.dao;

import com.gazFood.entity.Cassa;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
public class CassaDAOImpl implements CassaDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Cassa> getAllCassa() {
        Session session = sessionFactory.getCurrentSession();

        Query<Cassa> query = session.createQuery("from Cassa order by cassaName", Cassa.class);
        List<Cassa> allCassa = query.getResultList();
        return allCassa;
    }

    @Override
    public void saveCassa(Cassa cassa) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(cassa);
    }

    @Override
    public Cassa getCassa(int id) {
        Session session = sessionFactory.getCurrentSession();
        Cassa cassa = session.get(Cassa.class, id);
        return cassa;
    }

    @Override
    public void deleteCassa(int id) {
        Session session = sessionFactory.getCurrentSession();
        Query<Cassa> query = session.createQuery("delete from Cassa where id=:cassaId");
        query.setParameter("cassaId",id);
        query.executeUpdate();
    }
}
