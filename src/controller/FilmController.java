package controller;

import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import pojo.Film;
import service.FilmService;

@Controller
public class FilmController {
@Autowired 
FilmService filmService;

@RequestMapping("/index.do")
public ModelAndView getAll() {
	List<Film> movies=filmService.getMovie();
	Map<String,Object>model=new HashMap<String,Object>();
	model.put("movies", movies);
	
	return new ModelAndView("/index",model);
}
@RequestMapping("/newTV.do")
public ModelAndView getTV() {
	List<Film> tvs=filmService.getTV();
	Map<String,Object>model=new HashMap<String,Object>();
	model.put("tvs", tvs);
	return new ModelAndView("/index",model);
}
@RequestMapping("/comic.do")
public ModelAndView getComic() {
	List<Film> cs=filmService.getComic();
	Map<String,Object>model=new HashMap<String,Object>();
	model.put("cs", cs);
	return new ModelAndView("/index",model);
}
@RequestMapping("/vip.do")
public ModelAndView getVip() {
	List<Film> vp=filmService.getComic();
	Map<String,Object>model=new HashMap<String,Object>();
	model.put("vp", vp);
	return new ModelAndView("/index",model);
}

@RequestMapping("/VipWatch.do")
public ModelAndView vipWatch() {
	return new ModelAndView("/vipWatch");
}
@RequestMapping("manageFilmView.do")
public ModelAndView manageFilm() {
	ModelAndView mav=new ModelAndView();
	List<Film>films=filmService.getAll();
	mav.addObject("films",films);
	mav.setViewName("/manageView");
	return  mav;
}
@RequestMapping("/updateFilmView.do")
public ModelAndView updateFilmView(int id) {
	Film film=filmService.getFilmByID(id);
	ModelAndView mav=new ModelAndView();
	mav.addObject("film",film);
	mav.setViewName("/updateView");
	return mav;
}
@RequestMapping("update.do")
@ResponseBody
public int update(@RequestBody Film film,HttpServletRequest request) throws IOException {
	request.setCharacterEncoding("utf-8");
	System.out.println("sssssssss");
	int id=Integer.parseInt(request.getParameter("id"));
//System.out.println("id:"+id);
//System.out.println("name:"+film.getName());
//System.out.println("time:"+film.getTime());
//System.out.println("intro"+film.getIntro());
//	int type=Integer.parseInt(request.getParameter("type"));
//	System.out.println(type);
//	System.out.println("sss"+film.getType());
	
	String  name=film.getName();
	String time=film.getTime();
	String intro=film.getIntro();
	int type=film.getType();
	
	Film film2=new Film();
	film2.setId(id);
	film2.setName(name);
	film2.setTime(time);
	film2.setIntro(intro);
	film2.setType(type);
	
	int i=filmService.updateFilm(film2);
	return i;
}
@RequestMapping("/delete.do")
@ResponseBody
public String deleteFilm(int id) {
	int i=filmService.deleteFilm(id);
	if(i>0) {
	return "OK";
	}else {
		return "FALSE";
	}
}
@RequestMapping(value="/addFilm.do", method = RequestMethod.POST)
public String addFilm(HttpServletRequest request,Film film,@RequestParam(value="file")MultipartFile pictureFile) throws IOException {
	   request.setCharacterEncoding("utf-8");
	 //使用UUID给图片重命名
		String pcname=UUID.randomUUID().toString().replaceAll("-", "");
		//获取文件的扩展名
		String ext =FilenameUtils.getExtension(pictureFile.getOriginalFilename());
		//设置图片的上传路径
		String url=request.getSession().getServletContext().getRealPath("/image");
		System.out.println(url);
		//以绝对路径保存重命名后的图片
		pictureFile.transferTo(new File(url+"/"+pcname+"."+ext));
      String name=film.getName();
      String time=film.getTime();
      String intro=film.getIntro();
      int type=film.getType();
      Film film2=new Film();
      film2.setName(name);
      film2.setTime(time);
      film2.setIntro(intro);
      film2.setType(type);
      film2.setPic("image/"+pcname+"."+ext);
      int i=filmService.addFilm(film2);
      if(i>0) {
	return "redirect:/manageFilmView.do";
	}else {
		return "false";
	}
}
}
