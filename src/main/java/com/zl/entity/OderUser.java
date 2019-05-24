package com.zl.entity;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString


public class OderUser extends BaseEntity{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * 
	 */
	
	public static  final int  STATE_NORMAL = 0; 
	
	public static  final int  STATE_LOCK = 1;
	
	public static  final int  STATE_DELETE = -1;
	/**
	 * 男
	 */
	public static  final int  SEX_MALE= 1;
	public static  final int  SEXX_FEMALE = 0;
	
	private String username;
	private String password;
	private String name;
	private Integer sex;
	private Integer age;
	private Integer state;
	private Date registDate;
	
	
}
