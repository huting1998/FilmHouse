package controller;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;


import mapper.FilmMapper;
import pojo.Film;
import pojo.User;
import pojo.history;
import service.FilmService;
import service.UserService;

@Controller
public class UserController {
	@Autowired
	UserService userService;
	@Autowired 
	FilmService filmService;
//@RequestMapping(value="/index.do")
//public String index() {
//	
//	return"/index";
//}	

@RequestMapping("loginView.do")
public ModelAndView loginView() {
	ModelAndView mav=new ModelAndView();
	mav.setViewName("/login");
	return mav;
}
@RequestMapping("registView.do")
public ModelAndView registView() {
	ModelAndView mav=new ModelAndView();
	mav.setViewName("/regist");
	return mav;
}
@RequestMapping("vipView.do")
public ModelAndView vipView() {
	return new ModelAndView("/vip");
}

@RequestMapping("login.do")
@ResponseBody
public int login(@RequestBody User user,HttpSession session)  {
	int count=0;
	count = userService.getCount(user.getId(), user.getName(), user.getPassword());
	if (count>0) {
		User user1=new User();
	    user1=userService.get(user.getId(), user.getName(), user.getPassword());
	    
	    session.setAttribute("login", user1);

	}
	return count;
}

@RequestMapping("userView.do")
public ModelAndView userView(HttpSession session) {
	ModelAndView mav=new ModelAndView();
	User user =(User) session.getAttribute("login");
    mav.addObject("user",user);
	mav.setViewName("/person");
	return mav;
}

@RequestMapping("regist.do")
@ResponseBody
public int regist(@RequestBody User user)  {
	System.out.println(user.getName());
	int count=0;
	count=userService.add(user);
	return count;
}
@RequestMapping("modify.do")
@ResponseBody
public boolean modify(@RequestBody User user) {
	System.out.println(user.getId()+user.getName()+user.getPassword()+"ÐÔ±ð"+user.getSex()+"age"+user.getAge());
    boolean r = userService.updateuser(user);
    System.out.println("controller"+r);
    return r;
    
}
@RequestMapping("logOut.do")
public String logout(HttpSession session) {
	session.invalidate();
	return"/login";
}
@RequestMapping("watch_view.do")
public ModelAndView watchHis(HttpSession session) {
	User user=(User) session.getAttribute("login");
   List<history> h=userService.getHistory(user.getId());
	ModelAndView mav=new ModelAndView();
	List  films=new ArrayList();
   for(history his:h) {
	  System.out.println(his.getFid());
	  int fid=his.getFid();
	  Film film=filmService.getMovieById(fid);
	  films.add(film);
	  System.out.println(films);
   }
   mav.addObject("films",films);

	mav.setViewName("/history");
	
	return mav;
}
@RequestMapping("searchVideos.do")
public ModelAndView searchVideo(HttpServletRequest request) throws IOException {
	request.setCharacterEncoding("UTF-8");
	String name=request.getParameter("name");
	System.out.println(name);
	Map<String,Object>model= new HashMap<String,Object>();
	List<Film> films=filmService.searchFilm(name);
	System.out.println("-----------------");
	for(Film f:films) {
		System.out.println(f.getName());
	}
	model.put("search", films);
	return  new ModelAndView("/index",model);
}
}
