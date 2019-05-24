package com.zl.entity;

import java.math.BigDecimal;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.validation.annotation.Validated;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@SuppressWarnings("all")
public class CarRecord extends BaseEntity {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer waybillid;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date recorddate;
	private String pickupplace;
	private String destination;
	private String customname;
	private String customphone;
	private BigDecimal cost;
	private Integer cid;
	private Integer oid;
	private OderUser oderUser;
	private CarState carState;
	private Integer state;
	private String name;
	private String carnumber;
	public Integer getWaybillid() {
		return waybillid;
	}
	public void setWaybillid(Integer waybillid) {
		this.waybillid = waybillid;
	}
	public Date getRecorddate() {
		return recorddate;
	}
	public void setRecorddate(Date recorddate) {
		this.recorddate = recorddate;
	}
	public String getPickupplace() {
		return pickupplace;
	}
	public void setPickupplace(String pickupplace) {
		this.pickupplace = pickupplace;
	}
	public String getDestination() {
		return destination;
	}
	public void setDestination(String destination) {
		this.destination = destination;
	}
	public String getCustomname() {
		return customname;
	}
	public void setCustomname(String customname) {
		this.customname = customname;
	}
	public String getCustomphone() {
		return customphone;
	}
	public void setCustomphone(String customphone) {
		this.customphone = customphone;
	}
	public BigDecimal getCost() {
		return cost;
	}
	public void setCost(BigDecimal cost) {
		this.cost = cost;
	}
	public Integer getCid() {
		return cid;
	}
	public void setCid(Integer cid) {
		this.cid = cid;
	}
	public Integer getOid() {
		return oid;
	}
	public void setOid(Integer oid) {
		this.oid = oid;
	}
	public OderUser getOderUser() {
		return oderUser;
	}
	public void setOderUser(OderUser oderUser) {
		this.oderUser = oderUser;
	}
	public CarState getCarState() {
		return carState;
	}
	public void setCarState(CarState carState) {
		this.carState = carState;
	}
	public Integer getState() {
		return state;
	}
	public void setState(Integer state) {
		this.state = state;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCarnumber() {
		return carnumber;
	}
	public void setCarnumber(String carnumber) {
		this.carnumber = carnumber;
	}
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	public Truck getTruck() {
		return truck;
	}
	public void setTruck(Truck truck) {
		this.truck = truck;
	}
	public CarRecord getCarrecord() {
		return carrecord;
	}
	public void setCarrecord(CarRecord carrecord) {
		this.carrecord = carrecord;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	private String dname;
	private Truck truck;
	private CarRecord carrecord;
}
