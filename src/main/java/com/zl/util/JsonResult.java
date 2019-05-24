package com.zl.util;

import lombok.Getter;
import lombok.Setter;

/**

 *
 */
@Getter
@Setter
public class JsonResult {
	
	private boolean success = true;
	private String msg;
	
	public JsonResult(boolean success, String msg) {
		super();
		this.success = success;
		this.msg = msg;
	}

	public JsonResult() {
	}
	

	public JsonResult(String msg) {
		this.msg = msg;
	}
	
	
	
	
	
	
}
