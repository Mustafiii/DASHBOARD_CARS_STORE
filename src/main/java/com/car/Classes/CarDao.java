package com.car.Classes;

import java.util.List;

public interface CarDao {
	void ajouter( Car car );
    List<Car> lister();
    Car getCarDetailsByID(int carID);
	void update(Car car);
    
}
