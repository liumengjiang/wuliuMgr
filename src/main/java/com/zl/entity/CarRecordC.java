package com.zl.entity;

import java.util.Date;
import java.util.List;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import org.springframework.format.annotation.DateTimeFormat;
@Getter
@ToString
@Setter

public class CarRecordC extends BaseEntity{
	private Long waybillid;
	private String dname;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date startDate;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date endDate;
	private Integer pageIndex;
	private int pageSize;
	private Integer count;
	private List<CarRecord> carrecord;;
	


}
