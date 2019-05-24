package com.zl.entity;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class CarState extends BaseEntity{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	/**下单状态*/
	public static  final int  STATE_XIADAN = 0; 
	/**出车状态*/
	public static  final int  STATE_CHUCHE = 1;
	/**取消*/
	public static  final int  STATE_QUXIAO = -1;
	/**
	 * 完成
	 */
	public static  final int  STATE_WANCHENG = 2;
	
private Integer state;
private Integer tid;
private Integer did;

}
