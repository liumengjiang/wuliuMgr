package com.zl.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zl.entity.CarRecord;
import com.zl.entity.CarRecordC;
import com.zl.entity.Driver;
import com.zl.entity.Page;
import com.zl.entity.Truck;
import com.zl.service.CarRecordService;

@Controller
public class CarRecordController {
@Autowired
private CarRecordService carRecordService;
//carrecord.do
@RequestMapping("/carrecord.do")
public String pageList(ModelMap map,@RequestParam(defaultValue="1",required=true,value="pageNo") Integer pageNo,HttpServletRequest request){
	 Integer pageSize=5;//每页显示记录数
	 PageHelper.startPage(pageNo, pageSize);
	 List<CarRecord> carrecordList = carRecordService.list();
	 PageInfo<CarRecord> pageInfo = new PageInfo<CarRecord>(carrecordList);
	 map.addAttribute("pageInfo",pageInfo);
	 List<Driver> driverList= carRecordService.Driverlist();
	 List<Truck> trucklist= carRecordService.Trucklist();
	 request.getSession().setAttribute("driverList", driverList);
	 request.getSession().setAttribute("trucklist", trucklist);
	 System.out.println("对象:"+pageInfo);
	return "list";
	
}
@RequestMapping("/toAdd.do")
public String toAdd(HttpServletRequest request){
	 List<Driver> driverList= carRecordService.Driverlist();
	 List<Truck> trucklist= carRecordService.Trucklist();
	 request.getSession().setAttribute("driverList", driverList);
	 request.getSession().setAttribute("trucklist", trucklist);
	return "addCarrecord";
	
}
@RequestMapping("/addCarRecord.do")
public String addCarRecord(CarRecord carRecord) throws Exception{
	carRecordService.addCarRecord(carRecord);

	
	return "redirect:/queryByC.do";
	
}
@RequestMapping("/getCarRecord.do")
public String getCarRecord(Long waybillid,Model model){
	CarRecord carRecord = carRecordService.queryRecordById(waybillid);
	
	
	model.addAttribute("carRecord",carRecord);

	
	
	
	
	return "edit";
	
}

	@RequestMapping("/queryByC.do")
	public String queryByC( CarRecordC con,Model model,HttpSession session,HttpServletRequest request){
		System.out.println(con);
		Page page = carRecordService.getPage(con);
		model.addAttribute("page", page);
		session.setAttribute("condition", con);
		 List<Driver> driverList= carRecordService.Driverlist();
		 List<Truck> trucklist= carRecordService.Trucklist();
		 request.getSession().setAttribute("driverList", driverList);
		 request.getSession().setAttribute("trucklist", trucklist);
		 return "list";
	}
	
			@PostMapping("/editCarRecord.do")
		public String editCarRecord(CarRecord carRecord){
			carRecordService.editCarRecord(carRecord);
			return "redirect:/queryByC.do";
			
			
		}
}
