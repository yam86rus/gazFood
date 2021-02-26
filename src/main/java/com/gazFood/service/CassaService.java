package com.gazFood.service;

import com.gazFood.entity.Cassa;

import java.util.List;

public interface CassaService {
    public List<Cassa> getAllCassa();

    public void saveCassa(Cassa cassa);

    public Cassa getCassa(int id);

    public void deleteCassa(int id);
}
