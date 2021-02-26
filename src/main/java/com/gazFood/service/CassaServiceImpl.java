package com.gazFood.service;

import com.gazFood.dao.CassaDAO;
import com.gazFood.entity.Cassa;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class CassaServiceImpl implements CassaService {
    @Autowired
    private CassaDAO cassaDAO;

    @Override
    @Transactional
    public List<Cassa> getAllCassa() {
        return cassaDAO.getAllCassa();
    }

    @Override
    @Transactional
    public void saveCassa(Cassa cassa) {
        cassaDAO.saveCassa(cassa);
    }

    @Override
    @Transactional
    public Cassa getCassa(int id) {
        return cassaDAO.getCassa(id);
    }

    @Override
    @Transactional
    public void deleteCassa(int id) {
        cassaDAO.deleteCassa(id);
    }
}
