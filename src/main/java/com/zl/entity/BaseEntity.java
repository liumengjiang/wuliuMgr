package com.zl.entity;

import java.io.Serializable;

import lombok.Getter;
import lombok.Setter;

/**
 * 实体类的父类
 * @author suke
 *
 */
@Getter
@Setter
public abstract class BaseEntity implements Serializable{
	private static final long serialVersionUID = 11029548551708358L;
	private Long id;

}
