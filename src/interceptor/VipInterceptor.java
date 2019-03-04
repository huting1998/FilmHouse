package interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import pojo.User;

public class VipInterceptor implements HandlerInterceptor {

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object obj, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub
		
		
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handller) throws Exception {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession();
		User user=(User)session.getAttribute("login");
		if(user==null) {
			request.setAttribute("msg", "Äú»¹Î´µÇÂ¼ÇëÏÈµÇÂ¼");
			 request.getRequestDispatcher("/WEB-INF/jsp/login.jsp")
             .forward(request, response);
			return false;
		}
		int i=user.getVip();
		if(i==1) {
			return true;
		}else {
		request.getRequestDispatcher("/WEB-INF/jsp/vip.jsp").forward(request, response);
		return false;
		}
	}

}
