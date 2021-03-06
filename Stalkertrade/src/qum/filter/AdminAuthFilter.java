package qum.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import qum.model.User;

@WebFilter(urlPatterns = "*.dgd")
public class AdminAuthFilter implements Filter {

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse,
	    FilterChain chain) throws IOException, ServletException {
	HttpServletRequest request = (HttpServletRequest) servletRequest;
	User User = (User) request.getSession().getAttribute("LoggetUser");
	if (User != null && User.getAcc_lvl() > 10) {
	    chain.doFilter(servletRequest, servletResponse);
	} else {
	    HttpServletResponse resp = (HttpServletResponse) servletResponse;
	    resp.sendRedirect("index.jsp");
	}
    }

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
    }

    @Override
    public void destroy() {
    }
}
