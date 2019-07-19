package com.brs.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter {

   private static final String LOGIN = "login";
   private static final Logger logger = LoggerFactory.getLogger(LoginInterceptor.class);

   //UserVO κ°μ²΄ ??Έ(λ‘κ·Έ?Έ?΄ κ°??₯?μ§?) -> HttpSession ???₯
   @Override
   public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
         ModelAndView modelAndView) throws Exception {

      HttpSession session = request.getSession();

      ModelMap modelMap = modelAndView.getModelMap();
      Object userVO = modelMap.get("userVO");

      if (userVO != null) {

         logger.info("new login success");
         session.setAttribute(LOGIN, userVO);
         // response.sendRedirect("/");
         
         //λ‘κ·Έ?Έ ? ? λ³΄κ³  ?? κ²½λ‘, λ‘κ·Έ?Έ ? λ³΄μ¬μ€μΌ ?? ??΄μ§? κ²½λ‘
         Object dest = session.getAttribute("dest");
         response.sendRedirect(dest != null ? (String) dest : "/");
      }
   }

   //λ―Έλ¦¬ ?Έ? : HttpSessionμ΄κΈ°?
   @Override 
   public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
         throws Exception {

      HttpSession session = request.getSession();

      if (session.getAttribute(LOGIN) != null) {
         logger.info("clear login data before");
         session.removeAttribute(LOGIN);
      }

      return true;
   }

   
   //Interceptor -> λ‘κ·Έ?Έ?΄ ??? ?? ?? λ‘κ·Έ?Έ?λ©΄μΌλ‘? ???Όλ‘? ??΄κ°?κ²? ?? κΈ°λ₯
}
