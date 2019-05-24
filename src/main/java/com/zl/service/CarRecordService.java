package com.zl.service;

import java.util.List;

import com.zl.entity.CarRecord;
import com.zl.entity.CarRecordC;
import com.zl.entity.Driver;
import com.zl.entity.Page;
import com.zl.entity.Truck;

public interface CarRecordService {

	List<CarRecord> list();
	List<Driver> Driverlist();
	List<Truck> Trucklist();
	void addCarRecord(CarRecord carRecord);

	void addCarState(CarRecord carRecord);
	CarRecord queryRecordById(Long waybillid);
	List<CarRecord> listbyCon(CarRecordC con);
	void editCarRecord(CarRecord carRecord);
	Page getPage(CarRecordC con);
}
