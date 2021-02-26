package com.gazFood.dao;

import com.gazFood.entity.Cassa;

import java.util.List;

public interface CassaDAO {
    public List<Cassa> getAllCassa();

    public void saveCassa(Cassa cassa);

    public Cassa getCassa(int id);

    public void deleteCassa(int id);
}
