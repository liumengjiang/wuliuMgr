package com.zl.entity;

import java.util.List;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
@Getter
@Setter
@ToString
public class Page {
	private int index;
	private int size=2;
	/**总记录数*/
	private Integer count;
	/**总页数*/
	private Integer total;
	private List<CarRecord> dates;
}
