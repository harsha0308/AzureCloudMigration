package com.caseStudy.salesProcessingservice.Configuration;

import java.io.IOException;
import java.util.UUID;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import org.slf4j.MDC;
import org.springframework.stereotype.Component;

@Component
public class MdcLogEnhancerFilter implements Filter {

	 String requestKey = UUID.randomUUID().toString();
		@Override
		    public void destroy() {

		    }

		    @Override
		    public void init(FilterConfig filterConfig) throws ServletException {

		    }
		    @Override
		public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) 
				throws IOException, ServletException {
			// TODO Auto-generated method stub
		    	MDC.put("UniqueKey", requestKey);
		    	MDC.put("Service-name","salesProcessing-service");
		    	chain.doFilter(request, response);
			
		}

			
}
