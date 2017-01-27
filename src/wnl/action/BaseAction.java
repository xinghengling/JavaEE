package wnl.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class BaseAction<T> implements ModelDriven<T> , ServletRequestAware,ServletResponseAware{

	protected HttpServletRequest servletRequest;
	protected HttpServletResponse servletResponse;
	
	@Override
	public T getModel() {
		return null;
	}

	@Override
	public void setServletResponse(HttpServletResponse servletResponse) {
		      this.servletResponse=servletResponse;
	}

	@Override
	public void setServletRequest(HttpServletRequest servletRequest) {
		this.servletRequest=servletRequest;
		
	}
}
