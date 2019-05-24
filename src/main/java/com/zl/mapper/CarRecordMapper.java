package com.zl.mapper;

import java.util.List;

import com.zl.entity.CarRecord;
import com.zl.entity.CarRecordC;
import com.zl.entity.Driver;
import com.zl.entity.Truck;

public interface CarRecordMapper {

	List<CarRecord> getAllCarRecord();
	List<Driver> queryAllDriver();
	List<Truck> queryAllTruck();
	void addCarRecord(CarRecord carRecord);

	void addCarState(CarRecord carRecord);
	CarRecord queryRecordById(Long waybillid);
	List<CarRecord> listbyCon(CarRecordC con);
	void updateCarRecord(CarRecord carRecord);
	void getDates(CarRecordC con);
	
}
 