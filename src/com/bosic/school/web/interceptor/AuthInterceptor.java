package com.bosic.school.web.interceptor;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

public class AuthInterceptor implements Interceptor{
	private static final long serialVersionUID = 1L;

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void init() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		//HttpServletRequest request = ServletActionContext.getRequest();
		
		//String uri = request.getRequestURI();
		
		if(ActionContext.getContext().getSession().get("user") == null){
			return "login";
		}
		
		return invocation.invoke();
	}
}
