package com.zl.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zl.entity.CarRecord;
import com.zl.entity.CarRecordC;
import com.zl.entity.CarState;
import com.zl.entity.Driver;
import com.zl.entity.Page;
import com.zl.entity.Truck;
import com.zl.mapper.CarRecordMapper;
import com.zl.service.CarRecordService;

@Service
public class CarRecordServiceImpl implements CarRecordService{
    @Autowired
    private CarRecordMapper carRecordMapper;
	@Override
	public List<CarRecord> list() {
		// TODO Auto-generated method stub
		return carRecordMapper.getAllCarRecord();
	}
	@Override
	public List<Driver> Driverlist() {
		// TODO Auto-generated method stub
		return carRecordMapper.queryAllDriver();
	}
	@Override
	public List<Truck> Trucklist() {
		// TODO Auto-generated method stub
		return carRecordMapper.queryAllTruck();
	}
	@Override
	public void addCarRecord(CarRecord carRecord) {
		// TODO Auto-generated method stub
		
		carRecord.setCarState(new CarState());
		carRecord.setRecorddate(new Date());
		try{
			carRecordMapper.addCarRecord(carRecord);
	
		}catch(Exception e){
			System.out.println(e);
			throw new RuntimeException("系统繁忙,添加失败");
		}
		
	}

	@Override
	public void addCarState(CarRecord carRecord) {
		// TODO Auto-generated method stub
		carRecordMapper.addCarState(carRecord);
	}
	@Override
	public CarRecord queryRecordById(Long waybillid) {
		// TODO Auto-generated method stub
		return carRecordMapper.queryRecordById(waybillid);
	}
	@Override
	public List<CarRecord> listbyCon(CarRecordC con) {
		// TODO Auto-generated method stub
		return carRecordMapper.listbyCon(con);
	}
	@Override
	public void editCarRecord(CarRecord carRecord) {
		// TODO Auto-generated method stub
		try{
		carRecordMapper.updateCarRecord(carRecord);
		}catch (Exception e){
			e.printStackTrace();
			throw new RuntimeException("系统繁忙,修改失败");
		}
	}
	@Override
	public Page getPage(CarRecordC con) {
		// TODO Auto-generated method stub
		if(con.getPageIndex()==null)con.setPageIndex(1);
		int index = con.getPageIndex();
		Page page = new Page();
		int size = page.getSize();
		con.setPageIndex(index);
		con.setPageSize(size);
		
		carRecordMapper.getDates(con);
		
		int count = con.getCount();
		
		page.setTotal(count%size==0 ? count/size : count/size+1);
		page.setIndex(index);
		page.setCount(count);
		page.setDates(con.getCarrecord());
		return page;
	}

}
